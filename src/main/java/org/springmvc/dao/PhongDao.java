package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.Ca;
import org.springmvc.entity.GiangVien;
import org.springmvc.entity.Phong;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class PhongDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListPhong() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM Phong ").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public Phong getPhong(int id) {
        try{
            Session session = factory.openSession();
            String hql = "FROM Phong p where p.maPhong = "+id;
            List<Phong> listHV= session.createQuery(hql).list();
            Phong phong=listHV.get(0);
            return phong;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Integer insertPhong(Phong phong) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(phong);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updatePhong(Phong phong) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(phong);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deletePhong(Phong phong) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(phong);
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
