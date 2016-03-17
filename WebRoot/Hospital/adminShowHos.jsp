<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="entity.Doctor" %>
<jsp:useBean id="manager" class="dao.Manage"></jsp:useBean>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../CSS/admin.css">
  </head>
  
  <body>
	<div class="right" id="adminManage">
   		<div id="hosManage">hospital</div><!-- 展示医院表信息 -->
   		<div id="docManage" style="display:block">
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
   		<div id="petManage">pet</div><!-- 展示宠物表信息 -->
   		<div id="petOwnerManage">petOwner</div><!-- 展示宠物主人表信息 -->
   	</div>
  </body>
</html>
