<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'aboutWeb.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="CSS/aboutWeb.css"/>
  </head>
  
  <body>
    <%@ include file="top.jsp" %>
    <%@ include file="nav.jsp" %>
    <div class="about">
    	<div class="about_img"></div>
    	<span class="introduce">网站介绍</span>
    	<hr>
    	<div class="about_text">
    		<p>此宠物医院网站成立于2016年，在北京城市学院校领导及老师的帮助下圆满完成。此网站基于北京城市宠物医院而建立，
    		凭借阵容强大的专家团队、媲美港台的医疗设备、遵循规范、严谨的作业流程，此网站每年为几十万只宠物提供高品
    		质的服务。</p>
    		<h5>【医疗技术实力雄厚】</h5>
    		<p>本网站内拥有一批高学历、临床经验丰富的宠物医师，其中硕士0人、博士0人，执业兽医师1328人。本网站加盟的医院都建有完善的宠物内科、心血
    		管科、骨科、软组织外科、眼科、肿瘤科、牙科、皮肤科、影像科、猫科等科室，并在宠物骨科、眼科、肿瘤科、牙科、皮肤科等领域
    		综合实力领跑全国</p>
    		<h5>【医疗设备媲美港台】</h5>
			<p>网站内每家医院都配备有：呼吸麻醉机、洗牙机、高频X线机、B超机、血气分析仪、血细胞分析仪、生化分析仪、内分泌检测仪、血
			凝分析仪、全自动输液泵等。借助专业的诊疗设备，这些医院基本上可以完成所有小动物临床疾病的检验和诊断工作。</p>
			<h5>【接诊治愈率极高】</h5>
			<p>通过本网站而年接诊病例已连续数年逾30万例，日均逾1000多例。网站内医院的医生以极高的接诊率和治愈率忠实地履行着“提升动物福利”的使命，
			同时，众多的病例也为医师积累了丰富的临床经验。</p>
			<h5>【专业认证美容技师】</h5>
			<p>网站内部分医院拥有n多名中高级宠物美容技师，可提供宠物洗浴、宠物SPA、美容保健、创意造型、毛发漂染等多项专业服务。</p>
			<h5>【文明养宠与动物福利】</h5>
			<p>我们以提升动物福利为使命，也致力于促进人和动物的和谐相处，以自身的技术能力和成果回馈社会。近年来，我们每年开展300多
			场“文明养宠”宣传活动，努力促进社区和谐邻里关系建设；我们协助政府主管部门开展免费犬证办理和狂犬疫苗接种工作，提升了卫生
			防疫工作成效；推进TNR计划，为流浪动物免费绝育，减少了城市流浪动物的数量；网站积极推广动物绝育新技术，减少了手术中动物所
			受的痛苦；我们关爱流浪动物，18年来，先后有数千只流浪动物在瑞鹏各分院得到救助……</p>
			<h5>【社会责任及公益行动】</h5>
			<p>为帮助贫困大学生顺利完成学业，我们宠物医院出资N万元设立了“宠物医院助学基金会”，积极开展公益助学活动，目前已经有
			M多名同学受益。</p>
    	</div>
    </div>
    <%@ include file="foot.jsp" %>
  </body>
</html>
