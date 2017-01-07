<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Hlogin.jsp' starting page</title>

</head>
<link rel="stylesheet" type="text/css" href="css/Hlogin.css" />
<body>
	<div id="login">
		<div id="divb">
			<form id="frm" method="post" enctype="multipart/form-data">
				<div id="div1">
					<b>用户登录</b>
				</div>
				<div id="div2">
					<input id="inp1" type="text">
				</div>
				<div id="div3">
					<input id="inp2" type="password">
				</div>
				<div id="div4"><b>登录</b></div>
				<div id="div5">用户名或密码错误</div>
			</form>
		</div>
	</div>
	<form id="frm1"  method="post" enctype="multipart/form-data">
		<img id="img1" src="#"  width="60px" height="60px">
		<input type="file" name="picFile" value="上传" id="in1">
	</form>
	<div>
		<img id="cover" src="img/main.png" width="100%" height="100%">
	</div>
	<input type="hidden" id="hid1" value="${param.action}">
	<input type="hidden" id="path" value="<%=path%>">

</body>
<script src="lib/jquery-2.0.0.min.js" type="text/javascript"></script>
<script src="lib/jquery.form.js" type="text/javascript"></script>
<script src="js/Hlogin.js" type="text/javascript"></script>
</html>
