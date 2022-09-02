package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.BaiGiang;
import org.springmvc.entity.Ca;
import org.springmvc.entity.HocPhan;
import org.springmvc.webconfig.HibernateConfig;

import java.util.List;

public class BaiGiangDao {
    private static final SessionFactory factory= HibernateConfig.getSessionFactory();

    public List<?> getListBaiGiang() {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM BaiGiang ").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<?> getListBaiGiangByHP(HocPhan hocPhan) {
        try (Session session = factory.openSession()) {
            return session.createQuery("FROM BaiGiang bg where bg.hocPhan =:hocPhan").setParameter("hocPhan",hocPhan).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Integer insertBaiGiang(BaiGiang baiGiang) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            session.save(baiGiang);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer updateBaiGiang(BaiGiang baiGiang) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            BaiGiang bg= session.get(BaiGiang.class,baiGiang.getMaBG());
            bg.setHocPhan(baiGiang.getHocPhan());
            bg.setTieuDe(baiGiang.getTieuDe());
            bg.setNoiDung(baiGiang.getNoiDung());
            bg.setDuongDan(baiGiang.getDuongDan());
            bg.setNgayTao(baiGiang.getNgayTao());
            session.update(bg);
            t.commit();
        } catch (Exception e) {
            t.rollback();
            return 0;
        } finally {
            session.close();
        }
        return 1;
    }
    public Integer deleteBaiGiang(BaiGiang baiGiang) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();

        try {
            BaiGiang bg= session.get(BaiGiang.class,baiGiang.getMaBG());
            session.delete(bg);
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
