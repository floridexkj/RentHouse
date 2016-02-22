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
	
	Users u = null;
	Transaction tx = null;
	Session s = null;
	/**
	 * 登录
	 */
	public Users login(String username, String pwd) throws Exception {
	
		try {
			s = HibernateUtil.getSession();

			//tx = s.beginTransaction();

			String hql = "from Users where username=? and password=?";

			Query q = s.createQuery(hql);
			q.setString(0, username);
			q.setString(1, pwd);
			u = (Users) q.uniqueResult();

			//tx.commit();
		} catch (Exception ex) {

			throw new Exception(ex);
		}

		return u;

	}
	//注册
	public int register(String name,String userpwd,String telephone,String username)throws Exception
	{
		int i=0;
		try
		{
			Session s=HibernateUtil.getSession();
			//tx=s.beginTransaction();
		    u=new Users();
			u.setName(name);
			u.setPassword(userpwd);
			u.setTelephone(telephone);
			u.setUsername(username);
			s.save(u);
			//tx.commit();
			 i=1;	
		}
		catch(Exception ex)
		{
			i=0;
		    throw new Exception(ex);
		}
		return i;
	}
	
	
	
	
	
}
