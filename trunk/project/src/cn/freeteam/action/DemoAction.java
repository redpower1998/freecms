package cn.freeteam.action;

import cn.freeteam.base.BaseAction;
import cn.freeteam.service.DemoService;

public class DemoAction extends BaseAction{

	private DemoService demoService;
	
	public DemoAction() {
		init("demoService");
	}

	public DemoService getDemoService() {
		return demoService;
	}

	public void setDemoService(DemoService demoService) {
		this.demoService = demoService;
	}
	
}
