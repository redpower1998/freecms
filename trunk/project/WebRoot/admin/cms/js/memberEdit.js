function typeChange(type){
	if(1==type){
		$("#groupidTd").fadeIn("slow"); 
	}else{
		$("#groupidTd").fadeOut("slow"); 
	}
}

//提交验证
function save(){
	if($("#loginname").val()==""){
		alert("请输入登录名");
		$("#loginname").focus();
		return false;
	}
	if($("#name").val()==""){
		alert("请输入名称");
		$("#name").focus();
		return false;
	}
	if($("#pwd").val()==""){
		alert("请输入登录密码!");
		$("#pwd").focus();
		return false;
	}
	if($("#repwd").val()==""){
		alert("请输入确认登录密码!");
		$("#repwd").focus();
		return false;
	}
	if($("#repwd").val()!=$("#pwd").val()){
		alert("确认登录密码与登录密码不一致，请重新输入!");
		$("#repwd").focus();
		return false;
	}
	if($.trim($("#email").val())!="" 
		&& !isEmail($("#email").val())){
		alert("请输入正确的电子邮箱！");
		$("#email").focus();
		return false;
	}
	if($.trim($("#intro").val()).length>200){
		alert("简介只能在200字以内！");
		$("#intro").focus();
		return false;
	}
	$("#MyForm").submit();
}
function delImg(){
	$("#oldImgSpan").fadeOut("slow"); 
	$("#oldImg").val("");
}