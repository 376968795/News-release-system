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

<title>My JSP 'Login.jsp' starting page</title>

</head>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<body>
	<div id="div1">
		<div id="divlogin">
		<form id="frm1" method="post" action="<%=path%>/HLoginServlet.do">
			<div id="divtaitle">
				<b>Login to your account</b>
			</div>
			<div id="divint">We're happy to see you return!Please log in to
				continue.</div>
			<div id="divuw">
				<input type="hidden" name="back" value="${param.back}">
				<input type="hidden" name="action" value="login">
				Userword&nbsp<input id="uw" type="text" name="uw">
			</div>
			<div id="divpw">
				<div id="divp">
					Password&nbsp<input id="pw" type="password" name="pw">
				</div>
				<div id="login">
					<b>Log-in</b>
				</div>
			</div>
			<div id="divgou">
				<input id="c1" type="checkbox" name="gou">Remember me on this computer
			</div>
			</form>
		</div>
	</div>
</body>
<script src="lib/jquery-2.0.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$("#login").click(function(){
		$("#frm1").submit();
	});
</script>
</html>
