package org.springmvc.entity;

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
    @JoinColumn(name = "maCa")
    private Ca ca;
    @ManyToOne
    @JoinColumn(name = "maPhong")
    private Phong phong;
    @ManyToOne
    @JoinColumn(name = "maMH")
    private MonHoc monHoc;
    @Column(name = "NGAYBD")
    @Temporal(TemporalType.DATE)
    private Date ngayBD;
    @Column(name = "NGAYKT")
    @Temporal(TemporalType.DATE)
    private Date ngayKT;
    @OneToMany(mappedBy = "hocPhan",fetch = FetchType.EAGER)
    public Collection<DangKyHP> dangKyHPS;
    public HocPhan() {
    }

    public HocPhan(int maHP, GiangVien giangVien, Ca ca, Phong phong, MonHoc monHoc, Date ngayBD, Date ngayKT, Collection<DangKyHP> dangKyHPS) {
        this.maHP = maHP;
        this.giangVien = giangVien;
        this.ca = ca;
        this.phong = phong;
        this.monHoc = monHoc;
        this.ngayBD = ngayBD;
        this.ngayKT = ngayKT;
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

    public Ca getCa() {
        return ca;
    }

    public void setCa(Ca ca) {
        this.ca = ca;
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

    public Collection<DangKyHP> getDangKyHPS() {
        return dangKyHPS;
    }

    public void setDangKyHPS(Collection<DangKyHP> dangKyHPS) {
        this.dangKyHPS = dangKyHPS;
    }
}
