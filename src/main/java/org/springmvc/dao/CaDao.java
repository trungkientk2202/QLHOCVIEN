package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.Ca;
import org.springmvc.entity.LoaiTaiKhoan;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class CaDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListCa() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM Ca ").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Integer insertCa(Ca ca) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(ca);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateCa(Ca ca) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(ca);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteCa(Ca ca) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(ca);
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
