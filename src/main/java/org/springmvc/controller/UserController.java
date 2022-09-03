package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springmvc.dao.*;
import org.springmvc.entity.*;
import org.springmvc.utils.Globals;
import org.springmvc.utils.Session;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Controller
public class UserController {
    private final TaiKhoanDao taiKhoanDao = new TaiKhoanDao();
    private final LoaiTaiKhoanDao loaiTaiKhoanDao = new LoaiTaiKhoanDao();
    private final HocVienDao hocVienDao = new HocVienDao();
    private final GiangVienDao giangVienDao = new GiangVienDao();
    private final HocPhanDao hocPhanDao = new HocPhanDao();
    private final DongHocPhiDao dongHocPhiDao = new DongHocPhiDao();
    private final DangKyHPDao dangKyHPDao= new DangKyHPDao();
    private final MonHocDao monHocDao= new MonHocDao();
    private final CaDao caDao= new CaDao();
    private final BaiGiangDao baiGiangDao = new BaiGiangDao();

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap modelMap) {
        return "user/student/login";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(){
        HttpSession httpSession = Session.getSession();

        httpSession.removeAttribute("account");

        return "redirect:/";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("user-type") String userType, @RequestParam("userName") String name,
                        @RequestParam("password") String pass, ModelMap modelMap) {
        TaiKhoan taiKhoan = taiKhoanDao.login(name, pass, userType);

        HttpSession httpSession = Session.getSession();

        if (taiKhoan == null) {
            modelMap.addAttribute("message", "Incorrect username or password!");
            return "user/student/login";
        } else {
            httpSession.setAttribute("account", taiKhoan);
            if (taiKhoan.getLoaiTaiKhoan().getMaLoaiTK() == 1) {
                HocVien hocVien = hocVienDao.getHVByUserName(taiKhoan);
                httpSession.setAttribute("user", hocVien);
                return "redirect:/dashboard";
            } else if (taiKhoan.getLoaiTaiKhoan().getMaLoaiTK() == 2) {
                GiangVien giangVien = giangVienDao.getGVByUserName(taiKhoan);
                httpSession.setAttribute("user", giangVien);
                return "redirect:/instructor/dashboard";
            }
            return null;
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap modelMap) {
        return "user/student/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@RequestParam("userName") String username,@RequestParam("name") String name,
                           @RequestParam("password") String pass,ModelMap modelMap,
                @RequestParam("sex") Boolean sex,@RequestParam("date") Date date,
               @RequestParam("phone") String phone,@RequestParam("address") String address) {
        TaiKhoan taiKhoan = new TaiKhoan(username, pass, loaiTaiKhoanDao.getLoaiTk(1),true);
        if(taiKhoanDao.insertTK(taiKhoan)==1){
            HocVien hv =new HocVien();
            hv.setHoTen(name);
            hv.setSdt(phone);
            hv.setDiaChi(address);
            hv.setPhai(sex);
            hv.setTaiKhoan(taiKhoan);
            hv.setNgaySinh(date);
            if(hocVienDao.insertHV(hv)==1){
                return "user/student/login";
            }else{
                modelMap.addAttribute("message","Đăng ký học viên thất bại!");
                return "user/student/register";
            }
        }else{
            modelMap.addAttribute("message","Đăng ký tài khoản thất bại!");
            return "user/student/register";
        }

    }
    @RequestMapping(value = "/courses", method = RequestMethod.GET)
    public String courses(ModelMap modelMap) {
        HttpSession httpSession = Session.getSession();
        HocVien hocVien1=hocVienDao.getHVByUserName((TaiKhoan) httpSession.getAttribute("account"));
        List<HocPhan> list= new ArrayList<>();
        List<DangKyHP> listDK=new ArrayList<>();
        listDK= (List<DangKyHP>) dangKyHPDao.getListDKHPByHV(hocVien1);
        List<Integer> listIds=new ArrayList<>();
        for (DangKyHP dangKyHP : listDK) {
            listIds.add(dangKyHP.getHocPhan().getMaHP());
        }
        list=(List<HocPhan>) hocPhanDao.getListHPChuaDK(listIds);
        modelMap.addAttribute("list",list);
        modelMap.addAttribute("listDK",listDK);
        modelMap.addAttribute("name",null);
        modelMap.addAttribute("month",null);
        modelMap.addAttribute("year",null);
        return "user/student/courses";

    }
    @RequestMapping(value = "/courses", method = RequestMethod.POST)
    public String getCourses(ModelMap modelMap,@RequestParam("name") String name,
                             @RequestParam("month") int month,@RequestParam("year") int year){
        HttpSession httpSession = Session.getSession();
        HocVien hocVien1=hocVienDao.getHVByUserName((TaiKhoan) httpSession.getAttribute("account"));
        List<HocPhan> list=new ArrayList<>();
        if(name!=null){

            list= (List<HocPhan>) hocPhanDao.getListHocPhan(name,month,year);

        }else{
            list= (List<HocPhan>) hocPhanDao.getListHPByDate(month,year);
        }
        List<DangKyHP> listDK=new ArrayList<>();
        listDK= (List<DangKyHP>) dangKyHPDao.getListDKHPByHV(hocVien1);
        modelMap.addAttribute("listDK",listDK);
        modelMap.addAttribute("list",list);
        modelMap.addAttribute("name",name);
        modelMap.addAttribute("month",month);
        modelMap.addAttribute("year",year);
        return "user/student/courses";

    }
    @RequestMapping(value = "/course/{id}", method = RequestMethod.GET)
    public String courseDetails(ModelMap modelMap, @PathVariable("id") int id){
        HocPhan hocPhan=hocPhanDao.getHP(id);
        modelMap.addAttribute("hocPhan",hocPhan);
        List<BaiGiang> list = (List<BaiGiang>) baiGiangDao.getListBaiGiangByHP(hocPhan);
        modelMap.addAttribute("list",list);
        return "user/student/course-details";
    }

    @RequestMapping(value = "/course/register/{id}", method = RequestMethod.GET)

    public String getCourseRegister(ModelMap modelMap, @PathVariable("id") int id){
        HocPhan hocPhan=hocPhanDao.getHP(id);
        List<HocPhan>list= (List<HocPhan>) hocPhanDao.getListHPByMH(monHocDao.getMH(hocPhan.getMonHoc().getMaMH()));
        modelMap.addAttribute("list",list);
        List<Ca> listCa= (List<Ca>) caDao.getListCa();
        modelMap.addAttribute("listCa",listCa);
        return "user/student/course-register";
    }
    @RequestMapping(value = "/course/register", method = RequestMethod.POST)
    public String courseRegister(ModelMap modelMap, @RequestParam("HP") int id){
        HttpSession httpSession = Session.getSession();
        HocVien hocVien1=hocVienDao.getHVByUserName((TaiKhoan) httpSession.getAttribute("account"));
        HocPhan hocPhan =hocPhanDao.getHP(id);
        DangKyHP dangKyHP=new DangKyHP();
        DangKyHPID dangKyHPID=new DangKyHPID(hocVien1.getMaHV(),hocPhan.getMaHP());
        dangKyHP.setId(dangKyHPID);
        dangKyHP.setHocPhan(hocPhan);
        dangKyHP.setHocVien(hocVien1);
        dangKyHP.setHuyDK(false);
        if(dangKyHPDao.insertDKHP(dangKyHP)==1){
            return "redirect:/courses";
        }
        return "user/student/course-register";
    }
    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public String payment(ModelMap modelMap){
        HttpSession httpSession = Session.getSession();
        HocVien hocVien1=hocVienDao.getHVByUserName((TaiKhoan) httpSession.getAttribute("account"));
        List<DangKyHP>list= (List<DangKyHP>) dangKyHPDao.getListDKHPByHV(hocVien1);
        modelMap.addAttribute("list",list);
        List<DongHocPhi>list2 = (List<DongHocPhi>) dongHocPhiDao.getListDHPByHV(hocVien1);
        modelMap.addAttribute("listDHP",list2);
        long tongHocPhi=dangKyHPDao.getTongHocPhi(hocVien1);
        modelMap.addAttribute("tongHP",tongHocPhi);
        long tongDongHocPhi=dongHocPhiDao.getTongDHPByHV(hocVien1);
        modelMap.addAttribute("tongDHP",tongDongHocPhi);

        if(Globals.paymentStatus == 1){
            modelMap.addAttribute("cancelMessage","Canceled Order!");
            Globals.paymentStatus = -1;
        }
        else if(Globals.paymentStatus == 2){
            modelMap.addAttribute("successMessage","Payment Successful!");
            Globals.paymentStatus = -1;
        }
        return "user/student/payment";
    }

    @RequestMapping(value = "/schedule", method = RequestMethod.GET)
    public String schedule(ModelMap modelMap){
        HttpSession httpSession = Session.getSession();
        HocVien hocVien1=hocVienDao.getHVByUserName((TaiKhoan) httpSession.getAttribute("account"));
        List<DangKyHP>list= (List<DangKyHP>) dangKyHPDao.getListDKHPByHV(hocVien1);
        modelMap.addAttribute("list",list);
        List<Ca> listCa= (List<Ca>) caDao.getListCa();
        modelMap.addAttribute("listCa",listCa);
        return "user/student/schedule";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profile(ModelMap modelMap,
                          @ModelAttribute("successMessage") String successMessage,
                          @ModelAttribute("errorMessage") String errorMessage) {
        if (successMessage != null)
            modelMap.addAttribute("successMessage", successMessage);
        if (errorMessage != null)
            modelMap.addAttribute("errorMessage", errorMessage);

        return "user/student/profile";
    }


    @RequestMapping(value = "/profile/basic", method = RequestMethod.POST)
    public String profileUpdate(@RequestParam("name") String name,
                                @RequestParam("sex") Boolean sex,
                                @RequestParam("date") Date date,
                                @RequestParam("phone") String phone,
                                @RequestParam("address") String address,
                                @RequestParam("password")String password,
                                RedirectAttributes ra,
                                ModelMap modelMap) {
        HttpSession session = Session.getSession();
        HocVien hv = hocVienDao.getHVByUserName((TaiKhoan) session.getAttribute("account"));
        hv.setHoTen(name);
        hv.setSdt(phone);
        hv.setDiaChi(address);
        hv.setPhai(sex);
        hv.setNgaySinh(date);

        if (hocVienDao.updateHV(hv) == 1) {
            hv = hocVienDao.getHVByUserName((TaiKhoan) session.getAttribute("account"));
            session.setAttribute("user", hv);
            ra.addFlashAttribute("successMessage", "Update Information Successful!");
        } else {
            ra.addFlashAttribute("errorMessage", "Update Information Failed!");
        }
//        if(!password.equals("")&&password!=null){
//
//        }
        return "redirect:/profile";
    }
    @RequestMapping(value = "/profile/instructor/basic", method = RequestMethod.POST)
    public String profileInsUpdate(@RequestParam("name") String name,
                                @RequestParam("sex") Boolean sex,
                                @RequestParam("date") Date date,
                                @RequestParam("phone") String phone,
                                @RequestParam("address") String address,
                                RedirectAttributes ra,
                                ModelMap modelMap) {
        HttpSession session = Session.getSession();
        GiangVien gv=giangVienDao.getGVByUserName((TaiKhoan) session.getAttribute("account"));

        if (giangVienDao.updateHV(gv) == 1) {
            gv = giangVienDao.getGVByUserName((TaiKhoan) session.getAttribute("account"));
            session.setAttribute("user", gv);
            ra.addFlashAttribute("successMessage", "Update Information Successful!");
        } else {
            ra.addFlashAttribute("errorMessage", "Update Information Failed!");
        }

        return "redirect:/instructor/profile";
    }

    @RequestMapping(value = "/profile/account", method = RequestMethod.POST)
    public String profileUpdate(@RequestParam("password") String password,
                                @RequestParam("confirmPassword") String confirmPassword,
                                RedirectAttributes ra) {
        HttpSession session = Session.getSession();
        TaiKhoan tk = (TaiKhoan) session.getAttribute("account");

        if (Objects.equals(password, confirmPassword)) {
            tk.setMatKhau(password);
            if (taiKhoanDao.updateTK(tk) == 1) {
                ra.addFlashAttribute("successMessage", "Update Password Successful!");
            } else {
                ra.addFlashAttribute("errorMessage", "Update Password Failed!");
            }
        } else {
            ra.addFlashAttribute("errorMessage", "Password must match!");
        }

        return "redirect:/profile";
    }

    // instructor
    @RequestMapping(value = "/instructor/dashboard", method = RequestMethod.GET)
    public String dashboardInstructor(ModelMap modelMap) {
        return "user/instructor/dashboard";
    }

    @RequestMapping(value = "/instructor/profile", method = RequestMethod.GET)
    public String instructorProfile(ModelMap modelMap,
                                    @ModelAttribute("successMessage") String successMessage,
                                    @ModelAttribute("errorMessage") String errorMessage) {
        if (successMessage != null)
            modelMap.addAttribute("successMessage", successMessage);
        if (errorMessage != null)
            modelMap.addAttribute("errorMessage", errorMessage);

        return "user/instructor/profile";
    }
    @RequestMapping(value = "/instructor/courses", method = RequestMethod.GET)
    public String courseDetailsInstructor(ModelMap modelMap) {
        return "user/instructor/courses";
    }

    @RequestMapping(value = "/instructor/course-detail/{id}", method = RequestMethod.GET)
    public String coursesInstructor(ModelMap modelMap, @PathVariable String id) {
        return "user/instructor/course-detail";
    }

    @RequestMapping(value = "/instructor/course/request", method = RequestMethod.GET)
    public String requestCourseInstructor(ModelMap modelMap){
        return "user/instructor/course-request";
    }
}
