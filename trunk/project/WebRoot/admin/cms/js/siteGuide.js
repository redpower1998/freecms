function save(form){
	if($.trim($("#name").val())==""){
		alert("请输入名称");
		$("#name").focus();
		return false;
	}
	if($.trim($("#sourcepath").val())==""){
		alert("请输入源文件目录名");
		$("#sourcepath").focus();
		return false;
	}
	form.submit();
}