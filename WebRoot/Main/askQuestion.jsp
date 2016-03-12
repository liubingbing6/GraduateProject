<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'askQuestion.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="CSS/askQuestion.css">

  </head>
  
  <body>
    <div class="askQues">
    	<form action="">
    		<div class="askQues_sub">
    			<input type="reset" value="取消" style="float:left" />
    			<span>在线提问</span>
    			<input type="submit" value="提交" style="float:right"/>
    		</div>
    		
    		<div class="askQues_des">
    			<p><input type="text" placeholder="一句话描述问题"/></p>
    			<div style="width:100%;height:1px;background:#e8e8e8"></div>
    			<textarea rows="15" cols="51" placeholder="详细描述宠物状况，以便快速获得解答..."></textarea>
    		</div>
    		
    		<div class="askQues_kind">
    			<label>品种：</label>
    			<input class="askKind" type="text" placeholder="请输入宠物品种" />
    			<span>性别：</span>
    			<input type="radio" name="sex"/>公&nbsp;&nbsp;&nbsp;&nbsp;
    			<input type="radio" name="sex"/>母&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<span>年龄：</span>
    			<select>
    				<option>1</option>
    				<option>2</option>
    				<option>3</option>
    				<option>4</option>
    			</select>
    		</div>
    	</form>
    </div>
  </body>
</html>
