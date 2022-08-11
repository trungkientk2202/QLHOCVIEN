package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.LoaiTaiKhoan;
import org.springmvc.entity.TaiKhoan;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class TaiKhoanDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListTK() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM TaiKhoan ").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public TaiKhoan getTK(String tenTK) {
        try{
            Session session = factory.openSession();
            String hql = "FROM TaiKhoan tk where tk.tenTK = "+tenTK;
            List<TaiKhoan> listTK= session.createQuery(hql).list();
            TaiKhoan taiKhoan=listTK.get(0);
            return taiKhoan;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Integer insertTK(TaiKhoan taiKhoan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(taiKhoan);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateLoaiTK(TaiKhoan taiKhoan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(taiKhoan);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteLoaiTK(TaiKhoan taiKhoan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(taiKhoan);
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
