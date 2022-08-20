package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
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
