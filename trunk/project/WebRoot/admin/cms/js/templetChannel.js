//添加一级栏目
function addOne(){
	if($("#templetId").val()!=""){
		$("#channelFrame").attr("src","templetChannel_edit.do?templet.id="+$("#templetId").val());
	}
}
//点击栏目
function showOne(id,name){
	$("#channelFrame").attr("src","templetChannel_edit.do?templetChannel.id="+id);
}