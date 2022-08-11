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
        private final LoaiTaiKhoanDao loaiTaiKhoanDao = new LoaiTaiKhoanDao();
        private final HocPhanDao hocPhanDao = new HocPhanDao();
    @RequestMapping("/")
    public String index(ModelMap modelMap) {
        List<LoaiTaiKhoan> loaiTaiKhoan = (List<LoaiTaiKhoan>) loaiTaiKhoanDao.getListLTK();
        modelMap.addAttribute("list",loaiTaiKhoan);
        return "user/index";
    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap modelMap) {

        LoaiTaiKhoan ltk=loaiTaiKhoanDao.getLoaiTk(2);
        modelMap.addAttribute("ltk",ltk);
        return "user/login";
    }
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap modelMap) {
        return "user/register";
    }
    @RequestMapping("/hocphan")
    public String hocPhan(ModelMap modelMap) {
        List<HocPhan> hocPhans = (List<HocPhan>) hocPhanDao.getListHP();
        modelMap.addAttribute("list",hocPhans);
        return "HocPhan";
    }
}
