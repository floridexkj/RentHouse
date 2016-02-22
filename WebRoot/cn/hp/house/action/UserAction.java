package cn.hp.house.action;

import cn.hp.house.biz.UserBIZ;
import cn.hp.house.entity.Users;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	private String userpwd;

	UserBIZ ubiz=new UserBIZ();
	
	public String login()throws Exception {
		try{
			boolean result=ubiz.login(username, userpwd);
			
			if(result)
			{
				return "success";
			}else
			{
				return "login";
			}			
		}catch(Exception ex)
		{
			//return "login";
			throw new Exception(ex);
		}
 
	}

	public String reg() {
		return null;
	}
}
