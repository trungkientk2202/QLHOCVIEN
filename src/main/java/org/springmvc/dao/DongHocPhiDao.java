package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.DongHocPhi;
import org.springmvc.entity.HocVien;
import org.springmvc.entity.TaiKhoan;
import org.springmvc.webconfig.HibernateConfig;

import java.lang.reflect.Array;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

public class DongHocPhiDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListDHP() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM DongHocPhi").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<?> getListDHPByHV(HocVien hocVien) {
        try{
            Session session = factory.openSession();
            String hql = "FROM DongHocPhi hp where hp.hocVien= :hocVien";
            return session.createQuery(hql).setParameter("hocVien",hocVien).list();
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public long getTongDHPByHV(HocVien hocVien){
        try{
            Session session = factory.openSession();
            String hql = "SELECT sum(hp.soTienDong) FROM DongHocPhi hp where hp.hocVien= :hocVien";
            Long sum= (Long) session.createQuery(hql).setParameter("hocVien",hocVien).uniqueResult();
            return sum;
        }catch (HibernateException e){
            e.printStackTrace();
            return 0;
        }
    }
    public long[] getTongDHPTheoNgay(List<Date> dates){
        try{
            long a[]=new long[dates.size()];
            Session session = factory.openSession();
            for(int i=0;i<dates.size();i++) {
                String hql = "SELECT sum(hp.soTienDong) FROM DongHocPhi hp where hp.ngayDong =:date";
                a[i] = (Long) session.createQuery(hql).setParameter("date", dates.get(i)).uniqueResult()!=null?(Long) session.createQuery(hql).setParameter("date", dates.get(i)).uniqueResult():0L;
            }
            return a;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public long[] getTongDHPTheoThang(int year){
        try{
            long a[]=new long[12];
            Session session = factory.openSession();
            for (int i=1;i<=12;i++){

                String hql = "SELECT sum(hp.soTienDong) FROM DongHocPhi hp where month (hp.ngayDong) = :i and year(hp.ngayDong) =:year";
                a[i-1] = (Long) session.createQuery(hql).setParameter("i", i).setParameter("year", year).uniqueResult()!=null?(Long) session.createQuery(hql).setParameter("i", i).setParameter("year", year).uniqueResult():0L;

            }
            return a;
        }catch (HibernateException e){
            e.printStackTrace();
            return new long[12];
        }
    }
    public long[] getTongDHPTheoQuy(int year){
        Date date=new Date();
        try{
            long a[]=new long[4];
            Session session = factory.openSession();
            for (int i=1;i<=4;i++){
                String hql = "SELECT sum(hp.soTienDong) FROM DongHocPhi hp where month (hp.ngayDong) in (:i*3-2,:i*3-1,:i*3) and year(hp.ngayDong) =:year";
                a[i-1]= (Long) session.createQuery(hql).setParameter("i",i).setParameter("year",year).uniqueResult()!=null?(Long) session.createQuery(hql).setParameter("i",i).setParameter("year",year).uniqueResult():0L;
            }


            return a;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public long[] getTongDHPTheoNam(int n){
        Date date=new Date();
        try{
            long a[]=new long[n];
            Session session = factory.openSession();
            int d=0;
            for (int i=n;i>0;i--){
                String hql = "SELECT sum(hp.soTienDong) FROM DongHocPhi hp where year(hp.ngayDong) =:year";
                a[d]= (Long) session.createQuery(hql).setParameter("year",(2022-i+1)).uniqueResult()!=null?(Long) session.createQuery(hql).setParameter("year",(2022-i+1)).uniqueResult():0L;
                d++;
            }
            return a;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Integer insertHP(DongHocPhi dongHocPhi) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(dongHocPhi);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateHP(DongHocPhi dongHocPhi) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            DongHocPhi dhp = session.get(DongHocPhi.class, dongHocPhi.getId());
            dhp.setHocVien(dongHocPhi.getHocVien());
            dhp.setNgayDong(dongHocPhi.getNgayDong());
            dhp.setSoTienDong(dongHocPhi.getSoTienDong());
            dhp.setTrangThai(dongHocPhi.isTrangThai());
            session.update(dhp);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteHP(DongHocPhi dongHocPhi) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            DongHocPhi dhp = session.get(DongHocPhi.class, dongHocPhi.getId());
            session.delete(dhp);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
}
