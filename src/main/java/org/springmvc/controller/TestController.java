package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springmvc.dao.HocPhanDao;
import org.springmvc.dao.LoaiTaiKhoanDao;
import org.springmvc.entity.HocPhan;
import org.springmvc.entity.LoaiTaiKhoan;

import java.util.List;

@Controller
public class TestController {

    @RequestMapping("/")
    public String index(ModelMap modelMap) {
        return "user/index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap modelMap) {
        return "user/login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap modelMap) {
        return "user/register";
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
