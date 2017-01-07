$(document).ready(function(){
	if($("#hid1").val()=="false"){
		$("#div5").show();
	}
})
$("#div4").click(function(){
	var target=$("#path").val()+"/hlogin.action?userword="+$("#inp1").val()+"&password="+$("#inp2").val();
	$("#frm").attr("action", target);
	$("#frm").submit();
});
$("#in1").change(function(){
	alert("1");
	$("#frm1").ajaxSubmit({
		url:"/ssmnews/ajpicture.action",
		type:"post",
		success:function(data){
			$("#img1").attr("src",data);
		}
	});
});
