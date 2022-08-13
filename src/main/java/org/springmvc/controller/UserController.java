package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springmvc.dao.HocVienDao;
import org.springmvc.dao.LoaiTaiKhoanDao;
import org.springmvc.dao.TaiKhoanDao;
import org.springmvc.entity.LoaiTaiKhoan;
import org.springmvc.entity.TaiKhoan;

@Controller
public class UserController {
    private final TaiKhoanDao taiKhoanDao = new TaiKhoanDao();
    private final LoaiTaiKhoanDao loaiTaiKhoanDao = new LoaiTaiKhoanDao();
    private final HocVienDao hocVienDao = new HocVienDao();

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap modelMap) {
        return "user/login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam("userName") String name,@RequestParam("password") String pass,ModelMap modelMap){
        TaiKhoan taiKhoan=taiKhoanDao.login(name,pass);

        if(taiKhoan==null){
            modelMap.addAttribute("message","Sai thông tin đăng nhập!");
            return "user/login";
        }else{
            return "user/dashboard";
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap modelMap) {
        return "user/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@RequestParam("userName") String name,@RequestParam("account") String acc,@RequestParam("password") String pass,ModelMap modelMap) {
        TaiKhoan taiKhoan = new TaiKhoan(acc, pass, loaiTaiKhoanDao.getLoaiTk(1));
        if(taiKhoanDao.insertTK(taiKhoan)==1){
            return "user/login";
        }else{
            modelMap.addAttribute("message","Đăng ký thất bại!");
            return "user/register";
        }

    }
}
