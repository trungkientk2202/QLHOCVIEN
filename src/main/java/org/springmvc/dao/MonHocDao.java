package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.GiangVien;
import org.springmvc.entity.LoaiTaiKhoan;
import org.springmvc.entity.MonHoc;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class MonHocDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListMH() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM MonHoc").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }
    public MonHoc getMH(int id) {
        try{
            Session session = factory.openSession();
            String hql = "FROM MonHoc mh where mh.maMH = "+id;
            List<MonHoc> listMH= session.createQuery(hql).list();
            MonHoc monHoc=listMH.get(0);
            return monHoc;
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Integer insertMH(MonHoc monHoc) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(monHoc);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateMH(MonHoc monHoc) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(monHoc);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteMH(MonHoc monHoc) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(monHoc);
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
