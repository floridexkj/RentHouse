package cn.hp.house.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.hp.house.entity.House;

public class HouseDAO {

	public List<House> getAllHouse() throws Exception{
		Session session = null;
		Transaction ta= null;
		House house = null;
		List<House> houseList = null;
		try{
			session = HibernateUtil.getSession();
			//ta =session.beginTransaction();
			String hql = "from House";
			Query q = session.createQuery(hql);
			houseList = q.list();
			//ta.commit();
		}catch(Exception ex){
			throw new Exception(ex);
		}
		return houseList;
	}
	
}
