package org.springmvc.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springmvc.entity.GiangVien;
import org.springmvc.entity.HocVien;
import org.springmvc.entity.TaiKhoan;
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
    public GiangVien getGVByUserName(TaiKhoan taiKhoan) {
        try{
            Session session = factory.openSession();
            String hql = "FROM GiangVien gv where gv.taiKhoan.tenTK = '"+taiKhoan.getTenTK()+"'";
            List<GiangVien> listGV= session.createQuery(hql).list();
            return listGV.get(0);
        }catch (HibernateException e){
            e.printStackTrace();
            return null;
        }
    }
    public Long sumInstructor(){
        try{
            Session session = factory.openSession();
            String hql = "SELECT count(gv.maGV) FROM GiangVien gv";
            return (Long) session.createQuery(hql).uniqueResult();
        }catch (HibernateException e){
            e.printStackTrace();
            return 0L;
        }
    }
    public GiangVien getGV(int id) {
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
            GiangVien gv = session.get(GiangVien.class, giangVien.getMaGV());
            gv.setHoTen(giangVien.getHoTen());
            gv.setChuyenMon(giangVien.getChuyenMon());
            gv.setHocVi(giangVien.getHocVi());
            gv.setSdt(giangVien.getSdt());
            gv.setMoTa(giangVien.getMoTa());
            gv.setNgaySinh(giangVien.getNgaySinh());
            gv.setTaiKhoan(giangVien.getTaiKhoan());
            session.update(gv);
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
            GiangVien gv = session.get(GiangVien.class, giangVien.getMaGV());
            session.delete(gv);
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
