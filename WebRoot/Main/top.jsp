<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<link href="CSS/main.css" rel="stylesheet" type="text/css"/>
  </head>
  
  <body>
    <div class="top">
	  <div class="top_content_left">
		    <ul class="connect">
		      <li><a href="#">联系我们</a></li>
		      <li><a onclick="AddFavorite(window.location,document.title)" href="javascript:void(0)">加入收藏</a></li>
		      <li><a onclick="SetHome(window.location)" href="javascript:void(0)">设为首页</a></li>
		    </ul>
		     <div class="top_land">
			  	<ul>
			  		<li><a href="./Main/land.jsp">注册</a></li>
			  		<li><a href="./Main/land.jsp">登陆</a><span>|</span></li>
			  	</ul>
			 </div>
	  </div>
	 
	</div><!--页面顶端top结束-->
	<!-- <div>
		<img alt="" src="Image/1.jpg">
	</div> -->
  </body>
  <script type="text/javascript" src="JS/setHomeSetFav.js" charset="gb2312"></script>
</html>
