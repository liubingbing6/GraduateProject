<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'docIndex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="CSS/hosIndex.css">
	

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
	                <span>医生首页</span><br/>
	                <span>DOCTOR TOTAL</span>
	            </div>
	        </div>
	    	
	        <div class="jiguo_admin fr">
	        	欢迎你：<span><%=hosName %><span>
	        </div>
	    </div>
	</div>
	
    <div class="docImg" id="docImg">
    	<img alt="" src="Image/t1.jpg" width="176px" height="200px"/>
    	<p>科室：内科</p>
    	<p>擅长：。。。</p>
    </div>
    
     <div class="list_left fl">
        	<ul class="list_ul">
            	<li class="product">
                	<ul>
                    	<li>慢病管理</li>
                    </ul>
                </li>
                <li class="article">
                	<ul>
                    	<li>肿瘤</li>
                        
                    </ul>
                </li>
                <li class="specialTop">
                	<ul>
                    	<li>保健专题</li>
                       
                    </ul>
                </li>
                <li class="other">
                	<ul>
                    	<li>急救常识</li>
                        
                    </ul>
                </li>
            </ul>
        </div>
    
    <div class="list_right fl" style="width:76%">
        <div class="comment">
        	<div class="comment_top">
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
            </div>
            <div class="comment_under">
            	<p class="com_under_words" style="padding:0">用户提问</p>
              	<table id="tab">
              		<thead>
              			<tr>
	              			<th>病种</th>
	              			<th>标题</th>
	              			<th>回复</th>
	              			<th>更新时间</th>
	              		</tr>
              		</thead>
              		<tbody>
              			<tr>
              				<td>皮肤硬块</td>
              				<td>小狗额头有硬块 </td>
              				<td>0 </td>
              				<td>2天前</td>
              			</tr>
           
              		</tbody>
              	</table>
                <div class="page">
                	<ul class="page_ul">
                    	<li><a href="javascript:;" >首页</a></li>
                        <li><a href="javascript:;">&lt;</a></li>
                        <li><a href="javascript:;" style="color:#fc6b6b">1</a></li>
                        <li><a href="javascript:;">2</a></li>
                        <li><a href="javascript:;">3</a></li>
                        <li><a href="javascript:;">4</a></li>
                        <li><a href="javascript:;">5</a></li>
                        <li><a href="javascript:;">6</a></li>
                        <li><a href="javascript:;">7</a></li>
                        <li><a href="javascript:;">8</a></li>
                        <li><a href="javascript:;">9</a></li>
                        <li><a href="javascript:;">10</a></li>
                        <li><a href="javascript:;">&gt;</a></li>
                        <li><a href="javascript:;">尾页</a></li>
                    </ul>
                    <div style="height:100px"></div>
                </div>
                
            </div>
        </div>
    </div>
    
    <script>
    var arrBingz = ["猫科泌尿系统综合征  ","尿道炎 ","牙周病","线虫 ","皮肤硬块","未知"];
    var arrBiaot = ["撒尿困难","尿液有异物","牙龈肿","粪便有虫","身体出现硬块","吃饭困难"];
    var arrHuif = [1,0,2,0,1,4];
    var arrShij = ["2天前","1天前","5天前","1天前","6天前","4天前"];
    var id = 0;
    var oTbody = document.getElementsByTagName("tbody")[0];
    for(var i=0;i<arrBingz.length;i++){
    	var oTr=document.createElement('tr');
		var oTd=document.createElement('td');
		oTd.innerHTML=arrBingz[id];
		oTr.appendChild(oTd);
		
		var oTd=document.createElement('td');
		oTd.innerHTML=arrBiaot[id];
		oTr.appendChild(oTd);
		
		var oTd=document.createElement('td');
		oTd.innerHTML=arrHuif[id];
		oTr.appendChild(oTd);
		//删除添加
		var oTd=document.createElement('td');
		oTd.innerHTML=arrShij[id];
		oTr.appendChild(oTd);

		oTbody.appendChild(oTr);
		id++;
    }
    
    </script>
  </body>
</html>
