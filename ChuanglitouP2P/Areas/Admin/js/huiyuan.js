$(function(){
	function huaguo(a){
		a.mouseover(function(){
		$(this).find("div").css("display","block")
	});
	a.mouseout(function(){
		$(this).find("div").css("display","none")
	})
	a.find("span").mouseover(function(){
	    $(this).css({ "color": "#398CF2", "background-image": "url(/Areas/Admin/img/dian1.gif)" });
	})
	a.find("span").mouseout(function(){
	    $(this).css({ "color": "#000", "background-image": "url(/Areas/Admin/img/dian.jpg)" });
	})
	}
	huaguo($(".hy_table_td1"));
	huaguo($(".hy_table_td3"));
	huaguo($(".hy_table_td4"));
})
