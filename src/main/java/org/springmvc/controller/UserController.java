package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springmvc.dao.*;
import org.springmvc.entity.*;
import org.springmvc.utils.Globals;
import org.springmvc.utils.Session;

import javax.servlet.http.HttpSession;
import java.util.*;

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
    public String login(@RequestParam("user-type") String userType, @RequestParam("userName") String name, @RequestParam("password") String pass, ModelMap modelMap) {
        TaiKhoan taiKhoan = taiKhoanDao.login(name, pass, userType);

        HttpSession httpSession = Session.getSession();

        if (taiKhoan == null) {
            modelMap.addAttribute("message", "Incorrect username or password!");
            return "user/student/login";
        } else {
            httpSession.setAttribute("account", taiKhoan);
            if(taiKhoan.getLoaiTaiKhoan().getMaLoaiTK() == 1) {
                HocVien hocVien = hocVienDao.getHVByUserName(taiKhoan);
                modelMap.addAttribute("user",hocVien);
                return "redirect:/dashboard";
            }
            if(taiKhoan.getLoaiTaiKhoan().getMaLoaiTK() == 2) {
                GiangVien giangVien = giangVienDao.getGVByUserName(taiKhoan);
                modelMap.addAttribute("user", giangVien);
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
    public String register(@RequestParam("userName") String username,@RequestParam("name") String name,@RequestParam("password") String pass,ModelMap modelMap,
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
        return "user/student/courses";

    }
    @RequestMapping(value = "/courses", method = RequestMethod.POST)
    public String getCourses(ModelMap modelMap,@RequestParam("name") String name){
        if(name!=null){
            HttpSession httpSession = Session.getSession();
            HocVien hocVien1=hocVienDao.getHVByUserName((TaiKhoan) httpSession.getAttribute("account"));
            List<HocPhan> list= (List<HocPhan>) hocPhanDao.getListHocPhan(name);
            modelMap.addAttribute("list",list);
            List<DangKyHP> listDK=new ArrayList<>();
            listDK= (List<DangKyHP>) dangKyHPDao.getListDKHPByHV(hocVien1);
            modelMap.addAttribute("listDK",listDK);
        }
        return "user/student/courses";

    }
    @RequestMapping(value = "/course/{id}", method = RequestMethod.GET)
    public String courseDetails(ModelMap modelMap, @PathVariable("id") int id){
        HocPhan hocPhan=hocPhanDao.getHP(id);
        modelMap.addAttribute("hocPhan",hocPhan);
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

    // instructor
    @RequestMapping(value = "/instructor/dashboard", method = RequestMethod.GET)
    public String dashboardInstructor(ModelMap modelMap){
        return "user/instructor/dashboard";
    }
    @RequestMapping(value = "/instructor/courses", method = RequestMethod.GET)
    public String courseDetailsInstructor(ModelMap modelMap){
        return "user/instructor/courses";
    }
    @RequestMapping(value = "/instructor/course-detail/{id}", method = RequestMethod.GET)
    public String coursesInstructor(ModelMap modelMap, @PathVariable String id){
        return "user/instructor/course-detail";
    }
    @RequestMapping(value = "/instructor/course/request", method = RequestMethod.GET)
    public String requestCourseInstructor(ModelMap modelMap){
        return "user/instructor/course-request";
    }
}
