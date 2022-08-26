package org.springmvc.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "BAIGIANG")
public class BaiGiang {
    @Id
    @GeneratedValue
    @Column(name = "MABG")
    private int maBG;

    @ManyToOne
    @JoinColumn(name = "MAHP")
    private HocPhan hocPhan;
    @Column(name = "NOIDUNG")
    private String noiDung;
    @Column(name = "TIEUDE")
    private String tieuDe;
    @Column(name = "DUONGDAN")
    private String duongDan;
    @Column(name = "NGAYTAO")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date ngayTao;

    public BaiGiang() {
    }

    public BaiGiang(int maBG, HocPhan hocPhan, String noiDung, String tieuDe, String duongDan, Date ngayTao) {
        this.maBG = maBG;
        this.hocPhan = hocPhan;
        this.noiDung = noiDung;
        this.tieuDe = tieuDe;
        this.duongDan = duongDan;
        this.ngayTao = ngayTao;
    }

    public int getMaBG() {
        return maBG;
    }

    public void setMaBG(int maBG) {
        this.maBG = maBG;
    }

    public HocPhan getHocPhan() {
        return hocPhan;
    }

    public void setHocPhan(HocPhan hocPhan) {
        this.hocPhan = hocPhan;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public String getDuongDan() {
        return duongDan;
    }

    public void setDuongDan(String duongDan) {
        this.duongDan = duongDan;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }
}
