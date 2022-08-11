package org.springmvc.entity;

import javax.persistence.*;

@Entity
@Table(name = "DANGKYHP")
public class DangKyHP {
    @EmbeddedId
    private DangKyHPID id;

    @ManyToOne
    @MapsId("maHV")
    @JoinColumn(name = "MAHV")
    HocVien hocVien;

    @ManyToOne
    @MapsId("maHP")
    @JoinColumn(name = "MAHP")
    HocPhan hocPhan;

    @Column(name = "HUYDK")
    private Boolean huyDK;
    @Column(name = "GHICHU")
    private String ghiChu;

    public DangKyHP() {
    }

    public DangKyHP(DangKyHPID id, HocVien hocVien, HocPhan hocPhan, Boolean huyDK, String ghiChu) {
        this.id = id;
        this.hocVien = hocVien;
        this.hocPhan = hocPhan;
        this.huyDK = huyDK;
        this.ghiChu = ghiChu;
    }

    public DangKyHPID getId() {
        return id;
    }

    public void setId(DangKyHPID id) {
        this.id = id;
    }

    public HocVien getHocVien() {
        return hocVien;
    }

    public void setHocVien(HocVien hocVien) {
        this.hocVien = hocVien;
    }

    public HocPhan getHocPhan() {
        return hocPhan;
    }

    public void setHocPhan(HocPhan hocPhan) {
        this.hocPhan = hocPhan;
    }

    public Boolean getHuyDK() {
        return huyDK;
    }

    public void setHuyDK(Boolean huyDK) {
        this.huyDK = huyDK;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }
}
