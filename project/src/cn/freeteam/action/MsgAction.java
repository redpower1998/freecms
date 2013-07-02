package cn.freeteam.action;

import cn.freeteam.base.BaseAction;
import cn.freeteam.service.MsgService;

public class MsgAction extends BaseAction{

	private MsgService msgService;

	public MsgAction() {
		init("msgService");
	}
	
	public MsgService getMsgService() {
		return msgService;
	}

	public void setMsgService(MsgService msgService) {
		this.msgService = msgService;
	}
	
}
