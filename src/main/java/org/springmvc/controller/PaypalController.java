package org.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springmvc.dao.*;
import org.springmvc.entity.HocVien;
import org.springmvc.entity.TaiKhoan;
import org.springmvc.utils.Globals;
import org.springmvc.utils.PaypalService;
import org.springmvc.utils.Session;

import javax.servlet.http.HttpSession;

@Controller
public class PaypalController {

    @Autowired
    PaypalService service;

    public static final String SUCCESS_URL = "payment/pay/paypal/success";
    public static final String CANCEL_URL = "payment/pay/paypal/cancel";

    private static final HocVienDao hocVienDao = new HocVienDao();
    private final DangKyHPDao dangKyHPDao= new DangKyHPDao();
    private final DongHocPhiDao dongHocPhiDao= new DongHocPhiDao();
    public static long hp=0;

    @PostMapping("payment/pay/paypal")
    public String payment(ModelMap model) {
        HttpSession session = Session.getSession();
        HocVien hocVien = hocVienDao.getHVByUserName((TaiKhoan) session.getAttribute("account"));

        long tongHocPhi=dangKyHPDao.getTongHocPhi(hocVien);
        long tongDongHocPhi=dongHocPhiDao.getTongDHPByHV(hocVien);
        hp=tongHocPhi - tongDongHocPhi;
        double total = tongHocPhi - tongDongHocPhi;
        // Convert currency: USD -> VND
        total = total / 23417.0;

        try {
            Payment payment = service.createPayment(
                    total,
                    "USD",
                    "paypal",
                    "sale",
                    "Tuition Payment",
                    "http://localhost:8080/" + CANCEL_URL,
                    "http://localhost:8080/" + SUCCESS_URL);
            for(Links link:payment.getLinks()) {
                if(link.getRel().equals("approval_url")) {
                    return "redirect:"+link.getHref();
                }
            }

        } catch (PayPalRESTException e) {

            e.printStackTrace();
        }
        return "redirect:/dashboard";
    }

    @GetMapping(value = CANCEL_URL)
    public String cancelPay(ModelMap modelMap) {
        Globals.paymentStatus = 1; // Cancel
        return "redirect:/payment";
    }

    @GetMapping(value = SUCCESS_URL)
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
        try {
            Payment payment = service.executePayment(paymentId, payerId);
            System.out.println(payment.toJSON());
            if (payment.getState().equals("approved")) {
                Globals.paymentStatus = 2; // Successful
                Globals.paymentValue = hp;
                hp=0;
                return "redirect:/payment";
            }
        } catch (PayPalRESTException e) {
            System.out.println(e.getMessage());
        }
        return "redirect:/dashboard";
    }

}
