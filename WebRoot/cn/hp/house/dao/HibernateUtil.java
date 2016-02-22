package cn.hp.house.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	static SessionFactory sf = null;

	static {
		Configuration cfg = new Configuration().configure();
		sf = cfg.buildSessionFactory();
	}

	public static Session getSession() {

		return sf.getCurrentSession();
	}

}
