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

<title>My JSP 'Hreview.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="css/Hreview.css" />
</head>

<body>
	<div id="cover">
		<div id="sugg">
			<b>抱歉，你没有权限访问该页面</b>
		</div>
	</div>
	<div id="divtitle">
		<b>新闻审核</b>
	</div>
	<div id="div0">
		<select name="selec" id="se">
			<option >已审核</option>
			<option id="op">未审核</option>	
		</select>
	</div>
	<div id="div1">
		<table id="table1">
			<tr height="30px">
				<td width="60px" align="center" class="ti"><b>序号</b>
				</td>
				<td width="280px" align="center" class="ti"><b>标题</b>
				</td>
				<td width="100px" align="center" class="ti"><b>类别</b>
				</td>
				<td width="120px" align="center" class="ti"><b>发布人</b>
				</td>
				<td width="130px" align="center" class="ti"><b>创建日期</b>
				</td>
				<td width="120px" align="center" class="ti"><b>审核人</b>
				</td>
				<td width="120px" align="center" class="ti"><b>状态</b>
				</td>
				<td width="130px" align="center" class="ti"><b>操作</b>
				</td>
			</tr>
			<c:forEach items="${requestScope.list }" var="a" varStatus="status">
				<c:choose>
					<c:when test="${status.index%2==0}">
						<tr height="50px" bgcolor="ededed">
					</c:when>
					<c:otherwise>
						<tr height="50px">
					</c:otherwise>
				</c:choose>
				<form id="frm${status.index+1}" method="post"
					action="<%=path%>/HleftServlet.do">
					<input type="hidden" name="action" value="looknews"> <input
						type="hidden" name="id" class="id" id="id${status.index+1}" value="${a.id}">
				</form>
				<td align="center">${status.index+1}</td>
				<td align="center" class="title"  id="${a.id}">${a.title}</td>
				<td align="center">${a.type}</td>
				<td align="center">${a.author}</td>
				<td align="center">${a.addtime}</td>
				<c:choose>
					<c:when test="${a.newstatus==1}">
						<td align="center" id="ren${status.index+1}">${a.reviewname}</td>
					</c:when>
					<c:otherwise>
						<td align="center" id="ren${status.index+1}"></td>
					</c:otherwise>
				</c:choose>
				<td align="center"><div id="divchoose">
						<!-- 判断是否已经审核了 -->
						<div class="ch" id="ch${status.index+1}">
							<c:choose>
								<c:when test="${a.newstatus==1}"><!-- 已审核 -->
									<div class="dst" id="${status.index+1}">未审核</div>
									<div id="divg"
										style="top:7px;
										left:113px;
										position:absolute;
										border-radius: 15px;
										width: 15px;
										height: 15px;
										float: left;
										cursor: pointer;
										background-color: white;">
									</div>
									<div class="dsf" id="dsf${status.index+1}">已审核</div>
								</c:when>
								<c:otherwise>
									<div class="dsf" id="dsf${status.index+1}">已审核</div>
									<div id="divg"
										style="top:7px;
										left:53px;
										position:absolute;
										border-radius: 15px;
										width: 15px;
										height: 15px;
										float: left;
										cursor: pointer;
										background-color: white;">
									</div>
									<div class="dst" id="${status.index+1}">未审核</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div></td>
				<td align="center"><img class="trash" src="img/trash.png"
					width="20px" height="20px" id="${status.index+1}"></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<form id="fo" method="post" >
		<input type="hidden" name="action" value="newsreview">
		<input id="index" type="hidden" name="index" value="${requestScope.page.index}">
	</form>
	<input type="hidden" id="maxindex" value="${requestScope.page.max}">
	<div id="div2">
		<div id="first" class="page1">
			<b>首页</b>
		</div>
		<div id="before" class="page2">
			<b>上一页</b>
		</div>
		<div class="page3">${requestScope.page.index}</div>
		<div id="next" class="page2">
			<b>下一页</b>
		</div>
		<div id="last" class="page1">
			<b>尾页</b>
		</div>
	</div>
	<form id="ddd" method="post"></form>
	<input type="hidden" id="path" value="<%=path%>">
	<input type="hidden" id="status" value="${requestScope.status}">
</body>
<script src="lib/jquery-2.0.0.min.js" type="text/javascript"></script>
<script src="js/Hreview.js" type="text/javascript"></script>

</html>
