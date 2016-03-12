<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'petNews.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="CSS/petNews.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <%@ include file="top.jsp" %>
    <%@ include file="nav.jsp" %>
    <div class="wrap">
    	<div class="petNews">
	    	<ul>
	    		<li>
			    	<div class="petNews_img">
			    		<a href="javascript:()"><img src="Image/new_pic1.jpg" width=200px height=150px/></a>
			    	</div>
			    	<div class="petNews_text">
			    		<h3><a href="javascript:()">一只打扮成“泰迪熊”的汪，真的好魔性</a></h3>
			    		<p>这只狗狗叫做Munchkin，被主人cos成各种样子奔跑，走到哪都有人驻足拍照，想必狗狗的内心一定是崩溃的。。</p>
			    	</div>
	    		</li>
	    		<li>
			    	<div class="petNews_img">
			    		<a href="javascript:()"><img src="Image/new_pic2.jpg" width=200px height=150px/></a>
			    	</div>
			    	<div class="petNews_text">
			    		<h3><a href="javascript:()">无论时光如何变迁，你永远是我的小天使</a></h3>
			    		<p>感觉时间并没有过去很久，它们就长大了，你把它当做自己的宝宝一样爱护着，看着它每天的变化，你是否也将它小时候用照片记录了下来？找出来看看，那变化会让你吓一跳。</p>
			    	</div>
	    		</li>
	    		<li>
			    	<div class="petNews_img">
			    		<a href="javascript:()"><img src="Image/new_pic3.jpg" width=200px height=150px/></a>
			    	</div>
			    	<div class="petNews_text">
			    		<h3><a href="javascript:()">摄影社妈妈记录下宝宝与狗狗“神同步”的照片，好有爱！</a></h3>
			    		<p>Jesse Holland 是个摄影师妈妈~给自己的女儿Ella还有他们的汪拍了很多“同步”的照片，好萌好有爱！</p>
			    	</div>
	    		</li>
	    		<li>
			    	<div class="petNews_img">
			    		<a href="javascript:()"><img src="Image/new_pic4.png" width=200px height=150px/></a>
			    	</div>
			    	<div class="petNews_text">
			    		<h3><a href="javascript:()">一台狗用电脑 DOG PC</a></h3>
			    		<p>近期，央视财经《创业英雄汇》的舞台上出现了一款一台给狗用的电脑。！</p>
			    	</div>
	    		</li>
	    		<li>
			    	<div class="petNews_img">
			    		<a href="javascript:()"><img src="Image/new_pic5.png" width=200px height=150px/></a>
			    	</div>
			    	<div class="petNews_text">
			    		<h3><a href="javascript:()">3D打印残疾狗义肢</a></h3>
			    		<p>　据外媒报道，美国一只名叫德比的狗狗前腿天生畸形，无法奔跑，当地一家3D打印公司的员工知道了他的故事后，说服公司一起为德比打印出了崭新的义肢，让它可以欢快地奔跑。
　　据了解，一开始他们先是给德比套上二轮车，虽然能用，但是限制了狗狗的行动，德比无法和其他狗狗一起玩耍，算不上是真正意义上的奔跑。之后他们花了很多时间在设计上，因为担心德比可能会用义肢去刨土然后陷进去，他们采用了圆圈形状的设计。最终研究人员用5500型号的打印机，同时用两种材料打印，成功打印出了适合德比奔跑的义肢。
　　德比的义肢运用了3D公司的很多科技，研究人员借此得以迅速快捷地修改数码模型，去实现矫正专家交给他们的设计。相关人员介绍说：“3D技术的好处是图纸存储在电脑里，可以打印出来，这比每次都手动去雕刻支架，还有反复调试重做五到十次要快得多。”
　　领养德比的家人表示，“当我看到德比冲刺的样子时，感觉真是太棒了，真的是难以置信!”现在德比每天陪着他们跑步，每天至少两三英里，德比跑得比谁都快，从来不觉得累，或许对它而言只要能跑起来就是开心。
　　“第一次戴上义肢开始奔跑时，德比开心极了，我对它能适应这样快也是非常震惊!”研究人员表示，或许这就是3D打印的意义所在，能够帮助到大家，不管是动物还是我们人类，让大家拥有很好的生活。</p>
			    	</div>
	    		</li>
	    		<li>
			    	<div class="petNews_img">
			    		<a href="javascript:()"><img src="Image/new_pic6.png" width=200px height=150px/></a>
			    	</div>
			    	<div class="petNews_text">
			    		<h3><a href="javascript:()">五款神器让汪和你更亲</a></h3>
			    		<p>随着智能设备的兴起，高科举数码产品早已不仅限于人类，目前市场上已经有许多专为狗狗所设计的科技产品。</p>
			    	</div>
	    		</li>
	    	</ul>
		    <div class="page"> 
			    <a href=javascript:()>首页</a>
			    <a href=javascript:()>&lt;</a>
			    <a href=javascript:() class="activeFirst">1</a>
			    <a href=javascript:()>2</a>
			    <a href=javascript:()>3</a>
			    <a href=javascript:()>…</a>
			    <a href=javascript:()>&gt;</a>
			    <a href=javascript:()>末页</a> 
		    </div>
    	</div><!-- petNews结束 -->
    	
    	<div class="petNews_ad">
    		<img alt="广告" src="Image/petNew_ad.jpg" width="400px" height="500px"/>
    		<p>投放广告区</p>
    	</div>
    </div>
   
    <%@ include file="foot.jsp" %>
  </body>
</html>
