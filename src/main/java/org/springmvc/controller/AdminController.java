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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class AdminController {
    private final TaiKhoanDao taiKhoanDao = new TaiKhoanDao();
    private final LoaiTaiKhoanDao loaiTaiKhoanDao = new LoaiTaiKhoanDao();
    private final HocVienDao hocVienDao = new HocVienDao();
    private final GiangVienDao giangVienDao = new GiangVienDao();
    private final HocPhanDao hocPhanDao = new HocPhanDao();
    private final MonHocDao monHocDao= new MonHocDao();
    private final PhongDao phongDao= new PhongDao();
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
        List<HocPhan> list= (List<HocPhan>) hocPhanDao.getListHP();
        modelMap.addAttribute("list",list);
        return "admin/courses-register";
    }
    @RequestMapping(value = "/admin/course-register/add", method = RequestMethod.GET)
    public String addCourseRegisterAdmin(ModelMap modelMap){
        HocPhan hocPhan=null;
        modelMap.addAttribute("hocPhan",hocPhan);
        List<MonHoc> listMH= (List<MonHoc>) monHocDao.getListMH();
        modelMap.addAttribute("listMH",listMH);
        List<GiangVien> listGV= (List<GiangVien>) giangVienDao.getListGV();
        modelMap.addAttribute("listGV",listGV);
        List<Phong> listPhong= (List<Phong>) phongDao.getListPhong() ;
        modelMap.addAttribute("listPhong",listPhong);
        return "admin/courses-register-add";
    }
    @RequestMapping(value = "/admin/course-register/edit/{id}", method = RequestMethod.GET)
    public String editCourseRegisterAdmin(ModelMap modelMap,@PathVariable int id){
        HocPhan hocPhan=hocPhanDao.getHP(id);
        modelMap.addAttribute("hocPhan",hocPhan);
        List<MonHoc> listMH= (List<MonHoc>) monHocDao.getListMH();
        modelMap.addAttribute("listMH",listMH);
        List<GiangVien> listGV= (List<GiangVien>) giangVienDao.getListGV();
        modelMap.addAttribute("listGV",listGV);
        List<Phong> listPhong= (List<Phong>) phongDao.getListPhong() ;
        modelMap.addAttribute("listPhong",listPhong);
        return "admin/courses-register-add";
    }
    @RequestMapping(value = "/admin/course-register/edit/{id}", method = RequestMethod.POST)
    public String insertCourseRegisterAdmin(ModelMap modelMap,@PathVariable("id") int id, @RequestParam("monHoc") int maMH, @RequestParam("giangVien") int maGV,
                @RequestParam("phong") int maPhong, @RequestParam("caHoc") int caHoc, @RequestParam("ngay") String ngay,@RequestParam("trangThai") Boolean trangThai) throws ParseException {
        HocPhan hocPhan=new HocPhan();;
        if(id==0){
            hocPhan.setSoTietDaHoc(0);
        }else{
            hocPhan=hocPhanDao.getHP(id);
        }
        MonHoc monHoc=monHocDao.getMH(maMH);
        hocPhan.setMonHoc(monHoc);
        GiangVien giangVien=giangVienDao.getGV(maGV);
        hocPhan.setGiangVien(giangVien);
        Phong phong=phongDao.getPhong(maPhong);
        hocPhan.setPhong(phong);
        String array[]=ngay.split(" to ");
        Date ngayBD= new SimpleDateFormat("yyyy/mm/dd").parse(array[0]);
        hocPhan.setNgayBD(ngayBD);
        Date ngayKT= new SimpleDateFormat("yyyy/mm/dd").parse(array[1]);
        hocPhan.setNgayKT(ngayKT);
        hocPhan.setCaHoc(caHoc);
        hocPhan.setTrangThai(trangThai);
        if(id!=0){
            if(hocPhanDao.updateHP(hocPhan)==1){
                return "redirect:/admin/course-register";
            }
        }else{
            if(hocPhanDao.insertHP(hocPhan)==1){
                return "redirect:/admin/course-register";
            }
        }
        return "redirect:/admin/course-register/edit/"+id;
    }
    @RequestMapping(value = "/admin/course-register/delete/{id}", method = RequestMethod.GET)
    public String deleteCourseRegisterAdmin(ModelMap modelMap){
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
        GiangVien giangVien=null;
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
    public String insertInstructorsAdmin(ModelMap modelMap, @PathVariable int id, @RequestParam("btn") String btn, @RequestParam("account") String account
            , @RequestParam("name") String hoTen, @RequestParam("hocVi") String hocVi, @RequestParam("chuyenMon") String chuyenMon
            , @RequestParam("sdt") String sdt, @RequestParam("birth") Date ngaySinh, @RequestParam("moTa") String moTa){
        if(btn.equals("cancle")){
            return "redirect:/admin/instructors";
        }
        GiangVien giangVien=new GiangVien();
        if(id!=0){
            giangVien=giangVienDao.getGV(id);
        }else{
            TaiKhoan taiKhoan = new TaiKhoan(account, String.valueOf(123), loaiTaiKhoanDao.getLoaiTk(2),true);
            if(taiKhoanDao.insertTK(taiKhoan)!=1){
                return "redirect:/admin/instructors";
            }
            giangVien.setTaiKhoan(taiKhoan);
        }
        giangVien.setHoTen(hoTen);
        giangVien.setHocVi(hocVi);
        giangVien.setChuyenMon(chuyenMon);
        giangVien.setNgaySinh(ngaySinh);
        giangVien.setSdt(sdt);
        giangVien.setMoTa(moTa.trim());
        if(id!=0){
            if(giangVienDao.updateHV(giangVien)==1){
                return "redirect:/admin/instructors";
            }
        }else{
            if(giangVienDao.insertGV(giangVien)==1){
                return "redirect:/admin/instructors";
            }
        }
        return "redirect:/admin/instructors/edit/"+id;
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
    @RequestMapping(value = "/admin/students/edit/{id}", method = RequestMethod.POST)
    public String editStudentAdmin(ModelMap modelMap,@PathVariable int id, @RequestParam("btn") String btn, @RequestParam("account") String account
            , @RequestParam("name") String hoTen, @RequestParam("address") String diaChi, @RequestParam("sex") Boolean sex
            , @RequestParam("phone") String sdt, @RequestParam("birth") Date ngaySinh, @RequestParam("moTa") String moTa){
        if(btn.equals("cancle")){
            return "redirect:/admin/students";
        }
        HocVien hocVien=new HocVien();
        if(id!=0){
            hocVien=hocVienDao.getHV(id);
        }else{
            TaiKhoan taiKhoan = new TaiKhoan(account, String.valueOf(123), loaiTaiKhoanDao.getLoaiTk(1),true);
            if(taiKhoanDao.insertTK(taiKhoan)!=1){
                return "redirect:/admin/students";
            }
            hocVien.setTaiKhoan(taiKhoan);
        }
        hocVien.setHoTen(hoTen);
        hocVien.setDiaChi(diaChi);
        hocVien.setPhai(sex);
        hocVien.setSdt(sdt);

        hocVien.setNgaySinh(ngaySinh);
        hocVien.setMoTa(moTa.trim());
        if(id!=0){
            if(hocVienDao.updateHV(hocVien)==1){
                return "redirect:/admin/students";
            }
        }else{
            if(hocVienDao.insertHV(hocVien)==1){
                return "redirect:/admin/students";
            }
        }
        return "redirect:/admin/students/edit/"+id;
    }
    @RequestMapping(value = "/admin/students/edit/{id}", method = RequestMethod.GET)
    public String insertStudentAdmin(ModelMap modelMap,@PathVariable("id") int id){
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
