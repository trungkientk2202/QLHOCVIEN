package org.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springmvc.dao.*;
import org.springmvc.entity.*;
import org.springmvc.utils.Session;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class AdminController {
    private final TaiKhoanDao taiKhoanDao = new TaiKhoanDao();
    private final HocVienDao hocVienDao = new HocVienDao();
    private final GiangVienDao giangVienDao = new GiangVienDao();
    private final HocPhanDao hocPhanDao = new HocPhanDao();
    private final MonHocDao monHocDao= new MonHocDao();

    private final CaDao caDao= new CaDao();

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(ModelMap modelMap){
        HttpSession session = Session.getSession();

        if(session.getAttribute("admin") != null)
            return "redirect:/admin/dashboard";

        return "redirect:/admin/login";
    }
    @RequestMapping(value = "/admin/login", method = RequestMethod.POST)
    public String loginAdmin( @RequestParam("username") String name, @RequestParam("password") String pass, ModelMap modelMap){
        TaiKhoan taiKhoan = taiKhoanDao.login(name, pass, String.valueOf(3));

        HttpSession httpSession = Session.getSession();

        if (taiKhoan == null) {
            modelMap.addAttribute("message", "Incorrect username or password!");
            return "admin/login";
        } else {
            httpSession.setAttribute("admin", taiKhoan);
            return "redirect:/admin/dashboard";
        }
    }
    @RequestMapping(value = "/admin/login", method = RequestMethod.GET)
    public String postLoginAdmin(ModelMap modelMap){
        return "admin/login";
    }
    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public String dashboardAdmin(ModelMap modelMap){
        return "admin/dashboard";
    }

    @RequestMapping(value = "/admin/subjects", method = RequestMethod.GET)
    public String subjectsAdmin(ModelMap modelMap){
        List<MonHoc> list= (List<MonHoc>) monHocDao.getListMH();
        modelMap.addAttribute("list",list);
        return "admin/subjects";
    }

    @RequestMapping(value = "/admin/subject/add", method = RequestMethod.GET)
    public String addCourseAdmin(ModelMap modelMap){
        MonHoc monHoc=null;
        modelMap.addAttribute("monHoc",monHoc);
        return "admin/subjects-add";
    }

    @RequestMapping(value = "/admin/subject/edit/{id}", method = RequestMethod.GET)
    public String editCourseAdmin(ModelMap modelMap, @PathVariable int id){
        MonHoc monHoc=monHocDao.getMH(id);
        modelMap.addAttribute("monHoc",monHoc);
        return "admin/subjects-add";
    }
    @RequestMapping(value = "/admin/subject/edit/{id}", method = RequestMethod.POST)
    public String insertCourseAdmin(ModelMap modelMap, @PathVariable int id){
        return "admin/subjects-add";
    }
    @RequestMapping(value = "/admin/subject/delete", method = RequestMethod.POST)
    public String deleteCourseAdmin(ModelMap modelMap){
        return "admin/subjects";
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
        List<GiangVien>list= (List<GiangVien>) giangVienDao.getListGV();
        modelMap.addAttribute("list",list);
        return "admin/instructors";
    }
    @RequestMapping(value = "/admin/instructors/add", method = RequestMethod.GET)
    public String addInstructorAdmin(ModelMap modelMap){
        GiangVien giangVien=new GiangVien();
        modelMap.addAttribute("giangVien",giangVien);
        return "admin/instructors-add";
    }
    @RequestMapping(value = "/admin/instructors/edit/{id}", method = RequestMethod.GET)
    public String editInstructorsAdmin(ModelMap modelMap, @PathVariable int id){
        GiangVien giangVien=giangVienDao.getGV(id);
        modelMap.addAttribute("giangVien",giangVien);
        return "admin/instructors-add";
    }
    @RequestMapping(value = "/admin/instructors/edit/{id}", method = RequestMethod.POST)
    public String insertInstructorsAdmin(ModelMap modelMap, @PathVariable int id, @RequestParam("btn") String btn
            , @RequestParam("name") String hoTen, @RequestParam("hocVi") String hocVi, @RequestParam("chuyenMon") String chuyenMon
            , @RequestParam("sdt") String sdt, @RequestParam("birth") Date ngaySinh, @RequestParam("moTa") String moTa){
        if(btn.equals("cancle")){
            return "redirect:/admin/instructors";
        }
        GiangVien giangVien=new GiangVien();
        giangVien.setHoTen(hoTen);
        giangVien.setHocVi(hocVi);
        giangVien.setChuyenMon(chuyenMon);
        giangVien.setNgaySinh(ngaySinh);
        giangVien.setSdt(sdt);
        giangVien.setMoTa(moTa);
        if(id!=0){
            giangVien.setMaGV(id);
            if(giangVienDao.updateHV(giangVien)==1){
                return "redirect:/admin/dashboard";
            }
        }else{
            if(giangVienDao.insertGV(giangVien)==1){
                return "redirect:/admin/schedule";
            }
        }
        return "redirect:/admin/instructors";
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
        HocVien hocVien=null;
        modelMap.addAttribute("hocVien",hocVien);
        return "admin/students-add";
    }
    @RequestMapping(value = "/admin/students/edit/{id}", method = RequestMethod.GET)
    public String editStudentAdmin(ModelMap modelMap,@PathVariable("id") int id){
        HocVien hocVien=hocVienDao.getHV(id);
        modelMap.addAttribute("hocVien",hocVien);
        return "admin/students-add";
    }
    @RequestMapping(value = "/admin/students/delete", method = RequestMethod.POST)
    public String deleteStudentAdmin(ModelMap modelMap){
        return "redirect:/admin/students";
    }
    @RequestMapping(value = "/admin/schedule", method = RequestMethod.GET)
    public String scheduleAdmin(ModelMap modelMap){
        List<HocPhan>list= (List<HocPhan>) hocPhanDao.getAllHP();
        modelMap.addAttribute("list",list);
        List<Ca> listCa= (List<Ca>) caDao.getListCa();
        modelMap.addAttribute("listCa",listCa);
        return "admin/schedule";
    }
}
