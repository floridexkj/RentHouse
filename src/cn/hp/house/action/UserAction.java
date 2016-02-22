package cn.hp.house.action;

import cn.hp.house.biz.UserBIZ;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements Action {
	
	private String name;
	private String userpwd;
	private String username;
	private String telephone;
	private String repeatpwd;
	
	public String getUsername() {
		return username;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public String getName() {
		return name;
	}

	public String getTelephone() {
		return telephone;
	}

	public String getRepeatpwd() {
		return repeatpwd;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public void setRepeatpwd(String repeatpwd) {
		this.repeatpwd = repeatpwd;
	}

	/**
	 * 全局校验
	 * 
	 * public void validate() {
	 * 
	 * if(username.trim().length()==0) { this.addFieldError("errorname",
	 * "用户名不能为空"); } if(userpwd.trim().length()==0) {
	 * this.addFieldError("errorpwd", "密码不能为空"); }
	 * 
	 * }
	 */

	// 登录方法校验
	public void validateLogin() {

		if (username.trim().length() == 0) {
			this.addFieldError("errorname", "用户名不能为空");
		}
		if (userpwd.trim().length() == 0) {
			this.addFieldError("errorpwd", "密码不能为空");
		}

	}


     //注册方法校验
	public void validateRegister()
	{
		if(username.trim().length()==0||userpwd.trim().length()==0
				||name.trim().length()==0||telephone.trim().length()==0
				||repeatpwd.trim().length()==0)
				{
					this.addFieldError("erroradd", "输入信息为空");
				}
		else{
					if(repeatpwd.equals(userpwd)==false)
					{
						this.addFieldError("errorpwd","密码输入不一致");
					}
					if(telephone.trim().length()!=11){
						this.addFieldError("errortel","电话号码不正确");
					}
					
				}
	}
				
		/*if(username.trim().length()==0)
		{
			this.addFieldError("errorname1", "用户名不能为空");
		}
		if(userpwd.trim().length()==0)
		{
			this.addFieldError("errorpwd1", "密码不能为空");
		}
		if(name.trim().length()==0)
		{
			this.addFieldError("errorname2", "姓名不能为空");
		}
		
		if(telephone.trim().length()==0)
		{
			this.addFieldError("errortel1", "电话不能为空");
		}
		else
		{
			if(telephone.trim().length()!=11)
			{
				this.addFieldError("errortel","手机号输入不正确" );
			}
		}
		
		if(repeatpwd.trim().length()==0)
		{
			this.addFieldError("errorpwb2", "不能为空");
		}
		else
		{
			if(repeatpwd.equals(userpwd)==false)
			{
				this.addFieldError("errorpwd","两次密码输入不一致" );
			}
			
		}*/
	
	//实例化业务逻辑层
	UserBIZ ubiz = new UserBIZ();
	//登陆数据库方法验证
	public String login() throws Exception {
		try {
			boolean result = ubiz.login(username, userpwd);
			if (result) 
			{
				return "success";
			} 
			else
			{
				addFieldError("loginMsg", "用户名或密码错误");
				 return "login";
			}
		} 
		catch (Exception ex)
		{
			throw new Exception(ex);
		}

	}
     //注册数据库方法验证
	public String register() throws Exception {
		try{
			int i=ubiz.register(name,userpwd,telephone,username);
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "error";
			}
			
		}
		catch(Exception ex)
		{
			throw new Exception(ex);
		}
		
	}
}
