package org.springmvc.entity;

import javax.persistence.*;

@Entity
@Table(name = "TAIKHOAN")
public class TaiKhoan {
    @Id
    @Column(name = "TENTAIKHOAN")
    private String tenTK;
    @Column(name = "MATKHAU")
    private String matKhau;
    @OneToOne
    @JoinColumn(name = "MALOAITK", nullable = false)
    private LoaiTaiKhoan loaiTaiKhoan;
    @Column(name = "TRANGTHAI")
    private boolean trangThai;
    public TaiKhoan() {
    }

    public TaiKhoan(String tenTK, String matKhau, LoaiTaiKhoan loaiTaiKhoan, boolean trangThai) {
        this.tenTK = tenTK;
        this.matKhau = matKhau;
        this.loaiTaiKhoan = loaiTaiKhoan;
        this.trangThai = trangThai;
    }

    public String getTenTK() {
        return tenTK;
    }

    public void setTenTK(String tenTK) {
        this.tenTK = tenTK;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public LoaiTaiKhoan getLoaiTaiKhoan() {
        return loaiTaiKhoan;
    }

    public void setLoaiTaiKhoan(LoaiTaiKhoan loaiTaiKhoan) {
        this.loaiTaiKhoan = loaiTaiKhoan;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }
}
