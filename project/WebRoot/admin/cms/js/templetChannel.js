//添加一级栏目
function addOne(){
	if($("#templetId").val()!=""){
		$("#channelFrame").attr("src","templetChannel_edit.do?templet.id="+$("#templetId").val());
	}
}