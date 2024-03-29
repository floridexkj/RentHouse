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

				<dd class="past">修改房屋信息</dd>

			</dl>
			<div class="box">
				<s:form action="update2.action" method="post">
					<s:hidden name="house.id"></s:hidden>
					<s:hidden name="house.user.id"></s:hidden>
					<div class="infos">
						<table class="field">
							<tr>
								<td class="field">标 题：</td>
								<td><s:textfield cssClass="text" key="title"
										name="house.title" />
								</td>
							</tr>
							<tr>
								<td class="field">户 型：</td>
								<td><select class="text" name="house.type.id">
										<option value="1000"
											<s:if test="%{house.type.id==1000}">selected</s:if>>一室一厅</option>
										<option value="1001"
											<s:if test="%{house.type.id==1001}">selected</s:if>>一室两厅</option>
										<option value="1002"
											<s:if test="%{house.type.id==1002}">selected</s:if>>两室一厅</option>
										<option value="1003"
											<s:if test="%{house.type.id==1003}">selected</s:if>>两室两厅</option>
										<option value="1004"
											<s:if test="%{house.type.id==1004}">selected</s:if>>三室一厅</option>
										<option value="1005"
											<s:if test="%{house.type.id==1005}">selected</s:if>>三室两厅</option>
								</select></td>
							</tr>
							<tr>
								<td class="field">面 积：</td>
								<td><s:textfield cssClass="text" key="floorage"
										name="house.floorage" /></td>
							</tr>
							<tr>
								<td class="field">价 格：</td>
								<td><s:textfield cssClass="text" key="price"
										name="house.price" /></td>
							</tr>

							<tr>
								<td class="field">房产证日期：</td>
								<td><s:textfield cssClass="text" key="houseDate"
										name="house.date" /></td>
							</tr>

							<tr>
								<td class="field">位 置：</td>
								<td>
									<!--  
								区：<select class="text" name="district_id">
										<option value="1000"
											<s:if test="%{house.type.id==1000}">selected</s:if>>丰台</option>
										<option value="1001">东城区</option>
										<option value="1002">西城区</option>
										<option value="1003">石景山</option>
										<option value="1004">海淀区</option>
										<option value="1006">朝阳</option>

								</select>--> 街：<select class="text" name="house.street.id">
										<option value="1001"
											<s:if test="%{house.street.id==1001}">selected</s:if>>中关村大街</option>
										<option value="1002"
											<s:if test="%{house.street.id==1002}">selected</s:if>>学院路大街</option>
										<option value="1003"
											<s:if test="%{house.street.id==1003}">selected</s:if>>朝阳路大街</option>
										<option value="1000"
											<s:if test="%{house.street.id==1000}">selected</s:if>>知春路大街</option>

								</select>
								</td>
							</tr>
							<tr>
								<td class="field">联系方式：</td>
								<td><s:textfield cssClass="text" key="contact"
										name="house.contact" />
								</td>
							</tr>
							<tr>
								<td class="field">详细信息：</td>

								<td><s:textarea key="house.description"
										name="house.description"></s:textarea></td>
							</tr>
						</table>
						<div class="buttons">
							<s:submit value="立即发布" />
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