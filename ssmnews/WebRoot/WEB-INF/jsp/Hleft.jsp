<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'Hleft.jsp' starting page</title>

</head>
<link rel="stylesheet" type="text/css" href="css/Hleft.css" />

<body>
	<c:forEach  var="i" begin="1" end="9">
		<div class="cover" id="cover${i}"></div>
		<div class="point" id="point${i}">
			<div class="point1">
				<h2 class="h2" id="h2">操作确认</h2>
			</div>
			<div class="point1">
				<h3 class="h3" id="h3">你确定要执行该操作吗</h3>
			</div>
			<div class="pointtrue" id="${i}">确定</div>
			<div class="pointfalse" id="${i}">取消</div>
		</div>
	</c:forEach>
	<div id="div1">
		<div id="divtitle">
			<b>新闻后台管理系统</b>
		</div>
		<div id="divuser">
			<input type="hidden" id="hidd1" value="${sessionScope.huser.powerid}">
			${sessionScope.huser.username}
			<c:choose>
				<c:when test="${sessionScope.huser.powerid==1}"> 系统管理员</c:when>
				<c:when test="${sessionScope.huser.powerid==2}"> 信息发布员</c:when>
				<c:when test="${sessionScope.huser.powerid==3}"> 信息审核员</c:when>
			</c:choose>
		</div>
		<div id="divquit" onclick="jump('<%=path%>/quit.do?action=quit')">&nbsp退出</div>
	</div>
	<div id="div2">
		<div class="cho"></div>
		<div id="1" class="cho">
			<b>新闻发布</b>
		</div>
		<div id="2" class="cho">
			<b>新闻审核</b>
		</div>
		<div id="3" class="cho">
			<b>评论审核</b>
		</div>
		<div id="4" class="cho">
			<b>个人信息</b>
		</div>
		<div id="5" class="cho">
			<b>用户管理</b>
		</div>
		<div id="6" class="cho">
			<b>新闻类别管理</b>
		</div>
		<div id="7" class="cho">
			<b>新闻类别管理</b>
		</div>
		<div id="8" class="cho">
			<b>新闻类别管理</b>
		</div>
		<div class="cho"></div>
	</div>
	<div id="div3">
		<iframe id="iframe" name="iframe" src="img/main.png"></iframe>
	</div>
	<form id="frm" action="" method="post"></form>
	<input type="hidden" id="username" value="${sessionScope.huser.username}">
	<input type="hidden" id="userid" value="${sessionScope.huser.id}">
</body>
<script src="lib/jquery-2.0.0.min.js" type="text/javascript"></script>
<script src="js/Hleft.js" type="text/javascript" ></script>
</html>
