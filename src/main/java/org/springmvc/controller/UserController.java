package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springmvc.dao.*;
import org.springmvc.entity.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    private final TaiKhoanDao taiKhoanDao = new TaiKhoanDao();
    private final LoaiTaiKhoanDao loaiTaiKhoanDao = new LoaiTaiKhoanDao();
    private final HocVienDao hocVienDao = new HocVienDao();

    private final HocPhanDao hocPhanDao = new HocPhanDao();
    private final DangKyHPDao dangKyHPDao= new DangKyHPDao();
    private static HocVien hocVien=new HocVien();
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap modelMap) {
        return "user/student/login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam("userName") String name,@RequestParam("password") String pass,ModelMap modelMap){
        TaiKhoan taiKhoan=taiKhoanDao.login(name,pass);
        if(taiKhoan==null){
            modelMap.addAttribute("message","Sai thông tin đăng nhập!");
            return "user/student/login";
        }else{
            hocVien=hocVienDao.getHVByUserName(taiKhoan);
            return "user/student/dashboard";
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
            hocVien =new HocVien();
            hocVien.setHoTen(name);
            hocVien.setSdt(phone);
            hocVien.setDiaChi(address);
            hocVien.setPhai(sex);
            hocVien.setTaiKhoan(taiKhoan);
            hocVien.setNgaySinh(date);
            if(hocVienDao.insertHV(hocVien)==1){
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
        List<HocPhan> list= (List<HocPhan>) hocPhanDao.getListHP();
        modelMap.addAttribute("list",list);
        List<DangKyHP> listDK=new ArrayList<>();
        if(hocVien!=null){
            listDK= (List<DangKyHP>) dangKyHPDao.getListDKHPByHV(hocVien);
        }
        modelMap.addAttribute("listDK",listDK);
        return "user/student/courses";

    }
    @RequestMapping(value = "/course-details", method = RequestMethod.GET)
    public String courseDetails(ModelMap modelMap){
        return "user/student/course-details";
    }
    @RequestMapping(value = "/course-register", method = RequestMethod.GET)
    public String courseRegister(ModelMap modelMap){
        return "user/student/course-register";
    }
    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public String payment(ModelMap modelMap){
        return "user/student/payment";
    }

    // instructor
    @RequestMapping(value = "/instructor/dashboard", method = RequestMethod.GET)
    public String dashboardInstructor(ModelMap modelMap){
        return "user/instructor/dashboard";
    }
    @RequestMapping(value = "/instructor/courses", method = RequestMethod.GET)
    public String coursesInstructor(ModelMap modelMap){
        return "user/instructor/courses";
    }
    @RequestMapping(value = "/instructor/request-course", method = RequestMethod.GET)
    public String requestCourseInstructor(ModelMap modelMap){
        return "user/instructor/request-course";
    }

    // admin
    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public String dashboardAdmin(ModelMap modelMap){
        return "admin/dashboard";
    }
    @RequestMapping(value = "/admin/courses", method = RequestMethod.GET)
    public String coursesAdmin(ModelMap modelMap){
        return "admin/courses";
    }
    @RequestMapping(value = "/admin/instructors", method = RequestMethod.GET)
    public String instructorsAdmin(ModelMap modelMap){
        return "admin/instructors";
    }
    @RequestMapping(value = "/admin/students", method = RequestMethod.GET)
    public String studentsAdmin(ModelMap modelMap){
        return "admin/students";
    }
    @RequestMapping(value = "/admin/schedule", method = RequestMethod.GET)
    public String scheduleAdmin(ModelMap modelMap){
        return "admin/schedule";
    }
}
