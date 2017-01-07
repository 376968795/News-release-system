
$(document).ready(function() {
	if ($("#action").val() == 1) {/* 这里要改成异步发表新闻，然后返回 */
		$("#cover").fadeIn();
		$("#sugg").fadeIn();
		$("#sugg").html("<b>新闻发表成功</b>");
		$("#cover").fadeOut(2000);
		$("#sugg").fadeOut(2000);
	}
	var editor = CKEDITOR.replace('TextArea1');//引号中的字符串要和文本域中name的值一致
	CKFinder.setupCKEditor(editor, 'ckfinder/');
	if(parent.$("#hidd1").val()==3){
		$("#cover").fadeIn();
		$("#sugg").fadeIn();
	}
});
function a() {
	var a = CKEDITOR.instances.TextArea1.getData();
	if(a!=""&&$.trim($("#text").val())!=""&&$("#se").val()!="请选择"&& $("#text").val().length<50){
		$("#tp1").attr("value", $("#text").val());
		$("#tp2").attr("value", $("#se").val());
		$("#tp3").attr("value", a);
		$("#tp4").attr("value", $("#username").val());
		$("#frm").submit();
	}else{
		$("#cover").fadeIn(1000);
		$("#sugg").fadeIn(1000);
		$("#sugg").html("<b>你要发表的新闻有错误</b>");
		$("#cover").fadeOut(2000);
		$("#sugg").fadeOut(2000);
	}
}
