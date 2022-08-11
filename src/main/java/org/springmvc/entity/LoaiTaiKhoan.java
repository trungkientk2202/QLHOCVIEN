package org.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "LOAITAIKHOAN")
public class LoaiTaiKhoan {
    @Id
    @Column(name="MALOAITK")
    private String maLoaiTK;
    @Column(name = "TENLOAITK")
    private String tenLoaiTk;

    public LoaiTaiKhoan() {
    }

    public LoaiTaiKhoan(String maLoaiTK, String tenLoaiTk) {
        this.maLoaiTK = maLoaiTK;
        this.tenLoaiTk = tenLoaiTk;
    }

    public String getMaLoaiTK() {
        return maLoaiTK;
    }

    public void setMaLoaiTK(String maLoaiTK) {
        this.maLoaiTK = maLoaiTK;
    }

    public String getTenLoaiTk() {
        return tenLoaiTk;
    }

    public void setTenLoaiTk(String tenLoaiTk) {
        this.tenLoaiTk = tenLoaiTk;
    }
}
