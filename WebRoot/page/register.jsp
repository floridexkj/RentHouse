<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>租房网 -发布房屋信息</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
	<div id="header" class="wrap">
		<div id="logo">
			<img src="images/logo.gif" />
		</div>
	</div>
	<div id="regLogin" class="wrap">
		<div class="dialog">
			<dl class="clearfix">
				<dt>新用户注册</dt>
				<dd class="past">填写个人信息&nbsp
				
				<span style="color:red"> 
					<s:fielderror>
					<s:param>erroradd</s:param>
					</s:fielderror> 
					</span>
				</dd>
			
			</dl>
			<div class="box">
				<s:form action="user1!register.action" method="post">
					<div class="infos">
						<table class="field">
							<tr>
								<td class="field">用 户 名：</td>
								<td><s:textfield name="name" id="name" cssClass="text" /></td>
								<!-- <td><input type="text" class="text" name="name" /></td> -->
							</tr>
							<tr>
								<td class="field">密 码：</td>
								<td><s:password name="userpwd" id="userpwd" cssClass="text"/></td>
								<!-- <td><input type="password" class="text" name="password" /> -->
								</td>
							</tr>
							<tr>
								<td class="field">确认密码：</td>
								<td><s:password name="repeatpwd" id="repeatpwd" cssClass="text"/>
								<span style="color:red"> 
					                    <s:fielderror>
					                    <s:param>errorpwd</s:param>
					                    </s:fielderror> 
					                    </span>
								</td>
								<!-- <td><input type="password" class="text" name="repassword" /> -->
							</tr>
							<tr>
								<td class="field">电 话：</td>
								<td><s:textfield name="telephone" id="telephone" cssClass="text" />
								<span style="color:red"> 
					                    <s:fielderror>
					                    <s:param>errortel</s:param>
					                    </s:fielderror> 
					                    </span>
								</td>
								<!-- <td><input type="text" class="text" name="telephone" /> -->
								
										
								
					
							</tr>
							<tr>
								<td class="field">用户姓名：</td>
								<td><s:textfield name="username" id="username" cssClass="text" /></td>
								<!-- <td><input type="text" class="text" name="username" /></td> -->
							    </tr>
						      </table>
						    <div class="buttons">
						    <s:submit name="submit" id="submit" value="立即注册"/>
						<!-- 	<input type="submit" name="submit" value="立即注册" /> -->
						</div>
					</div>
				</s:form>
			</div>
		</div>
	</div>
	<div id="footer" class="wrap">
		<dl>

			<dd>关于我们 · 联系方式 · 意见反馈 · 帮助中心</dd>
		</dl>
	</div>
</body>
</html>

