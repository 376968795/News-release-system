var b=0;

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
	a++;
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
setInterval("changeImg(i++)", 5000);

$(".hand1").mouseenter(function(){
	$(this).next().fadeIn();
});
$(".hand").mouseleave(function(){
	$(this).fadeOut();
});
$(window).scroll(function(){
	var t = document.documentElement.scrollTop || document.body.scrollTop; 
    if( t >= 126 ) {
        $("#fly").css("position","fixed");
        $("#fly").css("margin-top","-76px");

    } else {
    	$("#fly").css("position","absolute");
    	$("#fly").css("margin-top","50px");	
    }
});
$(document).ready(function(){
	for(var i=1;i<10;i++){
		if($("#img"+i).attr("src")!=""){
			$("#img"+i).attr("width","52%");
		}
	}
});
$("#next").click(function(){
	if(parseInt($("#index").val())+1<=parseInt($("#maxindex").val())){
		$("#index").val(parseInt($("#index").val())+1);
		$("#fo").submit();
	}
});
$("#before").click(function(){
	if(parseInt($("#index").val())-1>0){
		$("#index").val(parseInt($("#index").val())-1);
		$("#fo").submit();
	}
});
$("#first").click(function(){
	$("#index").val(1);
	$("#fo").submit();
})
$("#last").click(function(){
	$("#index").val(parseInt($("#maxindex").val()));
	$("#fo").submit();
})
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
			url:$("#path").val()+'/quit.do',
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
			url:$("#path").val()+'/login.do',
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

    
