<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'HdiscussReview.jsp' starting page</title>

  </head>
  <link rel="stylesheet" type="text/css" href="css/HdiscussReview.css" />
  <body>
    <div id="divtitle">
		<b>评论审核</b>
	</div>
	<div id="tr1">
		<div id="div11" class="row1 col1"><b>序号</b></div>
		<div id="div12" class="row1 col2"><b>评论者</b></div>
		<div id="div13" class="row1 col3"><b>评论内容</b></div>
		<div id="div14" class="row1 col4"><b>评论日期</b></div>
		<div id="div15" class="row1 col5"><b>状态</b></div>
		<div id="div16" class="row1 col6"><b>操作</b></div>
	</div>
	<div id="tr2">
		<div id="div21" class="row2 col1">1</div>
		<div id="div22" class="row2 col2">李二嘎</div>
		<div id="div23" class="row2 col3">今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排</div>
		<div id="div24" class="row2 col4">2016-2-4</div>
		<div id="div25" class="row2 col5">未审核</div>
		<div id="div26" class="row2 col6"><img class="trash" id="dui" src="img/check.png" width="20px" height="20px">  <img class="trash" id="cuo" src="img/trash.png" width="20px" height="20px"></div>
	</div>
	<div id="tr2">
		<div id="div21" class="row2 col1">1</div>
		<div id="div22" class="row2 col2">李二嘎</div>
		<div id="div23" class="row2 col3">今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排</div>
		<div id="div24" class="row2 col4">2016-2-4</div>
		<div id="div25" class="row2 col5">未审核</div>
		<div id="div26" class="row2 col6"><img class="trash" src="img/check.png" width="20px" height="20px"> <img class="trash" src="img/trash.png" width="20px" height="20px"></div>
	</div>
	<div id="tr2">
		<div id="div21" class="row2 col1">1</div>
		<div id="div22" class="row2 col2">李二嘎</div>
		<div id="div23" class="row2 col3">今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排</div>
		<div id="div24" class="row2 col4">2016-2-4</div>
		<div id="div25" class="row2 col5">未审核</div>
		<div id="div26" class="row2 col6"><img class="trash" src="img/check.png" width="20px" height="20px"> <img class="trash" src="img/trash.png" width="20px" height="20px"></div>
	</div>
	<div id="tr2">
		<div id="div21" class="row2 col1">1</div>
		<div id="div22" class="row2 col2">李二嘎</div>
		<div id="div23" class="row2 col3">今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排</div>
		<div id="div24" class="row2 col4">2016-2-4</div>
		<div id="div25" class="row2 col5">未审核</div>
		<div id="div26" class="row2 col6"><img class="trash" src="img/check.png" width="20px" height="20px"> <img class="trash" src="img/trash.png" width="20px" height="20px"></div>
	</div>
	<div id="tr2">
		<div id="div21" class="row2 col1">1</div>
		<div id="div22" class="row2 col2">李二嘎</div>
		<div id="div23" class="row2 col3">今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排</div>
		<div id="div24" class="row2 col4">2016-2-4</div>
		<div id="div25" class="row2 col5">状态</div>
		<div id="div26" class="row2 col6"><img class="trash" src="img/check.png" width="20px" height="20px"> <img class="trash" src="img/trash.png" width="20px" height="20px"></div>
	</div>
	<div id="tr2">
		<div id="div21" class="row2 col1">1</div>
		<div id="div22" class="row2 col2">李二嘎</div>
		<div id="div23" class="row2 col3">今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排今天天气真好，阿彪出来双排</div>
		<div id="div24" class="row2 col4">2016-2-4</div>
		<div id="div25" class="row2 col5">状态</div>
		<div id="div26" class="row2 col6"><img class="trash" src="img/check.png" width="20px" height="20px"> <img class="trash" src="img/trash.png" width="20px" height="20px"></div>
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
<script src="js/HdiscussReview.js" type="text/javascript"></script>
</html>
