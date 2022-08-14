package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.HocVien;
import org.springmvc.entity.TaiKhoan;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class HocVienDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListHV() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocVien ").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public HocVien getHV(int id) {
        try{
            Session session = factory.openSession();
            String hql = "FROM HocVien hv where hv.maHV = "+id;
            List<HocVien> listHV= session.createQuery(hql).list();
            HocVien hocVien=listHV.get(0);
            return hocVien;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public HocVien getHVByUserName(TaiKhoan taiKhoan) {
        try{
            Session session = factory.openSession();
            String hql = "FROM HocVien hv where hv.taiKhoan.tenTK = '"+taiKhoan.getTenTK()+"'";
            List<HocVien> listHV= session.createQuery(hql).list();
            HocVien hocVien=listHV.get(0);
            return hocVien;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Integer insertHV(HocVien hocVien) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(hocVien);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateHV(HocVien hocVien) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(hocVien);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteHV(HocVien hocVien) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(hocVien);
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
