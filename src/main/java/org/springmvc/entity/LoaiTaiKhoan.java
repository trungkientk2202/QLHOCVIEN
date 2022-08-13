package org.springmvc.entity;

import javax.persistence.*;

@Entity
@Table(name = "LOAITAIKHOAN")
public class LoaiTaiKhoan {
    @Id
    @GeneratedValue
    @Column(name="MALOAITK")
    private int maLoaiTK;
    @Column(name = "TENLOAITK")
    private String tenLoaiTk;

    public LoaiTaiKhoan() {
    }

    public LoaiTaiKhoan(int maLoaiTK, String tenLoaiTk) {
        this.maLoaiTK = maLoaiTK;
        this.tenLoaiTk = tenLoaiTk;
    }

    public int getMaLoaiTK() {
        return maLoaiTK;
    }

    public void setMaLoaiTK(int maLoaiTK) {
        this.maLoaiTK = maLoaiTK;
    }

    public String getTenLoaiTk() {
        return tenLoaiTk;
    }

    public void setTenLoaiTk(String tenLoaiTk) {
        this.tenLoaiTk = tenLoaiTk;
    }
}
