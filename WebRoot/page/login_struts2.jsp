﻿<%@ page language="java" contentType="text/html;charset=UTF-8"%>

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
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>租房网 -发布房屋信息</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>

<script type="text/javascript">
	/* function checkForm() {
		var name = document.getElementById("username").value;
		var pwd = document.getElementById("userpwd").value;

		if (name == '') {
			alert("用户名不能为空");
			return false;
		}
		if (pwd == '') {
			alert("密码不能为空");
			return false;
		}
		return true;

	} */
</script>



</head>
<body>
	<div id="header" class="wrap">
		<div id="logo">
			<img src="images/logo.gif" />
		</div>
	</div>
	<div id="regLogin" class="wrap">
		<div class="dialog">
			<div class="box">
				<h4>
					用户登录 &nbsp;&nbsp;&nbsp;
								 <span style="color:red"> 
								 <s:fielderror>
							       <s:param>loginMsg</s:param>
						         </s:fielderror> 
						         </span>
				</h4>
				<s:form action="user!login" onsubmit="return checkForm()">
					<div class="infos">
						<table class="field">
							<tr>
								<td colspan="2">${message}
								</td>
							</tr>
							<tr>
								<td class="field">用 户 名：</td>
								<td>
									<!-- <input type="text" class="text" name="name" /> --> 
									<s:textfield name="username" id="username" cssClass="text" />
									        <span style="color:red"> 
									        <s:fielderror>
								 			  <s:param>errorname</s:param>
										    </s:fielderror>
										     </span>
						        </td>
							</tr>
							<tr>
								<td class="field">密 码：</td>
								<td>
									<!-- <input type="password" class="text" name="password" /> -->
									<s:password name="userpwd" id="userpwd" cssClass="text" /> 
									<s:fielderror>
										<s:param>errorpwd</s:param>
									</s:fielderror>
								</td>
							</tr>
							<!--
						<tr>
							<td class="field">验 证 码：</td>
							<td><input type="text" class="text verycode" name="veryCode" /></td>
						</tr>
						-->
						</table>
						<div class="buttons">
							<s:submit value="立即登录" />
							<input type='button' value='注册'
								onclick='document.location="<%=basePath%>page/register.jsp"' />
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


