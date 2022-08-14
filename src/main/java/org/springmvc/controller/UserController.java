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
        return "user/login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam("userName") String name,@RequestParam("password") String pass,ModelMap modelMap){
        TaiKhoan taiKhoan=taiKhoanDao.login(name,pass);
        if(taiKhoan==null){
            modelMap.addAttribute("message","Sai thông tin đăng nhập!");
            return "user/login";
        }else{
            hocVien=hocVienDao.getHVByUserName(taiKhoan);
            return "user/dashboard";
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap modelMap) {
        return "user/register";
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
                return "user/login";
            }else{
                modelMap.addAttribute("message","Đăng ký học viên thất bại!");
                return "user/register";
            }
        }else{
            modelMap.addAttribute("message","Đăng ký tài khoản thất bại!");
            return "user/register";
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
        return "user/courses";

    }
}
