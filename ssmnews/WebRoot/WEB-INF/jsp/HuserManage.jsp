<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'HuserManage.jsp' starting page</title>

</head>
<link rel="stylesheet" type="text/css" href="css/HuserManage.css" />
<body>
	<div id="divtitle">
		<b>用户管理</b>
	</div>
	<div id="div0">
		<div id="div01">
			<b>添加</b>
		</div>
		<div id="div02">
			<input type="text" id="inp" value="请输入用户名搜素">
			<div id="div021">
				<b>搜索</b>
			</div>
		</div>
	</div>
	<div id="div1">
		<table id="table1">
			<tr height="30px">
				<td width="90px" align="center" class="ti"><b>序号</b>
				</td>
				<td width="180px" align="center" class="ti"><b>职位</b>
				</td>
				<td width="160px" align="center" class="ti"><b>用户名</b>
				</td>
				<td width="210px" align="center" class="ti"><b>注册时间</b>
				</td>
				<td width="150px" align="center" class="ti"><b>状态</b>
				</td>
				<td width="260px" align="center" class="ti"><b>操作</b>
				</td>
			</tr>
			<tr height="50px" bgcolor="ededed">
				<td align="center">1</td>
				<td align="center">系统管理员</td>
				<td align="center">王大锤</td>
				<td align="center">2016-2-4</td>
				<td align="center">正常</td>
				<td align="center"><img class="trash" src="img/trash.png"
					width="20px" height="20px">
				</td>
			</tr>
			<tr height="50px">
				<td align="center">1</td>
				<td align="center">系统管理员</td>
				<td align="center">王大锤</td>
				<td align="center">2016-2-4</td>
				<td align="center">正常</td>
				<td align="center"><img class="trash" src="img/trash.png"
					width="20px" height="20px">
				</td>
			</tr>
			<tr height="50px" bgcolor="ededed">
				<td align="center">1</td>
				<td align="center">系统管理员</td>
				<td align="center">王大锤</td>
				<td align="center">2016-2-4</td>
				<td align="center">正常</td>
				<td align="center"><img class="trash" src="img/trash.png"
					width="20px" height="20px">
				</td>
			</tr>
			<tr height="50px">
				<td align="center">1</td>
				<td align="center">系统管理员</td>
				<td align="center">王大锤</td>
				<td align="center">2016-2-4</td>
				<td align="center">正常</td>
				<td align="center"><img class="trash" src="img/trash.png"
					width="20px" height="20px">
				</td>
			</tr>
			<tr height="50px" bgcolor="ededed">
				<td align="center">1</td>
				<td align="center">系统管理员</td>
				<td align="center">王大锤</td>
				<td align="center">2016-2-4</td>
				<td align="center">正常</td>
				<td align="center"><img class="trash" src="img/trash.png"
					width="20px" height="20px">
				</td>
			</tr>
			<tr height="50px">
				<td align="center">1</td>
				<td align="center">系统管理员</td>
				<td align="center">王大锤</td>
				<td align="center">2016-2-4</td>
				<td align="center">正常</td>
				<td align="center"><img class="trash" src="img/trash.png"
					width="20px" height="20px">
				</td>
			</tr>
		</table>
	</div>
	<div id="div2">
		<div class="page1"><b>首页</b></div>
		<div class="page2"><b>上一页</b></div>
		<div class="page3">1</div>
		<div class="page2"><b>下一页</b></div>
		<div class="page1"><b>尾页</b></div>
	</div>
</body>
<script src="lib/jquery-2.0.0.min.js" type="text/javascript"></script>
<script src="js/HuserManage.js" type="text/javascript"></script>
</html>
