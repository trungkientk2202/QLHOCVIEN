package org.springmvc.entity;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "CA")
public class Ca {
   @Id
   @Column(name = "MACA")
   private String maCa;
   @Column(name = "GIOBD")
   private String gioBD;
   @Column(name = "GIOKT")
   private String gioKT;
   @OneToMany(mappedBy = "ca",fetch = FetchType.EAGER)
   private Collection<HocPhan> hocPhans;
   public Ca() {
   }

   public Ca(String maCa, String gioBD, String gioKT, Collection<HocPhan> hocPhans) {
      this.maCa = maCa;
      this.gioBD = gioBD;
      this.gioKT = gioKT;
      this.hocPhans = hocPhans;
   }

   public String getMaCa() {
      return maCa;
   }

   public void setMaCa(String maCa) {
      this.maCa = maCa;
   }

   public String getGioBD() {
      return gioBD;
   }

   public void setGioBD(String gioBD) {
      this.gioBD = gioBD;
   }

   public String getGioKT() {
      return gioKT;
   }

   public void setGioKT(String gioKT) {
      this.gioKT = gioKT;
   }

   public Collection<HocPhan> getHocPhans() {
      return hocPhans;
   }

   public void setHocPhans(Collection<HocPhan> hocPhans) {
      this.hocPhans = hocPhans;
   }
}
