package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springmvc.entity.TaiKhoan;

@Controller
public class MainController {

    @RequestMapping("/")
    public String index(ModelMap modelMap) {
        return "user/index";
    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String dashboard(ModelMap modelMap) {
        return "user/dashboard";
    }

    @RequestMapping(value = "/courses", method = RequestMethod.GET)
    public String courses(ModelMap modelMap) {
        return "user/courses";
    }
}
