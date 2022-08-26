package org.springmvc.webconfig;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import org.springmvc.entity.*;

public class HibernateConfig {
    private static final SessionFactory FACTORY;

    static {
        Configuration configuration = new Configuration();
        configuration.configure("hibernate.cfg.xml");

        configuration.addAnnotatedClass(Ca.class);
        configuration.addAnnotatedClass(BaiGiang.class);
        configuration.addAnnotatedClass(DangKyHP.class);
        configuration.addAnnotatedClass(DangKyHPID.class);
        configuration.addAnnotatedClass(DongHocPhi.class);
        configuration.addAnnotatedClass(GiangVien.class);
        configuration.addAnnotatedClass(HocPhan.class);
        configuration.addAnnotatedClass(HocVien.class);
        configuration.addAnnotatedClass(LoaiTaiKhoan.class);
        configuration.addAnnotatedClass(MonHoc.class);
        configuration.addAnnotatedClass(Phong.class);
        configuration.addAnnotatedClass(TaiKhoan.class);

        ServiceRegistry registry = new StandardServiceRegistryBuilder()
                .applySettings(configuration.getProperties()).build();
        FACTORY = configuration.buildSessionFactory(registry);
    }

    public static SessionFactory getSessionFactory() {
        return FACTORY;
    }
}
