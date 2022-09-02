package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.*;
import org.springmvc.webconfig.HibernateConfig;

import java.util.Date;
import java.util.List;

public class HocPhanDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getAllHP() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public List<HocPhan> getListHPChuaDK(List<Integer> list) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan hp where hp.trangThai=true and hp.maHP not in :list").setParameter("list",list).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public List<?> getListHP() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan hp where hp.trangThai=true").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public List<?> getListHPByGV(GiangVien giangVien) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan hp where hp.giangVien= :giangVien").setParameter("giangVien",giangVien).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<?> getListHPByMH(MonHoc monHoc) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan hp where hp.monHoc= :monHoc").setParameter("monHoc",monHoc).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public List<?> getListHocPhan(String name, int month,int year) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan hp where hp.monHoc.tenMH like '%"+name+"%' and month(hp.ngayBD)<="+month+" and year(hp.ngayKT)>= "+month
            +" and year(hp.ngayBD)<="+year+" and year(ngayKT)>="+year).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public List<?> getListHPByDate(int month,int year) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan hp where month(hp.ngayBD)<="+month+" and year(hp.ngayKT)>= "+month
                    +" and year(hp.ngayBD)<="+year+" and year(ngayKT)>="+year).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public HocPhan getHP(int maHP) {
        try{
            Session session = factory.openSession();
            String hql = "FROM HocPhan hp where hp.maHP = "+maHP;
            List<HocPhan> listHP= session.createQuery(hql).list();
            HocPhan hocPhan=listHP.get(0);
            return hocPhan;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }

    public Integer insertHP(HocPhan hocPhan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(hocPhan);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateHP(HocPhan hocPhan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            HocPhan hp = session.get(HocPhan.class, hocPhan.getMaHP());
            hp.setMonHoc(hocPhan.getMonHoc());
            hp.setCaHoc(hocPhan.getCaHoc());
            hp.setGiangVien(hocPhan.getGiangVien());
            hp.setPhong(hocPhan.getPhong());
            hp.setNgayBD(hocPhan.getNgayBD());
            hp.setNgayKT(hocPhan.getNgayKT());
            hp.setSoTietDaHoc(hocPhan.getSoTietDaHoc());
            hp.setTrangThai(hocPhan.isTrangThai());
            session.update(hp);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteHP(HocPhan hocPhan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            HocPhan hp = session.get(HocPhan.class, hocPhan.getMaHP());
            session.delete(hp);
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
