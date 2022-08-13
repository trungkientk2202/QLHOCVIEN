package org.springmvc.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "HOCVIEN")
public class HocVien {
    @Id
    @Column(name = "MAHV")
    private String maHV;
    @Column(name = "HOTEN")
    private String hoTen;
    @Column(name = "SDT")
    private String sdt;
    @Column(name = "DIACHI")
    private String diaChi;
    @Column(name = "PHAI")
    private Boolean phai;
    @OneToOne
    @JoinColumn(name = "TENTAIKHOAN", nullable = false)
    private TaiKhoan taiKhoan;
    @Column(name = "NGAYSINH")
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Temporal(TemporalType.DATE)
    private Date ngaySinh;
    @Column(name = "MOTA")
    private String moTa;
    @OneToMany(mappedBy = "hocVien",fetch = FetchType.LAZY)
    private Collection<DongHocPhi> dongHocPhis;

    @OneToMany(mappedBy = "hocVien",fetch = FetchType.LAZY)
    private Collection<DangKyHP> dangKyHPS;


    public HocVien() {
    }

    public HocVien(String maHV, String hoTen, String sdt, String diaChi, Boolean phai, TaiKhoan taiKhoan, Date ngaySinh, String moTa, Collection<DongHocPhi> dongHocPhis, Collection<DangKyHP> dangKyHPS) {
        this.maHV = maHV;
        this.hoTen = hoTen;
        this.sdt = sdt;
        this.diaChi = diaChi;
        this.phai = phai;
        this.taiKhoan = taiKhoan;
        this.ngaySinh = ngaySinh;
        this.moTa = moTa;
        this.dongHocPhis = dongHocPhis;
        this.dangKyHPS = dangKyHPS;
    }

    public String getMaHV() {
        return maHV;
    }

    public void setMaHV(String maHV) {
        this.maHV = maHV;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public Boolean getPhai() {
        return phai;
    }

    public void setPhai(Boolean phai) {
        this.phai = phai;
    }

    public TaiKhoan getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(TaiKhoan taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Collection<DongHocPhi> getDongHocPhis() {
        return dongHocPhis;
    }

    public void setDongHocPhis(Collection<DongHocPhi> dongHocPhis) {
        this.dongHocPhis = dongHocPhis;
    }

    public Collection<DangKyHP> getDangKyHPS() {
        return dangKyHPS;
    }

    public void setDangKyHPS(Collection<DangKyHP> dangKyHPS) {
        this.dangKyHPS = dangKyHPS;
    }
}
