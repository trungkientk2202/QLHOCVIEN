package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springmvc.dao.HocPhanDao;
import org.springmvc.dao.HocVienDao;
import org.springmvc.dao.MonHocDao;
import org.springmvc.entity.HocPhan;
import org.springmvc.entity.HocVien;
import org.springmvc.entity.MonHoc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdminController {
    private final MonHocDao monHocDao = new MonHocDao();
    private final HocVienDao hocVienDao = new HocVienDao();
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
        List<MonHoc> list = (List<MonHoc>) monHocDao.getListMH();
        modelMap.addAttribute("list",list);
        return "admin/courses";
    }

    @RequestMapping(value = "/admin/courses/add", method = RequestMethod.GET)
    public String addCourseAdmin(ModelMap modelMap){
        return "admin/courses-add";
    }
    @RequestMapping(value = "/admin/courses/edit/{id}", method = RequestMethod.GET)
    public String editCourseAdmin(ModelMap modelMap, @PathVariable String id){
        return "admin/courses-add";
    }
    @RequestMapping(value = "/admin/courses/delete", method = RequestMethod.POST)
    public String deleteCourseAdmin(ModelMap modelMap){
        return "redirect:/admin/courses";
    }
    @RequestMapping(value = "/admin/course-register", method = RequestMethod.GET)
    public String courseRegisterAdmin(ModelMap modelMap){
        return "admin/courses-register";
    }
    @RequestMapping(value = "/admin/course-register/add", method = RequestMethod.GET)
    public String addCourseRegisterAdmin(ModelMap modelMap){
        return "admin/courses-register-add";
    }
    @RequestMapping(value = "/admin/instructors", method = RequestMethod.GET)
    public String instructorsAdmin(ModelMap modelMap){
        return "admin/instructors";
    }
    @RequestMapping(value = "/admin/instructors/add", method = RequestMethod.GET)
    public String addInstructorAdmin(ModelMap modelMap){
        return "admin/instructors-add";
    }
    @RequestMapping(value = "/admin/instructors/edit/{id}", method = RequestMethod.GET)
    public String editInstructorsAdmin(ModelMap modelMap, @PathVariable String id){
        return "admin/instructors";
    }
    @RequestMapping(value = "/admin/instructors/delete", method = RequestMethod.POST)
    public String deleteInstructorAdmin(ModelMap modelMap){
        return "redirect:/admin/instructors";
    }
    @RequestMapping(value = "/admin/students", method = RequestMethod.GET)
    public String studentsAdmin(ModelMap modelMap){
        List<HocVien> list= (List<HocVien>) hocVienDao.getListHV();
        modelMap.addAttribute("list",list);
        return "admin/students";
    }
    @RequestMapping(value = "/admin/students/add", method = RequestMethod.GET)
    public String addStudentAdmin(ModelMap modelMap){
        List<HocVien> list= (List<HocVien>) hocVienDao.getListHV();
        modelMap.addAttribute("list",list);
        return "admin/students-add";
    }
    @RequestMapping(value = "/admin/students/edit/{id}", method = RequestMethod.GET)
    public String editStudentAdmin(ModelMap modelMap, @PathVariable String id){
        return "admin/students-add";
    }
    @RequestMapping(value = "/admin/students/delete", method = RequestMethod.POST)
    public String deleteStudentAdmin(ModelMap modelMap){
        return "redirect:/admin/students";
    }
    @RequestMapping(value = "/admin/schedule", method = RequestMethod.GET)
    public String scheduleAdmin(ModelMap modelMap){
        return "admin/schedule";
    }
}
