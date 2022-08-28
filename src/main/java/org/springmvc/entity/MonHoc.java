package org.springmvc.entity;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "MONHOC")
public class MonHoc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MAMH")
    private int maMH;
    @Column(name = "TENMH")
    private String tenMH;
    @Column(name = "SOTIET")
    private int soTiet;
    @Column(name = "HOCPHI")
    private long hocPhi;
    @Column(name = "ANH")
    private String anh;
    @Column(name = "MOTA")
    private String moTa;
    @OneToMany(mappedBy = "monHoc",fetch = FetchType.EAGER)
    private Collection<HocPhan> hocPhans;

    public MonHoc() {
    }

    public MonHoc(int maMH, String tenMH, int soTiet, long hocPhi, String anh, String moTa, Collection<HocPhan> hocPhans) {
        this.maMH = maMH;
        this.tenMH = tenMH;
        this.soTiet = soTiet;
        this.hocPhi = hocPhi;
        this.anh = anh;
        this.moTa = moTa;
        this.hocPhans = hocPhans;
    }

    public int getMaMH() {
        return maMH;
    }

    public void setMaMH(int maMH) {
        this.maMH = maMH;
    }

    public String getTenMH() {
        return tenMH;
    }

    public void setTenMH(String tenMH) {
        this.tenMH = tenMH;
    }

    public int getSoTiet() {
        return soTiet;
    }

    public void setSoTiet(int soTiet) {
        this.soTiet = soTiet;
    }

    public long getHocPhi() {
        return hocPhi;
    }

    public void setHocPhi(long hocPhi) {
        this.hocPhi = hocPhi;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
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
