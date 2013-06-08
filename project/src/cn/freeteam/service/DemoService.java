package cn.freeteam.service;

import cn.freeteam.base.BaseService;
import cn.freeteam.dao.DemoMapper;

public class DemoService extends BaseService{

	private DemoMapper demoMapper;
	
	public DemoService() {
		initMapper("demoMapper");
	}

	public DemoMapper getDemoMapper() {
		return demoMapper;
	}

	public void setDemoMapper(DemoMapper demoMapper) {
		this.demoMapper = demoMapper;
	}
}
