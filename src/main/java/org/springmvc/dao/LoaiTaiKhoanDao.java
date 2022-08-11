package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.LoaiTaiKhoan;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class LoaiTaiKhoanDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListLTK() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM LoaiTaiKhoan ").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public LoaiTaiKhoan getLoaiTk(int idLoaiTK) {
        try{
            Session session = factory.openSession();
            String hql = "FROM LoaiTaiKhoan ltk where ltk.maLoaiTK = "+idLoaiTK;
            List<LoaiTaiKhoan> listLTK= session.createQuery(hql).list();
            LoaiTaiKhoan loaiTaiKhoan=listLTK.get(0);
            System.out.println(loaiTaiKhoan.getTenLoaiTk());
            return loaiTaiKhoan;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Integer insertLoaiTK(LoaiTaiKhoan LoaiTaiKhoan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(LoaiTaiKhoan);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateLoaiTK(LoaiTaiKhoan LoaiTaiKhoan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(LoaiTaiKhoan);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteLoaiTK(LoaiTaiKhoan LoaiTaiKhoan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(LoaiTaiKhoan);
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
