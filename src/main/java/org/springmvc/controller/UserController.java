package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springmvc.dao.*;
import org.springmvc.entity.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
public class UserController {
    private final TaiKhoanDao taiKhoanDao = new TaiKhoanDao();
    private final LoaiTaiKhoanDao loaiTaiKhoanDao = new LoaiTaiKhoanDao();
    private final HocVienDao hocVienDao = new HocVienDao();
    private final GiangVienDao giangVienDao = new GiangVienDao();

    private final HocPhanDao hocPhanDao = new HocPhanDao();
    private final DangKyHPDao dangKyHPDao= new DangKyHPDao();
    private final MonHocDao monHocDao= new MonHocDao();

    private final CaDao caDao= new CaDao();
    private static HocVien hocVien = new HocVien();
    private static GiangVien giangVien = new GiangVien();

    private static HttpSession getSession(){
        RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
        ServletRequestAttributes attributes = (ServletRequestAttributes) requestAttributes;
        HttpServletRequest request = attributes.getRequest();
        return request.getSession(true);
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap modelMap) {
        return "user/student/login";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(){
        HttpSession httpSession = getSession();

        httpSession.removeAttribute("account");

        return "user/index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("user-type") String userType, @RequestParam("userName") String name, @RequestParam("password") String pass, ModelMap modelMap) {
        TaiKhoan taiKhoan = taiKhoanDao.login(name, pass, userType);

        HttpSession httpSession = getSession();

        if (taiKhoan == null) {
            modelMap.addAttribute("message", "Incorrect username or password!");
            return "user/student/login";
        } else {
            httpSession.setAttribute("account", taiKhoan);
            if(taiKhoan.getLoaiTaiKhoan().getMaLoaiTK() == 1) {
                hocVien = hocVienDao.getHVByUserName(taiKhoan);
                modelMap.addAttribute("user",hocVien);
                return "user/student/dashboard";
            }
            if(taiKhoan.getLoaiTaiKhoan().getMaLoaiTK() == 2) {
                giangVien = giangVienDao.getGVByUserName(taiKhoan);
                modelMap.addAttribute("user",giangVien);
                return "user/instructor/dashboard";
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
        TaiKhoan taiKhoan = new TaiKhoan(username, pass, loaiTaiKhoanDao.getLoaiTk(1));
        if(taiKhoanDao.insertTK(taiKhoan)==1){
            HocVien hv =new HocVien();
            hv.setHoTen(name);
            hv.setSdt(phone);
            hv.setDiaChi(address);
            hv.setPhai(sex);
            hv.setTaiKhoan(taiKhoan);
            hv.setNgaySinh(date);
            if(hocVienDao.insertHV(hv)==1){
                return "user/login";
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
        List<HocPhan> list= (List<HocPhan>) hocPhanDao.getListHP();
        modelMap.addAttribute("list",list);
        List<DangKyHP> listDK=new ArrayList<>();
        if(hocVien!=null){
            listDK= (List<DangKyHP>) dangKyHPDao.getListDKHPByHV(hocVien);
        }
        modelMap.addAttribute("listDK",listDK);
        return "user/student/courses";

    }
    @RequestMapping(value = "/course/{id}", method = RequestMethod.GET)
    public String courseDetails(ModelMap modelMap, @PathVariable("id") int id){
        HocPhan hocPhan=hocPhanDao.getHP(id);
        modelMap.addAttribute("hocPhan",hocPhan);
        return "user/student/course-details";
    }

    @RequestMapping(value = "/course/register/{id}", method = RequestMethod.GET)
    public String courseRegister(ModelMap modelMap, @PathVariable("id") int id){
        List<HocPhan>list= (List<HocPhan>) hocPhanDao.getListHPByMH(monHocDao.getMH(id));
        modelMap.addAttribute("list",list);
        List<Ca> listCa= (List<Ca>) caDao.getListCa();
        modelMap.addAttribute("listCa",listCa);
        return "user/student/course-register";
    }

    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public String payment(ModelMap modelMap){
        return "user/student/payment";
    }

    @RequestMapping(value = "/schedule", method = RequestMethod.GET)
    public String schedule(ModelMap modelMap){
        return "user/student/schedule";
    }

    // instructor
    @RequestMapping(value = "/instructor/dashboard", method = RequestMethod.GET)
    public String dashboardInstructor(ModelMap modelMap){
        return "user/instructor/dashboard";
    }
    @RequestMapping(value = "/instructor/courses", method = RequestMethod.GET)
    public String courseDetailsInstructor(ModelMap modelMap){
        return "user/instructor/course-details";
    }
    @RequestMapping(value = "/instructor/course-details", method = RequestMethod.GET)
    public String coursesInstructor(ModelMap modelMap){
        return "user/instructor/courses";
    }
    @RequestMapping(value = "/instructor/request-course", method = RequestMethod.GET)
    public String requestCourseInstructor(ModelMap modelMap){
        return "user/instructor/course-request";
    }
}
