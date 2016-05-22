<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="entity.Doctor" %>
<%@ page import="entity.Hospital" %>
<%@ page import="entity.PetOwner" %>
<%@ page import="entity.Pet" %>
<jsp:useBean id="manager" class="dao.Manage"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
    	String b = request.getParameter("status");
    	String modStatus = request.getParameter("modStaus");
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
    	<input type="text" id="b" value=<%=b %> disabled style="visibility:hidden;">
    	<input type="text" id="modStatus" value=<%=modStatus %> disabled style="visibility:hidden;">
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
    			</li>
    			<li>
    				<h3>宠物信息管理</h3>
    			</li>
    			<li>
    				<h3>宠物主人信息管理</h3>
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
    						<th>注册编号</th>
    						<th>医院名称</th>
    						<th>登陆密码</th>
    						<th>医院电话</th>
    						<th>医院邮箱</th>
    						<th colspan="2">操作</th>
    					</tr>
    				</thead>
    				<tbody>
 					 <%
	    				ArrayList<Hospital> list = manager.getAllHospital();
	    				Hospital hos = new Hospital();
	    				for(int i=0;i<list.size();i++){
	    					hos = (Hospital)list.get(i);
	    			 %>
	    			 <tr>
	    			 	<td><%=hos.getId() %></td>
	    			 	<td><%=hos.getName() %></td>
	    			 	<td><%=hos.getPass() %></td>	
	    			 	<td><%=hos.getTel() %></td>
	    			 	<td><%=hos.getEmail() %></td>
	    			 	<td><a href="Main/modify.jsp?action=hospital&id=<%=hos.getId()%>">修改</a></td>
    			 		<td><a href="deletePage?action=hospital&id=<%=hos.getId()%>" onclick="confirmDelete()">删除</a></td>
	    			 </tr>
	    			 <%
	    			 	}
	    			  %>
    				</tbody>
    			</table>
    		</div><!-- 展示医院表信息 -->
    		<div id="docManage">
    			<table>
    				<caption>医生信息展示</caption>
    				<thead>
    					<tr>
    						<th>注册编号</th>
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
	    				ArrayList<Doctor> list1 = manager.getAllDoctor();
	    				Doctor doc = new Doctor();
	    				for(int i=0;i<list1.size();i++){
	    					doc = (Doctor)list1.get(i);
	    			 %>
	    			 <tr>
	    			 	<td><%=doc.getId() %></td>
	    			 	<td><%=doc.getName() %></td>
	    			 	<td><%=doc.getPass() %></td>
	    			 	<td><%=doc.getSex() %></td>
	    			 	<td><%=doc.getAge() %></td>
	    			 	<td><%=doc.getTel() %></td>
	    			 	<td><%=doc.getEmail() %></td>
	    			 	<td><%=doc.getQq() %></td>
	    			 	<td><a href="Main/modify.jsp?action=doctor&id=<%=doc.getId()%>">修改</a></td>
    			 		<td><a href="deletePage?action=doctor&id=<%=doc.getId()%>" onclick="confirmDelete()">删除</a></td>
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
    						<th>注册编号</th>
    						<th>宠物名字</th>
    						<th>宠物性别</th>
    						<th>宠物年龄</th>
    						<th>宠物种类</th>
    						<th>宠物病史</th>
    						<th colspan="2">操作</th>
    					</tr>
    				</thead>
    				<tbody>
 					 <%
	    				ArrayList<Pet> list2 = manager.getAllPetInfo();
	    				Pet pet = new Pet();
	    				for(int i=0;i<list2.size();i++){
	    					pet = (Pet)list2.get(i);
	    			 %>
	    			 <tr>
	    			 	<td><%=pet.getId() %></td>
	    			 	<td><%=pet.getPetName() %></td>
	    			 	<td><%=pet.getPetSex() %></td>
	    			 	<td><%=pet.getPetAge() %></td>
	    			 	<td><%=pet.getPetSort() %></td>
	    			 	<td><%=pet.getPetIllHostory() %></td>
	    			 	<td><a href="modifyPage?action=pet&id=<%=pet.getId()%>">修改</a></td>
    			 		<td><a href="deletePage?action=pet&id=<%=pet.getId()%>" onclick="confirmDelete()">删除</a></td>
	    			 </tr>
	    			 <%
	    			 	}
	    			  %>
    				</tbody>
	    			
    			</table>
    		</div><!-- 展示宠物表信息 -->
    		<div id="petOwnerManage">
    			<table>
    			<caption>宠物主人信息展示</caption>
    				<thead>
    					<tr>
    						<th>注册编号</th>
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
    				<tbody>
 					 <%
	    				ArrayList<PetOwner> list3 = manager.getAllPetowner();
	    				PetOwner petO = new PetOwner();
	    				for(int i=0;i<list3.size();i++){
	    					petO = (PetOwner)list3.get(i);
	    			 %>
	    			 <tr>
	    			 	<td><%=petO.getId() %></td>
	    			 	<td><%=petO.getName() %></td>
	    			 	<td><%=petO.getPass() %></td>
	    			 	<td><%=petO.getSex() %></td>
	    			 	<td><%=petO.getAge() %></td>
	    			 	<td><%=petO.getTel() %></td>
	    			 	<td><%=petO.getEmail() %></td>
	    			 	<td><%=petO.getQq() %></td>
	    			 	<td><a href="modifyPage?action=petOwner&id=<%=petO.getId()%>">修改</a></td>
    			 		<td><a href="deletePage?action=petOwner&id=<%=petO.getId()%>" onclick="confirmDelete()">删除</a></td>
	    			 </tr>
	    			 <%
	    			 	}
	    			  %>
    				</tbody>
    			</table>
    		</div><!-- 展示宠物主人表信息 -->
    	</div>
    </div>
  </body>
  <script type="text/javascript">
   	var b = document.getElementById("b");
   	var modStatus = document.getElementById("modStatus");
	 if(b.value && b.value == true){
 		alert("删除成功！");
  	 }else if(b.value && b.value == false){
  	 	alert("删除失败！");
  	 }
  	if(modStatus && modStatus == 1){
		alert("修改成功！");  	
  	}else if(modStatus && modStatus == '0'){
		alert("修改失败！");  	
  	}
  </script>
  <script type="text/javascript" src="JS/admin.js" charset="gb2312"></script>
</html>
