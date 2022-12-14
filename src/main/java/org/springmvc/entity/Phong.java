package org.springmvc.entity;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "PHONG")
public class Phong {
    @Id
    @GeneratedValue
    @Column(name = "MAPHONG")
    private int maPhong;
    @Column(name = "TENPHONG")
    private String tenPhong;
    @Column(name = "DIADIEM")
    private String diaDiem;
    @Column(name = "MOTA")
    private String moTa;
    @OneToMany(mappedBy = "phong",fetch = FetchType.EAGER)
    private Collection<HocPhan> hocPhans;

    public Phong() {
    }

    public Phong(int maPhong, String tenPhong, String diaDiem, String moTa, Collection<HocPhan> hocPhans) {
        this.maPhong = maPhong;
        this.tenPhong = tenPhong;
        this.diaDiem = diaDiem;
        this.moTa = moTa;
        this.hocPhans = hocPhans;
    }

    public int getMaPhong() {
        return maPhong;
    }

    public void setMaPhong(int maPhong) {
        this.maPhong = maPhong;
    }

    public String getTenPhong() {
        return tenPhong;
    }

    public void setTenPhong(String tenPhong) {
        this.tenPhong = tenPhong;
    }

    public String getDiaDiem() {
        return diaDiem;
    }

    public void setDiaDiem(String diaDiem) {
        this.diaDiem = diaDiem;
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
