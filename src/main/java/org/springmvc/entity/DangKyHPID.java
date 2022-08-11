package org.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class DangKyHPID implements Serializable {
    @Column(name = "MAHV")
    private String maHV;
    @Column(name = "MAHP")
    private String maHP;

    public DangKyHPID() {
    }

    public DangKyHPID(String maHV, String maHP) {
        this.maHV = maHV;
        this.maHP = maHP;
    }

    public String getMaHV() {
        return maHV;
    }

    public void setMaHV(String maHV) {
        this.maHV = maHV;
    }

    public String getMaHP() {
        return maHP;
    }

    public void setMaHP(String maHP) {
        this.maHP = maHP;
    }
}
