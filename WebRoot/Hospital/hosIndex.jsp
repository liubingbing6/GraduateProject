<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hosIndex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="CSS/hosIndex.css">
	<!-- <link rel="stylesheet" type="text/css" href="CSS/main.css"> -->
  </head>
  
  <body>
  	<%
  		String hosName = (String)session.getAttribute("hospitalName");
  	 %>
	<div class="top">
		<div class="m_center jiguo">
	        <div class="jiguo_logo fl">
	            <a class="img fl" href="#"><img src="Image/logo.png"/></a>
	            <span class="line fl"></span>
	            <div class="jiguo_text fl">
	                <span>医院首页</span><br/>
	                <span>HOSPITAL TOTAL</span>
	            </div>
	        </div>
	    	
	        <div class="jiguo_admin fr">
	        	欢迎你：<span><%=hosName %><span>
	        </div>
	    </div>
	</div>
	
	<div class="list m_center">
	    <div class="list_left fl">
	        	<ul class="list_ul">
	            	<li class="product">
	            		<a href="./Main/askQuestion.jsp">在线问答</a>
	                	<!-- <ul>
	                    	<li>产品列表</li>
	                        <li>待审核</li>
	                        <li>待编辑</li>
	                    </ul> -->
	                </li>
	                <li><a href="javascript:()">视频问答</a></li>
	                <li class="article">健康体检
	                	<ul>
	                    	<li>体检设备</li>
	                        <li>健康记录</li>
	                        <li>健康评估</li>
	                        <li>精准治疗</li>
	                        <li>医院推荐</li>
	                    </ul>
	                </li>
	                <li class="specialTop">健康学院
	                	<ul>
	                    	<li>疾病百科</li>
	                    	<li>运动与健康</li>
	                        <li>营养与健康</li>
	                        <li>生活与健康</li>
	                    </ul>
	                </li>
	                <li class="other">其它
	                	<ul>
	                    	<li></li>
	                        <li></li>
	                        <li></li>
	                    </ul>
	                </li>
	            </ul>
	        </div>
	        
	    <div class="list_right fl">
	        <div class="comment">
	        	<!-- <div class="comment_top">
	            	<p class="comment_words">检索</p>
	                <div class="comment_form">
	                	<form action="" method="post">
	                    	<div class="comment_input">
	                        	<label for="search_id">关键词:</label>
	                        	<input id="search_id" type="text" placeholder="请输入关键词"/>
	                        </div>
	                        <button class="comment_button fr" type="submit" value="search">查询</button>
	                    </form>
	                </div>
	            </div> -->
	            <div class="comment_under">
	            	<p class="jiezhenDoc">接诊医生&nbsp;&nbsp;<span style="color:7da263;font-size:16px">实时解答</span></p>
	            	<div class="img">
	            		<img src="Image/t1.jpg"/>
	            		<img src="Image/t2.jpg"/>
	            		<img src="Image/t3.jpg"/>
	            		<img src="Image/t5.jpg"/>
	            		<img src="Image/t6.jpg"/>
	            		<img src="Image/t7.jpg"/>
	            		<img src="Image/t8.jpg"/>
	            		<img src="Image/t9.jpg"/>
	            	</div>
	            	<hr>
	            	<p class="jiezhenDoc">合作伙伴&nbsp;&nbsp;<span style="color:7da263;font-size:16px">合作共赢，服务用户</span></p>
	               <div class="imghezuo">
	            		<img src="Image/p1.jpg"/>
	            		<img src="Image/p2.jpg"/>
	            		<img src="Image/p3.jpg"/>
	            		<img src="Image/p5.jpg"/>
	            		<img src="Image/p6.jpg"/>
	            		<img src="Image/p4.jpg"/>
	            	</div>
	           		<!-- <p style="height:1000px"></p> -->
	            </div>
	        </div>
	    </div>
	</div>
	<%-- <%@ include file="/Main/foot.jsp" %> --%>
</body>
</html>
