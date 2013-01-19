//转交
function forward(){
	if(isCheckOne()){
		location.href="mail_forward.do?mail.type="+$("#type").val()
		+"&mail.id="+getCheckOneValue()+"&pageFuncId="+$("#pageFuncId").val();
	}else{
		alert("请选择一条记录!");
	}
}
//办理
function pro(){
	if(isCheckOne()){
		location.href="mail_pro.do?mail.type="+$("#type").val()
		+"&mail.id="+getCheckOneValue()+"&pageFuncId="+$("#pageFuncId").val();
	}else{
		alert("请选择一条记录!");
	}
}