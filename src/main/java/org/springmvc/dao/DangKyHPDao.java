package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.GiangVien;
import org.springmvc.entity.HocPhan;
import org.springmvc.entity.HocVien;
import org.springmvc.entity.MonHoc;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class DangKyHPDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListDKHP() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM DangKyHP ").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public List<?> getListDKHPByHV(HocVien hocVien) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM DangKyHP dk where dk.hocVien= "+hocVien).list();
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
    public Integer deleteHP(HocPhan hocPhan) {
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
