<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="CSS/admin.css">

  </head>
  
  <body>
    <div class="top">
    	<img alt="" src="Image/admin_bg.jpg" width="100%" height="160px">
    	<h1>宠物管理系统</h1>
    </div>
    <div class="middle">
    	<div class="left">
    		<ul id="admin_ul">
    			<li>
    				<h3>医院信息管理</h3>
    				<ul>
    					<li><a href="javascript:()">浏览医院信息</a></li>
    					<li><a href="javascript:()">修改医院信息</a></li>
    					<li><a href="javascript:()">删除医院信息</a></li>
    					<li><a href="javascript:()">增加医院信息</a></li>
    				</ul>
    			</li>
    			<li>
    				<h3>医生信息管理</h3>
    				<ul>
    					<li><a href="javascript:()">浏览医生信息</a></li>
    					<li><a href="javascript:()">修改医生信息</a></li>
    					<li><a href="javascript:()">删除医生信息</a></li>
    					<li><a href="javascript:()">增加医生信息</a></li>
    				</ul>
    			</li>
    			<li>
    				<h3>宠物信息管理</h3>
    				<ul>
    					<li><a href="javascript:()">浏览宠物信息</a></li>
    					<li><a href="javascript:()">修改宠物信息</a></li>
    					<li><a href="javascript:()">删除宠物信息</a></li>
    					<li><a href="javascript:()">增加宠物信息</a></li>
    				</ul>
    			</li>
    			<li>
    				<h3>宠物主人信息管理</h3>
    				<ul>
    					<li><a href="javascript:()">浏览主人信息</a></li>
    					<li><a href="javascript:()">修改主人信息</a></li>
    					<li><a href="javascript:()">删除主人信息</a></li>
    					<li><a href="javascript:()">增加主人信息</a></li>
    				</ul>
    			</li>
    		</ul>
    	</div>
    	<div class="right">
    		<h1>以表格形式展示信息</h1>
    	</div>
    </div>
  </body>
  <script type="text/javascript" src="JS/admin.js"></script>
</html>
