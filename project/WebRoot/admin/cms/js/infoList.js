function add(){
	location.href="info_edit.do?pageFuncId="+$("#pageFuncId").val()+"&channel.id="+$("#channelId").val();
}
function edit(){
	if(isCheckOne()){
		location.href="info_edit.do?pageFuncId="+$("#pageFuncId").val()+"&info.id="+getCheckOneValue();
	}else{
		alert("请选择一条记录!");
	}
}

function del(){
	if(isCheck()){
		if(confirm("确定删除操作么?此操作无法回退!")){
			$.post("info_del.do","ids="+getCheckValue(),delComplete,"text");
		}
	}else{
		alert("请选择要操作的记录!");
	}
}
function delComplete(data){
	if(data!=""){
		var datas=data.split(";");
		if(datas!=null && datas.length>0){
			for(var i=0;i<datas.length;i++){
				if(datas[i]!="" && document.getElementById("tr"+datas[i])!=null){
						document.getElementById("tr"+datas[i]).parentNode.removeChild(document.getElementById("tr"+datas[i]));
				}
			}
		}
	}
}
function infosign(infoid){
	$.weeboxs.open('../../info_sign.do?cansign=false&info.id='+infoid+'&date='+new Date(), 
	{title:'信息签收', contentType:'ajax',height:420,width:450});
}