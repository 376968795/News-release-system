var b = 0;
var i = 1;
var time;
var arr = new Array();
arr[0] = "img1";
arr[1] = "img2";
arr[2] = "img3";
arr[3] = "img4";
$("#img").click(function() {
	if (b <= 0) {
		$("#te").val("请输入你要查找的信息");
		$("#te").animate({
			width : 'show'
		});
		$("#te").focus();
	} else {
		$("#frm1").submit();
	}
});
$("#te").keydown(function() {
	b++;
	if (b == 1) {
		$("#te").val("");
	}
});
$("#te").blur(function() {
	b = 0;
	$("#te").animate({
		width : 'hide'
	});
});
$(document).ready(function(){
	time=setInterval("changeImg(i++)", 5000);
});
function changeImg(i) {
	$("#" + arr[(i - 1) % 4]).fadeOut(1000);
	$("#" + arr[i % 4]).fadeIn(1000);
}

$(".hand1").mouseenter(function(){
	$(this).next().fadeIn();
});
$(".hand").mouseleave(function(){
	$(this).fadeOut();
});
$(".imgs").click(function(){
	$(".imgb").fadeOut();
	var id="#img"+$(this).attr("id");
	i=$(this).attr("id");
	$(id).fadeIn();
	clearInterval(time);
	time=setInterval("changeImg(i++)", 5000);
});
function a(target){
	$("#formmm").attr("action", target);
	$("#formmm").submit();
}
$("#div15").click(function(){
		if($("#userid").val()==""){
			$("#divlogin").animate({top:'150px',opacity:'1'},400);
			$("#divlogin").show();
			$("#cover").fadeToggle();
		}
	});
$("#div16").click(function(){
	$.ajax({
		url:$("#path").val()+'/HAjaxServlet.do',
		data:{
			'action':'quit'
		},
		success : function(){
				$("#div15").html("<b>登录</b>");
			}
	});
});
$("#login").click(function(){//异步登录
	$.ajax({	
		url:$("#path").val()+'/HAjaxServlet.do',
		data : {
			'action' : 'login',
			'userword' : $("#uw").val(),
			'password' : $("#pw").val()
		},
		dataType : 'json',
		success : function(data) {
			if (data != false) {
				$("#div15").html("<b>" + data[0].username + "</b>");
				$("#divlogin").fadeToggle();
				$("#cover").fadeToggle();
			} else {
				$("#uw").val("ERROR username or password");
				$("#pw").val("");
			}
		}
	});
});



