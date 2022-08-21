package org.springmvc.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "DONGHOCPHI")
public class DongHocPhi {
    @Id
    @GeneratedValue
    @Column(name = "ID")
    private int id;
    @ManyToOne
    @JoinColumn(name = "MAHV")
    private HocVien hocVien;
    @Column(name = "SOTIENDONG")
    private long soTienDong;
    @Column(name = "NGAYDONG")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date ngayDong;

    public DongHocPhi() {
    }

    public DongHocPhi(int id, HocVien hocVien, long soTienDong, Date ngayDong) {
        this.id = id;
        this.hocVien = hocVien;
        this.soTienDong = soTienDong;
        this.ngayDong = ngayDong;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public HocVien getHocVien() {
        return hocVien;
    }

    public void setHocVien(HocVien hocVien) {
        this.hocVien = hocVien;
    }

    public long getSoTienDong() {
        return soTienDong;
    }

    public void setSoTienDong(long soTienDong) {
        this.soTienDong = soTienDong;
    }

    public Date getNgayDong() {
        return ngayDong;
    }

    public void setNgayDong(Date ngayDong) {
        this.ngayDong = ngayDong;
    }
}
