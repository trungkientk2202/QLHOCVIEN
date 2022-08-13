package org.springmvc.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "GIANGVIEN")
public class GiangVien {
    @Id
    @GeneratedValue
    @Column(name = "MAGV")
    private int maGV;
    @Column(name = "HOTEN")
    private String hoTen;
    @Column(name = "SDT")
    private String sdt;
    @Column(name = "HOCVI")
    private String hocVi;
    @Column(name = "CHUYENMON")
    private String chuyenMon;
    @OneToOne
    @JoinColumn(name = "TENTAIKHOAN", nullable = false)
    private TaiKhoan taiKhoan;
    @Column(name = "NGAYSINH")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date ngaySinh;
    @Column(name = "MOTA")
    private String moTa;

    @OneToMany(mappedBy = "giangVien",fetch = FetchType.EAGER)
    private Collection<HocPhan> hocPhans;
    public GiangVien() {
    }

    public GiangVien(int maGV, String hoTen, String sdt, String hocVi, String chuyenMon, TaiKhoan taiKhoan, Date ngaySinh, String moTa, Collection<HocPhan> hocPhans) {
        this.maGV = maGV;
        this.hoTen = hoTen;
        this.sdt = sdt;
        this.hocVi = hocVi;
        this.chuyenMon = chuyenMon;
        this.taiKhoan = taiKhoan;
        this.ngaySinh = ngaySinh;
        this.moTa = moTa;
        this.hocPhans = hocPhans;
    }

    public int getMaGV() {
        return maGV;
    }

    public void setMaGV(int maGV) {
        this.maGV = maGV;
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

    public String getHocVi() {
        return hocVi;
    }

    public void setHocVi(String hocVi) {
        this.hocVi = hocVi;
    }

    public String getChuyenMon() {
        return chuyenMon;
    }

    public void setChuyenMon(String chuyenMon) {
        this.chuyenMon = chuyenMon;
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

    public Collection<HocPhan> getHocPhans() {
        return hocPhans;
    }

    public void setHocPhans(Collection<HocPhan> hocPhans) {
        this.hocPhans = hocPhans;
    }
}
