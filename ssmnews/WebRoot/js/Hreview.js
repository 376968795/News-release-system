$(document).ready(function() {
		if(parent.$("#hidd1").val()==2){
			$("#cover").fadeIn();
		}
		if($("#status").val()==0){
			$("#op").attr("selected","selected");
		}
	});
$(".dst").click(function(){
	var cover="#cover"+$(this).attr("id");
	var point="#point"+$(this).attr("id");
	parent.$(cover).fadeToggle();
	parent.$(point).animate({top:'70px',opacity:'1'},"fast");
	parent.$(point).show();
});
$(".title").click(function(){
	window.open("http://localhost:8080/ssmnews/temp/78.html","王大锤",height=700,width=800,top=0,left=0); 
});
$(".trash").click(function(){
	var index="#id"+$(this).attr("id");
	$.ajax({
		url:$("#path").val()+'/ajaxdelete.action',
		data:{
			newsid:$(index).val(),
		},
		dataType : 'json',
		success:function(data){
			if(data==true){
				$("#ddd").attr("action",$("#path").val()+'/hreview.action?newstatus='+$("#status").val()+'&index='+$("#index").val());
				$("#ddd").submit();
			}
		}
	});
});		
	
	$("#se").change(function(){
		if($("#se").val()=="未审核"){
			$("#fo").attr("action",$("#path").val()+"/hreview.action?newstatus=0");
			$("#fo").submit();
		}else if($("#se").val()=="已审核"){
			$("#fo").attr("action",$("#path").val()+"/hreview.action?newstatus=1");
			$("#fo").submit();
		}
	});
	$("#next").click(function(){
		if(parseInt($("#index").val())+1<=parseInt($("#maxindex").val())){
			$("#index").val(parseInt($("#index").val())+1);
			$("#fo").attr("action",$("#path").val()+"/hreview.action?newstatus="+$("#status").val());
			$("#fo").submit();
		}
	});
	$("#before").click(function(){
		if(parseInt($("#index").val())-1>0){
			$("#index").val(parseInt($("#index").val())-1);
			$("#fo").attr("action",$("#path").val()+"/hreview.action?newstatus="+$("#status").val());
			$("#fo").submit();
		}
	});
	$("#first").click(function(){
		$("#index").val(1);
		$("#fo").attr("action",$("#path").val()+"/newsreview.do?newstatus="+$("#status").val());
		$("#fo").submit();
	});
	$("#last").click(function(){
		$("#index").val(parseInt($("#maxindex").val()));
		$("#fo").attr("action",$("#path").val()+"/newsreview.do?newstatus="+$("#status").val());
		$("#fo").submit();
	});
	
		





