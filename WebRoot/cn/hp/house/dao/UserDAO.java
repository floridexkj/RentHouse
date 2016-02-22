package cn.hp.house.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.hp.house.entity.Users;

/**
 * 数据访问层
 * 
 * @author hp
 * 
 */
public class UserDAO {
	public static void main(String[] args) {

	}

	/**
	 * 登录
	 */
	public Users login(String username, String pwd) throws Exception {
		Users u = null;
		Transaction tx = null;
		Session s = null;
		try {
			s = HibernateUtil.getSession();

			tx = s.beginTransaction();

			String hql = "from Users where username=? and password=?";

			Query q = s.createQuery(hql);
			q.setString(0, username);
			q.setString(1, pwd);
			u = (Users) q.uniqueResult();

			tx.commit();
		} catch (Exception ex) {

			throw new Exception(ex);
		}

		return u;

	}
}
