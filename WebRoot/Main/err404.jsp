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
	
	<style>
	*{
		margin:0;
		padding:0;
	}
	.retu {
		display: block;
		position: absolute;
		width:130px;
		height: 48px;
		top:428px;
		left:685px;
		cursor: pointer;
	}
	.secondP {
		position: absolute;
		width: 250px;
		left: 550px;
		top:50px;
	}
	</style>
	<script type="text/javascript">
   	window.onload = function(){
   		var num = Number(document.getElementById("time").innerHTML);
   		setInterval(function(){
   			if(num > 0){
   				document.getElementById('time').innerHTML = --num;
   			}},1000);
   	};
    </script>

  </head>
  
  <body>
  <%
  	response.setHeader("refresh", "6;URL=index.jsp");
   %>
    <img alt="" src="Image/404.jpg" width="100%" height="100%">
    <p class="secondP"><span id="time">5</span>秒钟后，自动跳转到登陆界面！</p>
    <a class="retu" href="./Main/index.jsp"></a>
  </body>
</html>
