package cn.hp.house.biz;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.hp.house.dao.UserDAO;
import cn.hp.house.entity.Users;

import com.opensymphony.xwork2.ActionContext;

/**
 * 业务逻辑层
 * 
 * @author hp
 * 
 */
public class UserBIZ {

	UserDAO ud = new UserDAO();

	public boolean login(String name, String pwd) throws Exception {
		Users u = null;
		try {

			u = ud.login(name, pwd);

			Map<String, Object> mapSession = ActionContext.getContext()
					.getSession();
			mapSession.put("USERS", u);

			// HttpSession session = ServletActionContext.getRequest()
			// .getSession();
			//
			// session.setAttribute("USERS", u);			

			if (u == null)
				return false;
			else
				return true;
		} catch (Exception ex) {
			throw new Exception(ex);
		}
	}
	
	public int register(String name,String userpwd,String telephone,String username)throws Exception
	{
		try{
			int i=0;
			i=ud.register(name, userpwd, telephone, username);
			if(i==1)
			{
				return i;
			}
			else
			{
				return i;
			}
		}
		catch(Exception ex)
		{
			throw new Exception(ex);
		}
		
	}
	
	
	

}
