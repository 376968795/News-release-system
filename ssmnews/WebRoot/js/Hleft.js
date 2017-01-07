/*var a = [ 1, 1, 1, 1, 1, 1 ];
$(".cho").click(function(){
	var i=$(this).attr("id");
	var url;
	if(i==1){
		url="HcreateNews.jsp";
	}else if(i==2){
		url="HleftServlet.do?action=newsreview";
	}else if(i==3){
		url="HdiscussReview.jsp";
	}else if(i==5){
		url="HuserManage.jsp";
	}
	$("#iframe").attr("src", url);
	if (a[i-1] % 2 == 1) {
		$(".cho").css("color", "41ace9");
		$(".cho").not(this).animate({
			left : '0px'
		}, "fast");
		$(".cho").css("background-color", "white");
		$(this).css("background-color", "2Fa4e7");
		$(this).css("color", "white");
		a = [ 1, 1, 1, 1, 1, 1 ];
		a[i-1]++;
	}
});
$(".cho").mouseenter(function() {
	var i=$(this).attr("id");
	if (a[i-1] % 2 == 1) {
		$(this).stop();
		$(this).css("background-color", "eeeeee");
		$(this).css("color", "157ab5");
		$(this).animate({
			left : '10px'
		}, "fast");
	}
});
$(".cho").mouseleave(function() {
	var i=$(this).attr("id");
	if (a[i-1] % 2 == 1) {
		$(this).css("background-color", "ffffff");
		$(this).css("color", "41ace9");
		$(this).stop();
		$(this).animate({
			left : '0px'
		}, "fast");
	}
});*/

$(".cho").not("#c1").not("#c2").not("#c3").not("#c5").click(function() {
	$("#iframe").attr("src", "img/main.png");
});

$(".pointfalse").click(function(){
	var cover="#cover"+$(this).attr("id");
	var point="#point"+$(this).attr("id");
	$(cover).fadeToggle();
	$(point).animate({
		top : '0px',
		opacity : '0'
	}, "fast");
	$(point).slideToggle();
});
$(".pointtrue").click(function(){
	var cover="#cover"+$(this).attr("id");
	var point="#point"+$(this).attr("id");
	var ch="#ch"+$(this).attr("id");
	var ren="#ren"+$(this).attr("id");
	var id="#id"+$(this).attr("id");
	$(cover).fadeToggle();
	$(point).animate({
		top : '0px',
		opacity : '0'
	}, "fast");
	$(point).slideToggle();
	if (iframe.$(ch).css("right") =="60px") {
		iframe.$(ch).animate({
			right : '0px'
		}, "fast");
	} else {
		iframe.$(ch).animate({
			right : '60px'
		}, "fast");
	}
	iframe.$(ren).text($("#username").val());
	$.ajax({
		url : '/ssmnews/ajaxhreview.action',
		data : {
			'id':iframe.$(id).val(),
			'userid':$("#userid").val()
		},
		dataType : 'json',
	});
});
function jump(target){
	$("#frm").attr("action",target);
	$("#frm").submit();
}
var a = [ 1, 1, 1, 1, 1, 1 ];
$(".cho").click(function(){
	var i=$(this).attr("id");
	var url;
	if(i==1){
		url="redirect.action?page=HcreateNews";
	}else if(i==2){
		url="hreview.action?newstatus=0";
	}else if(i==3){
		url="redirect.action?page=HdiscussReview";
	}else if(i==5){
		url="redirect.action?page=HuserManage";
	}
	$("#iframe").attr("src", url);
	if (a[i-1] % 2 == 1) {
		$(".cho").css("color", "41ace9");
		$(".cho").not(this).animate({
			left : '0px'
		}, "fast");
		$(".cho").css("background-color", "white");
		$(this).css("background-color", "2Fa4e7");
		$(this).css("color", "white");
		a = [ 1, 1, 1, 1, 1, 1 ];
		a[i-1]++;
	}
});
$(".cho").mouseenter(function() {
	var i=$(this).attr("id");
	if (a[i-1] % 2 == 1) {
		$(this).stop();
		$(this).css("background-color", "eeeeee");
		$(this).css("color", "157ab5");
		$(this).animate({
			left : '10px'
		}, "fast");
	}
});
$(".cho").mouseleave(function() {
	var i=$(this).attr("id");
	if (a[i-1] % 2 == 1) {
		$(this).css("background-color", "ffffff");
		$(this).css("color", "41ace9");
		$(this).stop();
		$(this).animate({
			left : '0px'
		}, "fast");
	}
});



