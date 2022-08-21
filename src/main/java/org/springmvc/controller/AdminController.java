package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springmvc.dao.HocPhanDao;
import org.springmvc.dao.HocVienDao;
import org.springmvc.entity.HocPhan;
import org.springmvc.entity.HocVien;

import java.util.List;

@Controller
public class AdminController {
    private final HocPhanDao hocPhanDao=new HocPhanDao();
    private final HocVienDao hocVienDao=new HocVienDao();
    // admin
    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public String dashboardAdmin(ModelMap modelMap){
        return "admin/dashboard";
    }
    @RequestMapping(value = "/admin/courses", method = RequestMethod.GET)
    public String coursesAdmin(ModelMap modelMap){
        List<HocPhan> list= (List<HocPhan>) hocPhanDao.getListHP();
        modelMap.addAttribute("list",list);
        return "admin/courses";
    }
    @RequestMapping(value = "/admin/course-register", method = RequestMethod.GET)
    public String courseRegisterAdmin(ModelMap modelMap){
        return "admin/course-register";
    }
    @RequestMapping(value = "/admin/instructors", method = RequestMethod.GET)
    public String instructorsAdmin(ModelMap modelMap){
        return "admin/instructors";
    }
    @RequestMapping(value = "/admin/students", method = RequestMethod.GET)
    public String studentsAdmin(ModelMap modelMap){

        List<HocVien> list= (List<HocVien>) hocVienDao.getListHV();
        modelMap.addAttribute("list",list);
        return "admin/students";
    }
    @RequestMapping(value = "/admin/schedule", method = RequestMethod.GET)
    public String scheduleAdmin(ModelMap modelMap){
        return "admin/schedule";
    }
}
