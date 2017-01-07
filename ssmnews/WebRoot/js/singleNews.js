$(document).ready(function() {//更新网页就会异步刷新评论'
	$.ajax({	
		url:$("#path").val()+'/getpinlun.do',
		data:{
			newsid:$("#newsid").val()
		},
		dataType : 'json',
		success : function(data){
					$("#divdisc").text("");
					if (data != undefined) {
						for ( var i = 0; i < data.length; i++) {
							var a="<div id=divperson1><img id=imgp1 src=img/person.png><div id=reply1><font id=dis1><b>"+data[i].username+"</b></font><b>&nbsp"+data[i].regtime+"</b><br>"+data[i].pcontent+"</div></div>";
							$("#divdisc").append(a);
						}
					}
			}
		});
	});
var b = 0;
$("#context").focus(function() {
	if (b == 0) {
		$("#context").text("");
		b++;
	}
});
var c = 0;
$("document").ready(function() {
	$("#te").hide();
});
$("#img").click(function() {
	if (c <= 0) {
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
	c++;
	if (c == 1) {
		$("#te").val("");
	}
});
$("#te").blur(function() {
	c = 0;
	$("#te").animate({
		width : 'hide'
	});
});
setInterval("changeImg(i++)", 5000);
$(".hand1").mouseenter(function() {
	$(this).next().fadeIn();
})
$(".hand").mouseleave(function() {
	$(this).fadeOut();
})
$("#div15").click(function() {
	if ($("#hid1").val() == "") {
		
		$("#divlogin").animate({
			top : '150px',
			opacity : '1'
		}, "fast");
		
		$("#divlogin").fadeIn();
		
		$("#cover").fadeToggle();
	}
});
$("#login").click(function() {// 异步登录
	
	$.ajax({
		url : $("#path").val()+'/login.do',
		data : {
			'userword' : $("#uw").val(),
			'password' : $("#pw").val()
		},
		dataType : 'json',
		success : function(data) {
			if (data != false) {
				$("#hid1").val(data[0].id);
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





$("#div16").click(function(){
	$.ajax({
		url: $("#path").val()+'/qquit.do',
		data:{
			'action':'quit'
		},
		success : function(data){
				$("#div15").html("<b>登录</b>");
				$("#hid1").val("");
			}
	});
});
$("#subm").click(function(){//异步保存评论到数据库
	
	if($("#hid1").val()!=""){//没登陆不允许评论

		if($.trim($("#context").text())!=""&&$("#context").text().length<100){
			$.ajax({
				url:$("#path").val()+'/pinlun.do',
				data:{
					'newsid':$("#newsid").val(),
					'userid':$("#hid1").val(),
					'pcontent':$("#context").text()
				},
				dataType : 'json',
				success : function(data){
							$("#divdisc").text("");
							if (data != undefined) {
								for ( var i = 0; i < data.length; i++) {
									var a="<div id=divperson1><img id=imgp1 src=img/person.png><div id=reply1><font id=dis1><b>"+data[i].username+"</b></font><b>&nbsp"+data[i].regtime+"</b><br>"+data[i].pcontent+"</div></div>";
									$("#divdisc").append(a);
								}
								$("#p").text(data.length+"人参与了评论");
							}
					}
			});
			$("#context").html("");
		}else{
			alert("评论内容不允许为空");
		}
	}else{
		
		$("#divlogin").fadeIn();
		$("#divlogin").animate({top:'150px',opacity:'1'},400);
		$("#cover").fadeToggle();
	}
});	
function a(target){
	$("#formmm").attr("action", target);
	$("#formmm").submit();
}




