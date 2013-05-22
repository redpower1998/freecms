package cn.freeteam.cms.service;

import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.VisitMapper;
import cn.freeteam.cms.model.Visit;

public class VisitService extends BaseService{

	private VisitMapper visitMapper;
	
	public VisitService() {
		initMapper("visitMapper");
	}

	/**
	 * 添加
	 * @return
	 */
	public String add(Visit visit){
		visit.setId(UUID.randomUUID().toString());
		visitMapper.insert(visit);
		DBCommit();
		return visit.getId();
	}

	public VisitMapper getVisitMapper() {
		return visitMapper;
	}

	public void setVisitMapper(VisitMapper visitMapper) {
		this.visitMapper = visitMapper;
	}
}
