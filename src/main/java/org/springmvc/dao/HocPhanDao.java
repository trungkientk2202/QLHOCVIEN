package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.*;
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
    public List<?> getListHPByGV(GiangVien giangVien) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan hp where hp.giangVien= "+giangVien).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<?> getListHPByMH(MonHoc monHoc) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM HocPhan hp where hp.monHoc= "+monHoc).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public DangKyHP getDKHP(int maDKHP) {
        try{
            Session session = factory.openSession();
            String hql = "FROM DangKyHP dk where dk.id = "+maDKHP;
            List<DangKyHP> listDKHP= session.createQuery(hql).list();
            DangKyHP dangKyHP=listDKHP.get(0);
            return dangKyHP;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Integer insertDKHP(DangKyHP dangKyHP) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(dangKyHP);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateDKHP(DangKyHP dangKyHP) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(dangKyHP);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteDKHP(DangKyHP dangKyHP) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(dangKyHP);
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
