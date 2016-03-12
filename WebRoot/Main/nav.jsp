<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <body>   
	<div class="wrap">
	  <div  class="logo">
	    <div class="logo_left"><a href="./Main/index.jsp"><img src="Image/logo.png" /></a></div>
	    <div class="logo_right"><img src="Image/tel.jpg" width="28" height="28" />24小时服务热线：<span class="tel">123-456-7890</span></div>
	  </div>
	  <!--logo结束-->
	  
	  <div class="nav">
	    <div  class="nav_left"></div>
	    <div class="nav_mid">
	      <div class="nav_mid_left">
	        <ul id="firstPage">
	          <li><a href="./Main/index.jsp">首页</a></li>
	          <li><a href="./Main/aboutWeb.jsp">关于网站</a></li>
	          <li><a href="./Main/petNews.jsp">宠物新闻</a></li>
	          <li><a href="javascript:()">医院动态</a></li>
	          <li><a href="./Main/askQuestion.jsp">在线问答</a></li>
	          <li><a href="javascript:()">医院加盟</a></li>
	        </ul>
	      </div>
	      <!--nav_mid_left结束-->
	      <div class="nav_mid_right">
	        <form action="" method="post">
	          <input type="text" class="search_text" />
	          <input type="button" class="search_btn"/>
	          <!--<input type="text" class="search_text" x-webkit-speech />-->
	        </form>
	      </div>
	      <!--nav_mid_right结束--> 
	    </div>
	    <!--导航主体nav_mid结束-->
	    <div class="nav_right"></div>
	  </div>
	  <!--nav结束-->
	</div>
	<!--最外层wrap结束  -->
  </body>
</html>
