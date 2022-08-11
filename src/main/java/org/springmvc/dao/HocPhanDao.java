package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.HocPhan;
import org.springmvc.entity.LoaiTaiKhoan;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class HocPhanDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListHP() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan").list();
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
    public Integer insertLoaiTK(HocPhan hocPhan) {
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
    public Integer updateLoaiTK(HocPhan hocPhan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(hocPhan);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteLoaiTK(HocPhan hocPhan) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(hocPhan);
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
