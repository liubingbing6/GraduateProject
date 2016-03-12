<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="util.DBHelper" %>
<%@ page import="entity.Doctor" %>
<jsp:useBean id="doctor" class="entity.Doctor"></jsp:useBean>
<jsp:setProperty property="*" name="doctor"/>
<jsp:useBean id="docDao" class="dao.DoctorDao"></jsp:useBean>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<%
	//对注册进行处理
	request.setCharacterEncoding("utf8");
	//String kind_regist = request.getParameter("kind_regist");
	//out.println(docDao.addDoctorInfo(doctor));
/*  	Doctor doc = new Doctor();
	doc.setName(request.getParameter("name"));
	doc.setPass(request.getParameter("pass"));
	doc.setSex(request.getParameter("sex"));
	doc.setAge(Integer.parseInt(request.getParameter("age")));
	doc.setTel(request.getParameter("tel"));
	doc.setEmail(request.getParameter("Email"));
	doc.setQQ(request.getParameter("QQ")); */
	 if(docDao.addDoctorInfo(doctor)){
		out.println("<h2>记录添加成功！</h2>");
		
	}else{
		out.println("<h2>记录添加失败！</h2>");
	} 
 %>
