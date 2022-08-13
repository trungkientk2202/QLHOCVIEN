package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.GiangVien;
import org.springmvc.entity.HocVien;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class GiangVienDao {

    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListGV() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM GiangVien ").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public GiangVien getHV(int id) {
        try{
            Session session = factory.openSession();
            String hql = "FROM GiangVien gv where gv.maGV = "+id;
            List<GiangVien> listHV= session.createQuery(hql).list();
            GiangVien giangVien=listHV.get(0);
            return giangVien;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Integer insertGV(GiangVien giangVien) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(giangVien);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateHV(GiangVien giangVien) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(giangVien);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteHV(GiangVien giangVien) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(giangVien);
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
