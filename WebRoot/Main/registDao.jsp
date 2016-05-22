<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="util.DBHelper" %>
<%@ page import="entity.Doctor" %>
<jsp:useBean id="doctor" class="entity.Doctor"></jsp:useBean>
<jsp:setProperty property="*" name="doctor"/>
<jsp:useBean id="hospital" class="entity.Hospital"></jsp:useBean>
<jsp:setProperty property="*" name="hospital"/>
<jsp:useBean id="petO" class="entity.PetOwner"></jsp:useBean>
<jsp:setProperty property="*" name="petO"/>
<jsp:useBean id="fnDao" class="dao.DoctorDao"></jsp:useBean>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<%
	//对注册进行处理
	request.setCharacterEncoding("utf8");
	String kind_regist = request.getParameter("kind_regist");
	String hosName = request.getParameter("name");
	//out.println(docDao.addDoctorInfo(doctor));
	if(kind_regist.equals("doctor")){
		if(fnDao.addDoctorInfo(doctor)){
			//session.setAttribute("doctorName",doctor.getName());
			session.setAttribute("hospitalName", hosName);
			response.sendRedirect("../Doctors/docIndex.jsp");	
		}else{
			out.println("<h2>医生记录添加失败！</h2>");
			out.println(doctor.getName()+"<br/>");
			out.println(doctor.getPass()+"<br/>");
			out.println(doctor.getSex()+"<br/>");
			out.println(doctor.getAge()+"<br/>");
			out.println(doctor.getTel()+"<br/>");
			out.println(doctor.getEmail()+"<br/>");
			out.println(doctor.getQq()+"<br/>");
		} 	
	}else if(kind_regist.equals("hospital")){
			if(fnDao.addHospitalInfo(hospital)){
				//session.setAttribute("hospitalName", hospital.getName());
				session.setAttribute("hospitalName", hosName);				
				response.sendRedirect("../Hospital/hosIndex.jsp");
			}else{
				out.println("<h2>医院记录添加失败！</h2>");
				out.println(hospital.getName()+"<br/>");
				out.println(hospital.getPass()+"<br/>");
				out.println(hospital.getTel()+"<br/>");
				out.println(hospital.getEmail()+"<br/>");
			} 
	}else if(kind_regist.equals("petOwner")){
			if(fnDao.addPetOwnerInfo(petO)){
				session.setAttribute("petOwnerName",petO.getName());
				response.sendRedirect("../PetOwner/petIndex.jsp");
			}else{
				out.println("<h2>宠物主人记录添加失败！</h2>");
				out.println(petO.getName()+"<br/>");
				out.println(petO.getPass()+"<br/>");
				out.println(petO.getSex()+"<br/>");
				out.println(petO.getAge()+"<br/>");
				out.println(petO.getTel()+"<br/>");
				out.println(petO.getEmail()+"<br/>");
				out.println(petO.getQq()+"<br/>");
			} 
	}
 %>
