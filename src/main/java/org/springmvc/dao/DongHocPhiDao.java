package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.DongHocPhi;
import org.springmvc.entity.HocVien;
import org.springmvc.entity.TaiKhoan;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class DongHocPhiDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListDHP() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM DongHocPhi").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<?> getListDHPByHV(HocVien hocVien) {
        try{
            Session session = factory.openSession();
            String hql = "FROM DongHocPhi hp where hp.hocVien= :hocVien";
            return session.createQuery(hql).setParameter("hocVien",hocVien).list();
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public long getTongDHPByHV(HocVien hocVien){
        try{
            Session session = factory.openSession();
            String hql = "SELECT sum(hp.soTienDong) FROM DongHocPhi hp where hp.hocVien= :hocVien";
            Long sum= (Long) session.createQuery(hql).setParameter("hocVien",hocVien).uniqueResult();
            return sum;
        }catch (HibernateException e){
            e.printStackTrace();
            return 0;
        }
    }
    public Integer insertHP(DongHocPhi dongHocPhi) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(dongHocPhi);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateHP(DongHocPhi dongHocPhi) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.update(dongHocPhi);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteHP(DongHocPhi dongHocPhi) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.delete(dongHocPhi);
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
