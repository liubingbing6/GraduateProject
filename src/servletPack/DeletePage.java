package servletPack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Manage;

public class DeletePage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		//response.setContentType("text/html;charset=gb2312");
		String id = request.getParameter("id");
		String ident = request.getParameter("action");
		Manage manager = new Manage();
		if(ident.equals("pet")){
			if(manager.deletePetInfo(id)){
				response.sendRedirect("./Main/admin.jsp?status=true");
			}else{
				response.sendRedirect("./Main/admin.jsp?status=false");
			}
		}else if(ident.equals("hospital")){
			
			if(manager.delHospitalInfo(id)){
				response.sendRedirect("./Main/admin.jsp?status=true");
			}else{
				response.sendRedirect("./Main/admin.jsp?status=false");
			}
		}else if(ident.equals("doctor")){
			if(manager.delDoctorInfo(id)){
				response.sendRedirect("./Main/admin.jsp?status=true");
			}else{
				response.sendRedirect("./Main/admin.jsp?status=false");
			}
		}else if(ident.equals("petOwner")){
			if(manager.delPetOwnerInfo(id)){
				response.sendRedirect("./Main/admin.jsp?status=true");
			}else{
				response.sendRedirect("./Main/admin.jsp?status=false");
			}
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req,resp);
	}
	
}
