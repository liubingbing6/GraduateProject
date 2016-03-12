<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="CSS/land.css">
	

  </head>
  
  <body>
  	<div class="land_logo">
  		<!-- <img alt="登陆logo" src="Image/land_logo.png" height=60px width=134px> -->
  		<a href="./Main/index.jsp" style="display:block;width:134px;height:70px;cursor:pointer"></a>
  	</div>
    <div class="land_bg">
    	<div class="land_bg_main">
    		<div class="land_table">
    			<div class="land_table_top">
    				<span class="land_first_span" id="land"><a href="javascript:()" >登陆</a></span>
    				<span id="regist"><a href="javascript:()" >注册</a></span>
    			</div>
    			<div class="land_form" id="land_form">
    				<form action="./Main/entityDao.jsp" method="post">
    				<label for="userName">姓&nbsp;&nbsp;名：</label>
    					<input class="userName" id="userName" type="text" placeholder="用户名" name="userName"/>
    				<label for="password">密&nbsp;&nbsp;码：</label>
    					<input class="password" id="password" type="password" placeholder="密码" name="password"/>
    					<label>身&nbsp;&nbsp;份：</label>
    					<select name="kind">
    						<option value="hospital">医院</option>
    						<option value="doctor">医生</option>
    						<option value="petOwner">宠物主人</option>
    						<option value="admin">管理员</option>
    					</select>
    					<div class="land_checkbox">
    						<input type="checkbox" style="display:inline-block" /><span>下次自动登陆</span>
    						<a class="return" href="./Main/index.jsp">返回</a>
    					</div>
    					<input class="submit" type="submit" value="登陆" />
    					<input class="reset" type="reset" value="取消" />
    				</form>
    				<div class="land_other">
    					<p>------------使用其他账号登陆------------</p>
    					<a href="javascript:()"><img src="Image/qq.png" width=30px height=30px/></a>
    					<a href="javascript:()"><img src="Image/weibo.png" width=30px height=30px/></a>
    				</div>
    			</div><!-- land_form结束 -->
    			
    			<div class="regist_form" id="regist_form" style="display:none">
    				<form action="./Main/registDao.jsp" method="post" id="registForm">
    					<label>身&nbsp;&nbsp;份：</label>
    					<select id="identity" name="kind_regist">
    						<option value="hospital">医院</option>
    						<option value="doctor" selected="selected">医生</option>
    						<option value="petOwner">宠物主人</option>
    					</select>
    					<div id="userNameDiv">
    						<label for="userName">用户名:&nbsp;</label>
    						<input class="form_common" id="userName" type="text" placeholder="用户名" name="name"/>					
    					</div>
    					<div id="passwordDiv">
    						<label for="password">密&nbsp;&nbsp;码：</label>
    						<input class="form_common" id="password" type="password" placeholder="登陆密码" name="pass"/>    						
    					</div>
    					<div id="sexDiv">
    						<label>性&nbsp;&nbsp;别：</label>
	    					<input type="radio" name="sex" value="male" checked="checked"/>男&nbsp;&nbsp;&nbsp;&nbsp;
	    					<input type="radio" name="sex" value="female" />女<br/>
    					</div>
    					<div id="ageDiv">
	    					<label for="age">年&nbsp;&nbsp;龄：</label>
	    					<input class="form_common" id="age" type="text" name="age"/>
    					</div>
    					<div id="telDiv">
    						<label for="tel">电&nbsp;&nbsp;话：</label>
    						<input class="form_common" id="tel" type="text" name="tel"/>
    					</div>
    					<div id="emailDiv">
    						<label for="Email">邮&nbsp;&nbsp;箱：</label>
    						<input class="form_common" id="Email" type="text" name="Email"/>
    					</div>
    					<div id="qqDiv">
   							<label for="qq">Q&nbsp;&nbsp;&nbsp;Q：</label>
    						<input class="form_common" id="qq" type="text" name="QQ"/>
    					</div>
    					<div id="fileDiv" style="display:none">
   							<label for="file">上传文件：</label>
    						<input id="file" type="file" name="file" style="width:60%;overflow:hidden"/>
    					</div>
    					<input class="regist_submit" type="submit" value="立即注册"/>
    				</form>
    			</div><!-- regist_form结束 -->
    		</div>
    	</div><!-- land_bg_main结束 -->
    </div>
  </body>
  <script type="text/javascript"src="JS/jquery-1.9.1.js"></script>
  <script type="text/javascript" src="JS/land.js" charset="gb2312"></script>
</html>
