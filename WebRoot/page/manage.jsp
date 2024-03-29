<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	int total = (Integer) request.getAttribute("total");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<sx:head />
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>租房网 -发布房屋信息</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
<script type="text/javascript">
		function toUrl(url){
			window.location.href = url;
			return;
		}
		function update(id){
			//document.location = '/HouseRent/update?id=' + id;
			document.location = '/HouseRent/update?hourseId=' + id;
		}
	    function deleteHouse(id){
			//document.location = '/HouseRent/page/modify.jsp?id=' + id;
			if(confirm("确定要删除吗?"))
			{
			  document.location = '/HouseRent/delete?hourseId=' + id;
			}
			
		}
	</script>
</head>
<body>
	<div id="header" class="wrap">
		<div id="logo">
			<img src="images/logo.gif" />
		</div>
		<div class="search">
			<label class="ui-green"><input
				onclick="toUrl('page/add.jsp');" type="button" name="search"
				value="发布房屋信息" /> </label> <label class="ui-green"><input
				type="button" name="search" value="退       出"
				onclick='document.location="index.jsp"' /> </label>
		</div>
	</div>
	<div class="main wrap">
		<s:div id="houseArea">
			<table class="house-list">
				<s:if test="result!=null">
					<s:iterator value="result" status="status">
						<tr>

							<td class="house-thumb"><span> <s:url
										value="show.action" id="show">
										<s:param name="id" value="id"></s:param>
									</s:url> <s:a href="%{show}">
										<img src="images/thumb_house.gif" />
									</s:a> </span>
							</td>
							<td>
								<dl>
									<dt>
										<s:url value="show.action" id="show">
											<s:param name="id" value="id"></s:param>
										</s:url>
										<s:a href="%{show}">
											<s:property value="title" />
										</s:a>
									</dt>
									<dd>
										<s:property value="street.district.name" />
										区
										<s:property value="street.name" />
										，
										<s:property value="floorage" />
										平米<br /> 联系方式
										<s:property value="contact" />

									</dd>
								</dl>
							</td>

							<td class="house-type"><label class="ui-green"><input
									type="button" onclick="update('<s:property value='id'/>')"
									name="search" value="修    改" /> </label></td>
							<td class="house-price"><label class="ui-green"><input
									type="button" name="search"
									onclick="deleteHouse('<s:property value='id'/>')"
									value="删    除" /> </label></td>


						</tr>
					</s:iterator>
				</s:if>
				<s:else>
					<td>无房屋信息输出</td>
				</s:else>

			</table>
		</s:div>
		<div class="pager">

			<ul>
				<li class="current"><s:url id="first" value="manage.action">
						<s:param name="number" value="1"></s:param>
					</s:url> <s:a href="%{first}">首页</s:a> <!-- <a href="/HouseRent/index.action?number=1">首页</a> -->
				</li>
				<li><s:url id="pre" value="manage.action">
						<s:param name="number" value="prev"></s:param>
					</s:url> <s:a href="%{pre}">上一页</s:a> <%-- <a href='/HouseRent/index.action?number=<s:property value="prev"/>'>上一页</a> --%>
				</li>
				<li><s:url id="nex" value="manage.action">
						<s:param name="number" value="next"></s:param>
					</s:url> <s:a href="%{nex}">下一页</s:a> <%-- <a href='/HouseRent/index.action?number=<s:property value="next"/>'>下一页</a> --%>
				</li>
				<li><s:url id="last" value="manage.action">
						<s:param name="number" value="total"></s:param>
					</s:url> <s:a href="%{last}">末页</s:a> <%-- <a href='/HouseRent/index.action?number=<s:property value="total"/>'>末页</a> --%>
				</li>
			</ul>
			<span class="total"><s:property value="number" />/<s:property
					value="total" />页</span>
		</div>
	</div>
	<div id="footer" class="wrap">
		<dl>

			<dd>关于我们 · 联系方式 · 意见反馈 · 帮助中心</dd>
		</dl>
	</div>
</body>
</html>
