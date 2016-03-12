<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="CSS/main.css" rel="stylesheet" type="text/css"/>
	<link href="CSS/mF_fancy.css" rel="stylesheet" type="text/css"/>
  </head>
  
  <body>
    <%@ include file="top.jsp" %>
    <%@ include file="nav.jsp" %>
    <div class="wrap">
     <div class="ad">
	    <div id="boxID"><!--焦点图盒子-->
	      <div class="loading"><img src="Image/loading.gif" alt="请稍候..." /></div>
	      <!--载入画面(可删除)-->
	      <div class="pic"><!--内容列表(li数目可随意增减)-->
	        <ul>
	          <li><a href="#"><img src="Image/1.jpg" alt="" /></a></li>
	          <li><a href="#"><img src="Image/2.jpg" alt="" /></a></li>
	          <li><a href="#"><img src="Image/3.jpg" alt="" /></a></li>
	        </ul>
	      </div>
	    </div>
	  </div>
	  <!--ad结束-->
	  <div class="main">
	  	<div class="news">
		      <div class="title">
		        <h2 class="titile_left">加盟医院</h2>
		        <span class="title_right"><a href="javascript:()">More&gt;&gt;</a></span>
		      </div>
		      <!--title结束-->
		      
		      <div class="pic_news"> <img src="Image/hs_logo.png" alt="加盟医院" width="117px" height="78px" />
		        <p>大德广施</p>
		        <p>善行天下</p>
		      </div>
		      <!--pic_news结束-->
		      
		      <div class="news_list">
		        <ul>
		          <li><span>2014-06-01</span> <a href="news.html">贝特宠物医院</a></li>
		          <li><span>2014-06-01</span><a href="news.html">瑞鹏宠物医院</a></li>
		          <li><span>2014-05-30</span><a href="news.html">重庆名望宠物医院</a></li>
		          <li><span>2014-05-28</span><a href="news.html" title="aa">派特宠物医院</a></li>
		        </ul>
		      </div>
		      <!--news_list结束--> 
   		 </div> <!--news结束-->
   		 <div class="tabCard" >
   		 	<p class="li_blank"></p>
   		 	<ul id="tabCard">
   		 		<li class="active" style="background-color:yellow">内科外科疾病
   		 			<div class="successSick" style="display:block">
	 					<ul class="sick_left">
	 						<li><a href="javascript:()">狗的高血脂症</a></li>
	 						<li><a href="javascript:()">宠物心血管系统检查</a></li>
	 						<li><a href="javascript:()">狗狗出血性疾病介绍</a></li>
	 						<li><a href="javascript:()">狗狗得脑炎了怎么办？</a></li>
	 						<li><a href="javascript:()">狗狗得了疝气怎么办？</a></li>
	 						<li><a href="javascript:()">关于狗的感冒</a></li>
	 					</ul>
   		 				
   		 				<ul class="sick_left sick_right">
   		 					<li><a href="javascript:()">猫猫骨折应急大全</a></li>
	 						<li><a href="javascript:()">猫咪常见的骨折疾病</a></li>
	 						<li><a href="javascript:()">关于猫咪骨折的介绍</a></li>
	 						<li><a href="javascript:()">猫咪骨折的症状及治疗方法</a></li>
	 						<li><a href="javascript:()">狗狗骨折正黄与及急救措施</a></li>
	 						<li><a href="javascript:()">狗骨折诊断与治疗</a></li>
   		 				</ul>
   		 			</div>
   		 		</li>
   		 		<li>宠物传染病
   		 			<div class="successSick">
   		 				<ul class="sick_left">
	 						<li><a href="javascript:()">引起宠物呼吸急促的原因</a></li>
	 						<li><a href="javascript:()">如何看护病犬</a></li>
	 						<li><a href="javascript:()">狗狗细小病毒的症状及治疗方法</a></li>
	 						<li><a href="javascript:()">狗狗吐白色粘液怎么办</a></li>
	 						<li><a href="javascript:()">狗狗感冒怎么办？有哪些原因引起</a></li>
	 						<li><a href="javascript:()">刚买来的狗狗就得犬瘟细小是怎么回事儿</a></li>
	 					</ul>
   		 				
   		 				<ul class="sick_left sick_right">
   		 					<li><a href="javascript:()">狗狗为什么呕吐</a></li>
	 						<li><a href="javascript:()">猫咪拉稀的原因</a></li>
	 						<li><a href="javascript:()">狗狗不吃饭没精神是什么原因引起的</a></li>
	 						<li><a href="javascript:()">传染病高发期，别忘了给爱宠体验</a></li>
	 						<li><a href="javascript:()">冬季是传染病高发期，狗狗传染病早预防</a></li>
   		 				</ul>
   		 			</div>
   		 		</li>
   		 		<li>人畜共患疾病
   		 			<div class="successSick">
   		 				<ul class="sick_left">
	 						<li><a href="javascript:()">人畜共患病是什么？</a></li>
	 						<li><a href="javascript:()">正确认识"人畜共患病"</a></li>
	 						<li><a href="javascript:()">人畜共患病-支原体介绍</a></li>
	 						<li><a href="javascript:()">人畜共患病-衣原体介绍</a></li>
	 						<li><a href="javascript:()">人畜共患病基本介绍</a></li>
	 						<li><a href="javascript:()">弓形虫病的症状与防治</a></li>
	 					</ul>
   		 				
   		 				<ul class="sick_left sick_right">
   		 					<li><a href="javascript:()">全面解读弓形虫</a></li>
	 						<li><a href="javascript:()">人畜共患病-食管丝虫</a></li>
	 						<li><a href="javascript:()">寄生虫-犬恶丝虫</a></li>
	 						<li><a href="javascript:()">人畜共患病-钩虫病</a></li>
	 						<li><a href="javascript:()">人畜共患病-犬蛔虫病</a></li>
   		 				</ul>
   		 			</div>
   		 		</li>
   		 		<li>宠物绝育
   		 			<div class="successSick">
   		 				<ul class="sick_left">
	 						<li><a href="javascript:()">给宠物绝育有什么好处</a></li>
	 						<li><a href="javascript:()">狗狗绝育</a></li>
	 						<li><a href="javascript:()">养狗必看！狗狗绝育的那些事儿</a></li>
	 						<li><a href="javascript:()">又逢交配季 请看如何科学给猫咪绝育</a></li>
	 						<li><a href="javascript:()">兔子绝育手术</a></li>
	 						<li><a href="javascript:()">为什么要给猫绝育</a></li>
	 					</ul>
   		 				
   		 				<ul class="sick_left sick_right">
   		 					<li><a href="javascript:()">如何正确认识狗狗绝育</a></li>
	 						<li><a href="javascript:()">爱宠科学绝育计划-国庆期间绝育送寄</a></li>
	 						<li><a href="javascript:()">狗狗绝育手术的时期选择</a></li>
	 						<li><a href="javascript:()">浅谈侧切技术在母猫绝育中的临床应用</a></li>
	 						<li><a href="javascript:()">关爱宠物健康-预约绝育享优惠</a></li>
	 						<li><a href="javascript:()">母猫绝育微创侧切，省时、省钱、省心</a></li>
   		 				</ul>
   		 			</div>
   		 		</li>
   		 	</ul>
   		 </div><!-- tabCard结束 -->
	    </div><!--main结束--> 	
	  	<div class="seamless">
  			<p class="pro_team">专家团队</p>
			<span id="btnLeft"><img src="Image/hl_scroll_left.png" /></span>
			<span id="btnRight"><img src="Image/hl_scroll_right.png"/></span>
			<div id="div1">
			    <ul id="oUl">
			        <li><a href="javascript:()"><img src="Image/5.jpg"/></a></li>
			        <li><a href="javascript:()"><img src="Image/6.jpg"/></a></li>
			        <li><a href="javascript:()"><img src="Image/7.jpg"/></a></li>
			        <li><a href="javascript:()"><img src="Image/8.jpg"/></a></li>
			        <li><a href="javascript:()"><img src="Image/10.jpg"/></a></li>
			        <li><a href="javascript:()"><img src="Image/11.jpg"/></a></li>
			        <li><a href="javascript:()"><img src="Image/12.jpg"/></a></li>
			    </ul>
			</div>
	  	</div><!-- seamless结束 -->
	 </div><!-- wrap结束 -->
	 <%@ include file="foot.jsp" %>
  </body>
  <script type="text/javascript" src="JS/myfocus-2.0.1.min.js" charset="utf-8"></script><!--引入myFocus库-->
  <script type="text/javascript" src="JS/mF_fancy.js"></script>
  <script type="text/javascript" src="JS/seamlessScroll.js"></script>
  <script type="text/javascript" src="JS/jquery-1.9.1.js"></script>
<script type="text/javascript">
	myFocus.set({
	    id:'boxID',//焦点图盒子ID
	    pattern:'mF_fancy',//风格应用的名称
	    time:5,//切换时间间隔(秒)
	    trigger:'click',//触发切换模式:'click'(点击)/'mouseover'(悬停)
	    width:1000,//设置图片区域宽度(像素)
	    height:320,//设置图片区域高度(像素)
	    txtHeight:'default'//文字层高度设置(像素),'default'为默认高度，0为隐藏
	});
</script>
</html>
