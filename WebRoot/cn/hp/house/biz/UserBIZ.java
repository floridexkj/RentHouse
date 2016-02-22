package cn.hp.house.biz;

import cn.hp.house.dao.UserDAO;
import cn.hp.house.entity.Users;

/**
 * 业务逻辑层 
 * @author hp
 *
 */
public class UserBIZ {

	UserDAO ud=new UserDAO();
	
	public boolean login(String name,String pwd)throws Exception
	{
		Users u=null;
		try{
		  u=ud.login(name, pwd);		  
		  if(u==null)
			  return false;
		  else 
			  return true;
		}catch(Exception ex)
		{
			throw new Exception(ex);
		}
		
	}
	
	
	
}
