<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="entity.Doctor" %>
<jsp:useBean id="manager" class="dao.Manage"></jsp:useBean>
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
    <div class="middle" id="middle">
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
    	<%--  <%@ include file="../Hospital/adminShowHos.jsp" %> --%>
    	<div class="right" id="adminManage">
    		<h1 style="text-align:left">管理员你好：关于登陆宠物网站系统！<br/>您可以根据左边的提示进行操作！</h1>
    		<div id="hosManage">
    			<table>
    			<caption>医院信息展示</caption>
    				<thead>
    					<tr>
    						<th>医院名称</th>
    						<th>登陆密码</th>
    						<th>医院电话</th>
    						<th>医院邮箱</th>
    						<th colspan="2">操作</th>
    					</tr>
    				</thead>
    			</table>
    		</div><!-- 展示医院表信息 -->
    		<div id="docManage">
    			<table>
    				<caption>医生信息展示</caption>
    				<thead>
    					<tr>
    						<th>姓名</th>
    						<th>密码</th>
    						<th>性别</th>
    						<th>年龄</th>
    						<th>电话</th>
    						<th>电子邮件</th>
    						<th>QQ</th>
    						<th colspan="2">操作</th>
    					</tr>
    				</thead>
    				<tbody>
 					 <%
	    				ArrayList<Doctor> list = manager.getAllDoctor();
	    				Doctor doc = new Doctor();
	    				for(int i=0;i<list.size();i++){
	    					doc = (Doctor)list.get(i);
	    			 %>
	    			 <tr>
	    			 	<td><%=doc.getName() %></td>
	    			 	<td><%=doc.getPass() %></td>
	    			 	<td><%=doc.getSex() %></td>
	    			 	<td><%=doc.getAge() %></td>
	    			 	<td><%=doc.getTel() %></td>
	    			 	<td><%=doc.getEmail() %></td>
	    			 	<td><%=doc.getQq() %></td>
	    			 	<td><a href="javascript:()">修改</a></td>
    			 		<td><a href="javascript:()">删除</a></td>
	    			 </tr>
	    			 <%
	    			 	}
	    			  %>
    				</tbody>
    			</table>
    		
    		</div><!-- 展示医生表信息 -->
    		<div id="petManage">
    			<table>
    			<caption>宠物信息展示</caption>
    				<thead>
    					<tr>
    						<th>宠物名字</th>
    						<th>宠物性别</th>
    						<th>宠物年龄</th>
    						<th>宠物种类</th>
    						<th>宠物病史</th>
    						<th colspan="2">操作</th>
    					</tr>
    				</thead>
    			</table>
    		</div><!-- 展示宠物表信息 -->
    		<div id="petOwnerManage">
    			<table>
    			<caption>宠物主人信息展示</caption>
    				<thead>
    					<tr>
    						<th>姓名</th>
    						<th>密码</th>
    						<th>性别</th>
    						<th>年龄</th>
    						<th>电话</th>
    						<th>电子邮箱</th>
    						<th>QQ</th>
    						<th colspan="2">操作</th>
    					</tr>
    				</thead>
    			</table>
    		</div><!-- 展示宠物主人表信息 -->
    	</div>
    </div>
  </body>
  <script type="text/javascript" src="JS/admin.js"></script>
</html>
