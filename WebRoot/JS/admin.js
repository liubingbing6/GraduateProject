window.onload = function(){
	//showItem();
	addSelectInfo();
};
function showItem(){                             //展示各类信息的子列表
	var oUl = document.getElementById("admin_ul");
	var aH3 = oUl.getElementsByTagName("h3");
	var aUl = oUl.getElementsByTagName("ul");
	var len = aH3.length;
	for(var i=0;i<len;i++){
		aH3[i].index = i;
		aH3[i].onOff = true;
		aH3[i].onclick = function(){
			if(this.onOff){
				aUl[this.index].style.cssText = "display:block;";
				this.onOff = false;
			}else {
				aUl[this.index].style.cssText = "display:none;";
				this.onOff = true;
			}
		};
	}
}
function addSelectInfo(){                          //查看各类信息管理的选项卡
	var adManager = document.getElementById("adminManage");
	var aDiv = adManager.getElementsByTagName('div');
	var oH1 = adManager.getElementsByTagName("h1")[0];
	var oUl = document.getElementById("admin_ul");
	var aH3 = oUl.getElementsByTagName("h3");
	//alert(aH3.length);
	for(var i=0;i<aH3.length;i++){
		aH3[i].index = i;
		aH3[i].onclick = function(){
			for(var j=0;j<aH3.length;j++){
				aDiv[j].style.display = 'none';
			}
		oH1.style.display = 'none';
		aDiv[this.index].style.display = 'block';
		};
	}
}