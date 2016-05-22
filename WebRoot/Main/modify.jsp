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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modify.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="CSS/modify.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
 	<%
	  	String stau = request.getParameter("action");
	  	String getId = request.getParameter("id");
	  	String st = "";
	  	if(stau.equals("pet")){
			st = "宠物列表--";
		}else if(stau.equals("hospital")){
			st = "医院列表--";
		}else if(stau.equals("doctor")){
			st = "医生列表--";
		}else if(stau.equals("petOwner")){
			st = "宠物主人列表--";
		}
	 %>
    <h2 style="text-align:center"><%=st %>要修改的课程信息如下：</h2>
    <!-- 判断是哪一张表 -->
    <input type="text" id="stau" value=<%=stau %> disabled style="visibility:hidden;">
    <hr>
    <div class="modify hospital" id="hospital">
    	<form action="modifyPage" method="post">
    		<table>
    			<tbody>
    			 <%
    				ArrayList<Hospital> list = manager.getSingleHospital(getId);
    				Hospital hos = new Hospital();
    				for(int i=0;i<list.size();i++){
    					hos = (Hospital)list.get(i);
    			 %>
    				<tr>
    					<td>注册编号：</td>
    					<td><input type="text" name="hos_Id" value=<%=hos.getId() %> ></td>
    				</tr>
    				<tr>
    					<td>医院名称：</td>
    					<td><input type="text" name="hos_name" value=<%=hos.getName() %>></td>
    				</tr>
    				<tr>
    					<td>登陆密码：</td>
    					<td><input type="text" name="hos_password" value=<%=hos.getPass() %>></td>
    				</tr>
    				<tr>
    					<td>医院电话：</td>
    					<td><input type="text" name="hos_tel" value=<%=hos.getTel() %>></td>
    				</tr>
    				<tr>
    					<td>医院邮箱：</td>
    					<td><input type="text" name="hos_email" value=<%=hos.getEmail() %>></td>
    				</tr>
    				
    			<%
    				}
    			 %>
    				<tr style="color:red;text-align:center" >
    					<td colspan='2'>注册编号不能修改！</td>
    				</tr>
    				<tr>
    					<td><input type="submit" value="提交"></td>
    					<td><input type="reset" value="取消"></td>
    				</tr>
    			</tbody>
    		</table>
    	</form>
    </div>
    
    <div class="modify doctor" id="doctor">
    	<form action="modifyPage" method="post">
    		<table>
    			<tbody>
    			<%
    				ArrayList<Doctor> listDoc = manager.getSingleDoctor(getId);
    				Doctor doc = new Doctor();
    				for(int i=0;i<listDoc.size();i++){
    					doc = (Doctor)listDoc.get(i);
    			 %>
    				<tr>
    					<td>注册编号：</td>
    					<td><input type="text" name="doc_id" value=<%=doc.getId() %> ></td>
    				</tr>
    				<tr>
    					<td>姓名：</td>
    					<td><input type="text" name="doc_name" value=<%=doc.getName() %> ></td>
    				</tr>
    				<tr>
    					<td>密码：</td>
    					<td><input type="text" name="doc_password" value=<%=doc.getPass() %> ></td>
    				</tr>
    				<tr>
    					<td>性别：</td>
    					<td><input type="text" name="doc_sex" value=<%=doc.getSex() %> ></td>
    				</tr>
    				<tr>
    					<td>年龄：</td>
    					<td><input type="text" name="doc_age" value=<%=doc.getAge() %> ></td>
    				</tr>
    				<tr>
    					<td>电话：</td>
    					<td><input type="text" name="doc_tel" value=<%=doc.getTel() %> ></td>
    				</tr>
    				<tr>
    					<td>电子邮件：</td>
    					<td><input type="text" name="doc_email" value=<%=doc.getEmail() %> ></td>
    				</tr>
    				<tr>
    					<td>QQ：</td>
    					<td><input type="text" name="doc_qq" value=<%=doc.getQq() %> ></td>
    				</tr>
    				<%
    					}
    				 %>
    				<tr style="color:red;text-align:center" >
    					<td colspan='2'>注册编号不能修改！</td>
    				</tr>
    				<tr>
    					<td><input type="submit" value="提交"></td>
    					<td><input type="reset" value="取消"></td>
    				</tr>
    			</tbody>
    		</table>
    	</form>
    </div>
    
   <%--  <div class="modify petOwner">
    	<form action="-modifyPage" method="post">
    		<table>
    			<tbody>
    			<%
    				ArrayList<PetOwner> listPo = manager.getSinglePetowner(getId);
    				PetOwner po = new PetOwner();
    				for(int i=0;i<listPo.size();i++){
    					po = (PetOwner)listPo.get(i);
    			 %>
    				<tr>
    					<td>注册编号：</td>
    					<td><input disabled type="text" name="po_id" value=<%=po.getId() %> ></td>
    				</tr>
    				<tr>
    					<td>姓名：</td>
    					<td><input type="text" name="po_name" value=<%=po.getName() %> ></td>
    				</tr>
    				<tr>
    					<td>密码：</td>
    					<td><input type="text" name="po_password" value=<%=po.getPass() %> ></td>
    				</tr>
    				<tr>
    					<td>性别：</td>
    					<td><input type="text" name="po_sex" value=<%=po.getSex() %> ></td>
    				</tr>
    				<tr>
    					<td>年龄：</td>
    					<td><input type="text" name="po_age" value=<%=po.getAge() %> ></td>
    				</tr>
    				<tr>
    					<td>电话：</td>
    					<td><input type="text" name="po_tel" value=<%=po.getTel() %> ></td>
    				</tr>
    				<tr>
    					<td>电子邮件：</td>
    					<td><input type="text" name="po_email" value=<%=po.getEmail() %> ></td>
    				</tr>
    				<tr>
    					<td>QQ：</td>
    					<td><input type="text" name="po_qq" value=<%=po.getQq() %> ></td>
    				</tr>
    				<%
    					}
    				 %>
    				<tr style="color:red;text-align:center" >
    					<td colspan='2'>注册编号不能修改！</td>
    				</tr>
    				<tr>
    					<td><input type="submit" value="提交"></td>
    					<td><input type="reset" value="取消"></td>
    				</tr>
    			</tbody>
    		</table>
    	</form>
    </div> --%>
    <script type="text/javascript">
    var stau = document.getElementById("stau").value;
    var hos = document.getElementById("hospital");
    var doc = document.getElementById("doctor");
    if(stau == 'hospital'){
    	hos.style.display = 'block';
    }else{
    	hos.style.display = 'none';
    }
  	if(stau == 'doctor'){
    	doc.style.display = 'block';
    }else{
    	doc.style.display = 'none';
    }
  	
    //alert(stau.value);
    </script>
  </body>
</html>
