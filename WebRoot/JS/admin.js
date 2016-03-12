window.onload = function(){
	var oUl = document.getElementById("admin_ul");
	var aH3 = oUl.getElementsByTagName("h3");
	var aUl = oUl.getElementsByTagName("ul");
	var len = aH3.length;
	//alert(len);
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
			/*aH3[this.index].style.cssText = "background:yellow";
			for(var i=0;i<len;i++){
				aUl[i].style.cssText="display:none;";
				aH3[i].style.cssText="background:'';";
			}*/
		};
	}
};