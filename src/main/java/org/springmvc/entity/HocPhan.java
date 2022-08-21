package org.springmvc.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "HOCPHAN")
public class HocPhan {
    @Id
    @GeneratedValue
    @Column(name = "MAHP")
    private int maHP;
    @ManyToOne
    @JoinColumn(name = "maGV")
    private GiangVien giangVien;
    @ManyToOne
    @JoinColumn(name = "maPhong")
    private Phong phong;
    @ManyToOne
    @JoinColumn(name = "maMH")
    private MonHoc monHoc;
    @Column
    private int caHoc;
    @Column(name = "NGAYBD")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date ngayBD;
    @Column(name = "NGAYKT")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date ngayKT;
    @Column(name = "TRANGTHAI")
    private boolean trangThai;
    @OneToMany(mappedBy = "hocPhan",fetch = FetchType.EAGER,cascade = {CascadeType.ALL})
    public Collection<DangKyHP> dangKyHPS;
    public HocPhan() {
    }

    public HocPhan(int maHP, GiangVien giangVien, Phong phong, MonHoc monHoc, int caHoc, Date ngayBD, Date ngayKT, boolean trangThai, Collection<DangKyHP> dangKyHPS) {
        this.maHP = maHP;
        this.giangVien = giangVien;
        this.phong = phong;
        this.monHoc = monHoc;
        this.caHoc = caHoc;
        this.ngayBD = ngayBD;
        this.ngayKT = ngayKT;
        this.trangThai = trangThai;
        this.dangKyHPS = dangKyHPS;
    }

    public int getMaHP() {
        return maHP;
    }

    public void setMaHP(int maHP) {
        this.maHP = maHP;
    }

    public GiangVien getGiangVien() {
        return giangVien;
    }

    public void setGiangVien(GiangVien giangVien) {
        this.giangVien = giangVien;
    }

    public Phong getPhong() {
        return phong;
    }

    public void setPhong(Phong phong) {
        this.phong = phong;
    }

    public MonHoc getMonHoc() {
        return monHoc;
    }

    public void setMonHoc(MonHoc monHoc) {
        this.monHoc = monHoc;
    }

    public int getCaHoc() {
        return caHoc;
    }

    public void setCaHoc(int caHoc) {
        this.caHoc = caHoc;
    }

    public Date getNgayBD() {
        return ngayBD;
    }

    public void setNgayBD(Date ngayBD) {
        this.ngayBD = ngayBD;
    }

    public Date getNgayKT() {
        return ngayKT;
    }

    public void setNgayKT(Date ngayKT) {
        this.ngayKT = ngayKT;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    public Collection<DangKyHP> getDangKyHPS() {
        return dangKyHPS;
    }

    public void setDangKyHPS(Collection<DangKyHP> dangKyHPS) {
        this.dangKyHPS = dangKyHPS;
    }
}
