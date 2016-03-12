var speed=-1;
window.onload=function(){
	scrolling();
	tab();
	};
function scrolling(){
	var oUl=document.getElementById('oUl');
	var oLi=oUl.getElementsByTagName('li');
	var btnLeft=document.getElementById('btnLeft');
	var btnRight=document.getElementById('btnRight');
	var timer=null;
	
	oUl.innerHTML+=oUl.innerHTML;
	oUl.style.width=oLi[0].offsetWidth*oLi.length+'px';
	timer=setInterval(move,30);
	oUl.onmouseover=function(){
		clearInterval(timer);
		};
	oUl.onmouseout=function(){
		timer=setInterval(move,30);
		};
		
	btnLeft.onclick=function(){
		speed=-1;
		};
	btnRight.onclick=function(){
		speed=1;
		};
}
function move(){
	if(oUl.offsetLeft<-oUl.offsetWidth/2){
		oUl.style.left='0';
		}
	else
	if(oUl.offsetLeft>0){
		oUl.style.left=-oUl.offsetWidth/2+'px';
		}
	oUl.style.left=oUl.offsetLeft+speed+'px';				 
	}

function tab(){
	$(function(){
		//alert("ddf");
		$("#tabCard li").bind("mouseover",function(){
			$("#tabCard li").attr('class','');
			$("#tabCard li").css('background','');
			$(this).attr("class","active");
			$(this).css("background","yellow");
			$("#tabCard div").css("display","none");
			$("#tabCard div").eq($(this).index()).css("display","block");
		}).bind('mouseout',function(){
			$("#tabCard li").attr('class','');
			//$(this).css("background","yellow");
			$(this).attr("class","active");
		});
	});
}