<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="utf-8"%>
<jsp:useBean id="users" class="entity.User"></jsp:useBean>
<jsp:setProperty property="*" name="users"/>
<jsp:useBean id="useDao" class="dao.userDao"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	//对登陆进行处理
	request.setCharacterEncoding("utf8");
	String name = new String(users.getUserName().getBytes("ISO-8859-1"),"UTF-8");
	String kind = request.getParameter("kind");
	if(name!=""||name!=null){
		if(useDao.login(users)){
			 if(kind.equals("admin")){
				response.sendRedirect("admin.jsp");	
			}else if(kind.equals("hospital")){
				response.sendRedirect("../Hospital/hosIndex.jsp");	
			}else if(kind.equals("doctor")){
				response.sendRedirect("../Doctors/docIndex.jsp");
			}else if(kind.equals("petOwner")){
				response.sendRedirect("../PetOwner/petInex.jsp");
			}	
		}else{
			//out.println("对不起，您还没有注册！请先注册！");
			response.sendRedirect("err404.jsp");
		}
	}
%>

