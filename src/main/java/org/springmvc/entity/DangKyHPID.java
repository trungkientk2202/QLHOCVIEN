package org.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class DangKyHPID implements Serializable {
    @Column(name = "MAHV")
    private int maHV;
    @Column(name = "MAHP")
    private int maHP;

    public DangKyHPID() {
    }

    public DangKyHPID(int maHV, int maHP) {
        this.maHV = maHV;
        this.maHP = maHP;
    }

    public int getMaHV() {
        return maHV;
    }

    public void setMaHV(int maHV) {
        this.maHV = maHV;
    }

    public int getMaHP() {
        return maHP;
    }

    public void setMaHP(int maHP) {
        this.maHP = maHP;
    }
}
