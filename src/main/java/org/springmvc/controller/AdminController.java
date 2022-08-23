package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springmvc.dao.HocPhanDao;
import org.springmvc.dao.HocVienDao;
import org.springmvc.entity.HocPhan;
import org.springmvc.entity.HocVien;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdminController {
    private final HocPhanDao hocPhanDao=new HocPhanDao();
    private final HocVienDao hocVienDao=new HocVienDao();
    // admin
    private static HttpSession getSession(){
        RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
        ServletRequestAttributes attributes = (ServletRequestAttributes) requestAttributes;
        HttpServletRequest request = attributes.getRequest();
        return request.getSession(true);
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(ModelMap modelMap){
        HttpSession session = getSession();

        if(session.getAttribute("admin") != null)
            return "redirect:/admin/dashboard";

        return "redirect:/admin/login";
    }
    @RequestMapping(value = "/admin/login", method = RequestMethod.GET)
    public String loginAdmin(ModelMap modelMap){
        return "admin/login";
    }
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
    @RequestMapping(value = "/admin/courses/add", method = RequestMethod.GET)
    public String addCourseAdmin(ModelMap modelMap){
        return "admin/courses-add";
    }
    @RequestMapping(value = "/admin/course-register", method = RequestMethod.GET)
    public String courseRegisterAdmin(ModelMap modelMap){
        return "admin/courses-register";
    }

    @RequestMapping(value = "/admin/instructors", method = RequestMethod.GET)
    public String instructorsAdmin(ModelMap modelMap){
        return "admin/instructors";
    }
    @RequestMapping(value = "/admin/instructors/add", method = RequestMethod.GET)
    public String addInstructorAdmin(ModelMap modelMap){
        return "admin/instructors-add";
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
