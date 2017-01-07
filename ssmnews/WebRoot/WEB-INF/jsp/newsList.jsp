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

<title>My JSP 'newsList.jsp' starting page</title>

</head>


<link rel="stylesheet" type="text/css" href="css/newsList.css" />
<body>
	<div id="cover"></div>
	<!-- 登录 -->
	<div id="divlogin">
		<div id="divlll">
			<div id="divtaitle">
				<b>Login to your account</b>
			</div>
			<div id="divint">We're happy to see you return!Please log in to
				continue.</div>
			<div id="divuw">
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
				<input id="c1" type="checkbox" name="gou">Remember me on
				this computer
			</div>
		</div>
	</div>

	<!--          顶部黄条               -->
	<div id="div1">
		<div id="div10"></div>
		<div id="div11">
			<div id="div12" onclick="a('<%=path%>/main.jsp')">
				<img src="img/logo.png">
			</div>
			<div id="div13">
				<img src="img/line.png">&nbsp&nbsp<span id="span13">Everything
					you want to know..</span>
			</div>
			<div id="div14">
				<input id="te" type="text" value="">&nbsp<input id="img"
					type="image" src="img/search.png">
			</div>
			<div id="div15">
				<b> <c:choose>
						<c:when test="${!empty sessionScope.quser.id}">
				${sessionScope.quser.username}
			</c:when>
						<c:otherwise>
				登录
			</c:otherwise>
					</c:choose> </b>
			</div>
			<div id="div16">退出</div>
		</div>
	</div>

	<!--           国际啥的              -->
	<div id="div2">
				<div id=div21 class="hand1">国际</div>
		<div id="div2111" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=1')">国际</div>
		<div id=div22 class="hand1">国内</div>
		<div id="div2112" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=2')">国内</div>
		<div id=div23 class="hand1">科技</div>
		<div id="div2113" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=3')">科技</div>
		<div id=div24 class="hand1">手机</div>
		<div id="div2114" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=4')">手机</div>
		<div id=div25 class="hand1">军事</div>
		<div id="div2115" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=5')">军事</div>
		<div id=div26 class="hand1">生活</div>
		<div id="div2116" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=6')">生活</div>
		<div id=div27 class="hand1">体育</div>
		<div id="div2117" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=7')">体育</div>
		<div id=div28 class="hand1">娱乐</div>
		<div id="div2118" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=8')">娱乐</div>
		<div id=div29 class="hand1">汽车</div>
		<div id="div2119" class="hand" onclick="a('<%=path%>/newslist.do?action=newslist&sid=9')">汽车</div>
	</div>
	<div id=div3>
		<div id=div211></div>
		<div id=div221></div>
		<div id=div231></div>
		<div id=div241></div>
		<div id=div251></div>
		<div id=div261></div>
		<div id=div271></div>
		<div id=div281></div>
		<div id=div291></div>
	</div>
	<div id="content">
		<c:forEach items="${requestScope.list}" var="a" varStatus="i">
			<div id="new1">
				<div id="divtitle">
					<h1>
						<a class="a1"
							href="<%=path%>/checknews.do?id=${a.id }&action=checknews">${a.title}</a>
					</h1>
				</div>
				<div id="date">
					<div id="jx">
						<b>精选</b>
					</div>
					<font color="a0a8c0">&nbsp&nbsp<b>${a.addtime
							}&nbsp&nbsp${a.type }<b>
					</font>
				</div>
				<!-- 这里的图片width为100%，不设置高  -->
				<div id="divpicture">
					<img id="img${i.index+1}" src="${a.imgpath}">
				</div>
				<div id="divcontext">${a.newcontent }</div>
				<hr>
			</div>
		</c:forEach>
		<input type="hidden" id="maxindex" value="${requestScope.page.max}">
		<div id="page">
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
	</div>

	<div id="fly">
		<span id="spantitle"><b>焦点汇聚</b> </span>
		<hr style="height:1px;border:none;border-top:1px solid #555555;" />
		<div id="line"></div>
		<c:forEach items="${requestScope.listf }" var="a" varStatus="i">
			<div id="divti1">
				<span class="sc">${i.index+1 }</span>&nbsp<a class="a1"
					href="<%=path%>/checknews.do?id=${a.id }&action=checknews">${a.title
					}</a>
			</div>
		</c:forEach>

	</div>
		<form id="fo" method="post" action="<%=path%>/newslist.do">
			<input type="hidden" name="action" value="newslist"> 
			<input id="index" type="hidden" name="index" value="${requestScope.page.index}">
			<input type="hidden" name="sid" value="${requestScope.list[0].sid}">
		</form>
	<form id="formmm" action="" method="post"></form>
	<input type="hidden" id="path" value="<%=path%>">
	<input type="hidden" id="userid" value="${sessionScope.quser.id}">

</body>
<script src="lib/jquery-2.0.0.min.js" type="text/javascript"></script>
<script src="js/newsList.js" type="text/javascript"></script>
</html>
