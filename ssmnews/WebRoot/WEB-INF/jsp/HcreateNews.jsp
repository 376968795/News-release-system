<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'HcreateNews.jsp' starting page</title>

</head>
<link rel="stylesheet" type="text/css" href="css/HcreateNews.css" />
<body>
	<div id="cover"></div>
	<div id="sugg"><b>抱歉，你没有权限访问该页面</b></div>
	<div id="divtitle">
		<b>新闻发布</b>
	</div>
	<table id="table1" width="90%">
		<tr>
			<td class="ct">标题:&nbsp</td>
			<td height="50px"><input type="text" id="text">
			</td>
		</tr>
		<tr>
			<td class="ct" height="50px">类型:&nbsp</td>
			<td><select id="se">
					<option>请选择</option>
					<option value="1">国际</option>
					<option value="2">国内</option>
					<option value="3">科技</option>
					<option value="4">手机</option>
					<option value="5">军事</option>
					<option value="6">生活</option>
					<option value="7">体育</option>
					<option value="8">娱乐</option>
					<option value="9">汽车</option>
			</select></td>
		</tr>
		<tr>
			<td></td>
			<td height="330px"><textarea id="TextArea1" cols="20" rows="2"
					class="ckeditor"></textarea>
			</td>
		</tr>
		<tr>
			<td></td>
			<form id="frm" method="post" action="<%=path%>/hcreatenews.action">
				<input type="hidden" id="tp1" name="title" value=""> <input
					type="hidden" id="tp2" name="sid" value=""> <input
					type="hidden" id="tp3" name="newcontent" value=""> <input
					type="hidden" id="tp4" name="author" value="">
			</form>
			<td height="50px"><input id="b1" type="button" value="提交"
				onclick="a()">
			</td>

		</tr>
	</table>
	<input type="hidden" id="action" value="${param.action}">
	<input type="hidden" id="username" value="${sessionScope.huser.username}">
</body>
<script src="lib/jquery-2.0.0.min.js" type="text/javascript"></script>
<script type='text/javascript' src='ckeditor/ckeditor.js'></script>
<script type='text/javascript' src='ckfinder/ckfinder.js'></script>
<script type="text/javascript" src="js/HcreateNews.js"></script>
</html>
