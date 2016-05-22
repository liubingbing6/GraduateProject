package servletPack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DoctorDao;
import dao.Manage;
import entity.Doctor;
import entity.Hospital;

public class modifyPage extends HttpServlet {
	boolean def;
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String ident = request.getParameter("action");
		Manage manager = new Manage();
		DoctorDao docMan = new DoctorDao();
		
		//处理修改医院列表的信息
   		String hos_id = request.getParameter("hos_Id");
   		String hos_name = request.getParameter("hos_name");
   		String hos_password = request.getParameter("hos_password");
   		String hos_tel = request.getParameter("hos_tel");
   		String hos_email = request.getParameter("hos_email");
   		
   		
   		out.print(hos_id+";"+hos_name+";"+hos_password);
   		
   		Hospital hos = new Hospital();
   		hos.setId(Integer.parseInt(hos_id));
   		hos.setName(hos_name);
   		hos.setPass(hos_password);
   		hos.setTel(hos_tel);
   		hos.setEmail(hos_email);
   		
		 try {
			def = docMan.updateHospital(hos);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//out.print(e);
		}
		// out.print(def);
	
   		
   		if(def){
   			//out.print(def);
   			//request.getRequestDispatcher("./Main/admin.jsp?modStaus=1").forward(request, response);
   			response.sendRedirect("./Main/index.jsp?status=true");
   		}else{
   			//request.getRequestDispatcher("./admin.jsp?modStaus=1").forward(request, response);
			response.sendRedirect("./Main/admin.jsp?modStaus=0");   		
   		}
		/*if(ident.equals("hospital")){
		
		}else if(ident.equals("doctor")){
			
	   		
	   		if(def){
	   			response.sendRedirect("./Main/index.jsp?status=true");
	   		}else{
				response.sendRedirect("./Main/index.jsp?modStaus=0");   		
	   		}
		}else if(ident.equals("pet")){
			
		}else if(ident.equals("petOwer")){
			
		}*/
		 //处理修改医生列表的信息
   		String doc_id = request.getParameter("doc_id");
   		String doc_name = request.getParameter("doc_name");
   		String doc_password = request.getParameter("doc_password");
   		String doc_tel = request.getParameter("doc_tel");
   		String doc_email = request.getParameter("doc_email");
   		String doc_age = request.getParameter("doc_age");
   		String doc_sex = request.getParameter("doc_sex");
   		String doc_qq = request.getParameter("doc_qq");
   		
   		out.print(doc_id+";"+doc_sex+";"+doc_name);
   		
   		Doctor docs = new Doctor();
   		docs.setId(Integer.parseInt(doc_id));
   		docs.setName(doc_name);
   		docs.setPass(doc_password);
   		docs.setAge(Integer.parseInt(doc_age));
   		docs.setSex(doc_sex);
   		docs.setTel(doc_tel);
   		docs.setEmail(doc_email);
   		docs.setQq(doc_qq);
   		
   		try {
			 def = docMan.updateDoctor(docs);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	 //
	}


	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}


}
