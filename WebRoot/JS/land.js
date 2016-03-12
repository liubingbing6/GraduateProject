$(function(){
	$("#land").on("click",function(){
		$("#regist").css("background-color",'');
		$(this).css("background-color","#615a3e");
		$(this).removeClass("land_first_span");
		
		$("#regist_form").css("display","none");
		$("#land_form").css("display","block");
		
	});
	$("#regist").on("click",function(){
		$("#land").removeClass("land_first_span");
		$("#land").css("background-color",'');
		$(this).css("background-color","#615a3e");
		
		$("#land_form").css("display","none");
		$("#regist_form").css("display","block");
	});
	
	
	$("#identity").change(function(){
		var identity = $("#identity option:selected").val();
		switch(identity){
		case 'hospital':
			$("#sexDiv").css("display",'none');
			$("#ageDiv").css("display",'none');
			$("#qqDiv").css("display",'none');
			$("#fileDiv").css("display",'block');
		break;
		/*case 'doctor':
			$("#sexDiv").css("display",'block');
			$("#ageDiv").css("display",'block');
			$("#qqDiv").css("display",'block');
			$("#userNameDiv").css("display",'block');
			$("#passwordDiv").css("display",'block');
			$("#telDiv").css("display",'block');
			$("#emailDiv").css("display",'block');
			$("#fileDiv").css("display",'none');
			break;*/
		default:
			$("#sexDiv").css("display",'block');
			$("#ageDiv").css("display",'block');
			$("#qqDiv").css("display",'block');
			$("#userNameDiv").css("display",'block');
			$("#passwordDiv").css("display",'block');
			$("#telDiv").css("display",'block');
			$("#emailDiv").css("display",'block');
			$("#fileDiv").css("display",'none');
		}
	});
	
	$("#land_form").on('submit',function(){
		if($("#userName").val() == "" || $("#password").val() == ""){
			alert("用户名或密码不能为空！");
			$("#userName").focus();
			return false;
		}
		return true;
	});
	
/*	$("#registForm").on('submit',function(){
		var identity = $("#identity option:selected").val();
		switch(identity){
		case 'hospital':
			$(this).attr('action','./Main/petInfo.jsp');
		break;
		case 'doctor':
			$(this).attr('action','./Main/entityDao.jsp');
			break;
		case 'petOwner':
			$(this).attr('action','./Main/top.jsp');
			//window.open('petInfo.jsp','_blank');
			break;
		default : 
			$(this).attr('action','');
		}
	});*/
	
});