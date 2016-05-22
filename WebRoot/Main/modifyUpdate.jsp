<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<jsp:useBean id="modUp" class="dao.DoctorDao"></jsp:useBean>
<%@ page import="entity.Doctor" %>
<%@ page import="entity.Hospital" %>
<%@ page import="entity.PetOwner" %>
<%@ page import="entity.Pet" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modifyUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
   		String hos_id = request.getParameter("hos_id");
   		String hos_name = request.getParameter("hos_name");
   		String hos_password = request.getParameter("hos_password");
   		String hos_tel = request.getParameter("hos_tel");
   		String hos_email = request.getParameter("hos_email");
   		
   		Hospital hos = new Hospital();
   		hos.setId(Integer.parseInt(hos_id));
   		hos.setName(hos_name);
   		hos.setPass(hos_password);
   		hos.setTel(hos_tel);
   		hos.setEmail(hos_email);
   		
   		//boolean def = modUp.updateHospital(hos);
   		response.sendRedirect("./admin.jsp?modStaus=1");
   		//if(def){
   			//response.sendRedirect("./admin.jsp");
   		//}else{
   			//request.getRequestDispatcher("./admin.jsp?modStaus=1").forward(request, response);
		//	response.sendRedirect("./admin.jsp?modStaus=0");   		
   		//}
   		
    %>
  </body>
</html>
