package cn.freeteam.cms.service;

import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.VisitMapper;
import cn.freeteam.cms.model.Info;
import cn.freeteam.cms.model.InfoExample;
import cn.freeteam.cms.model.Visit;
import cn.freeteam.cms.model.VisitExample;
import cn.freeteam.cms.model.VisitExample.Criteria;

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
	/**
	 * 栏目访问统计 
	 * @param info
	 * @return
	 */
	public List<Visit> channelVisit(Visit visit){
		VisitExample example=new VisitExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(visit, criteria);
		return visitMapper.channelVisit(example);
	}
	/**
	 * 栏目访问统计 
	 * @param info
	 * @return
	 */
	public List<Visit> channelVisit(Visit visit,int currPage,int pageSize){
		VisitExample example=new VisitExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(visit, criteria);
		example.setCurrPage(currPage);
		example.setPageSize(pageSize);
		return visitMapper.channelVisitPage(example);
	}
	/**
	 * 栏目访问统计
	 * @param info
	 * @return
	 */
	public int channelVisitCount(Visit visit){
		VisitExample example=new VisitExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(visit, criteria);
		return visitMapper.channelVisitCount(example);
	}
	/**
	 * 栏目访问合计
	 * @param info
	 * @return
	 */
	public int channelVisitSum(Visit visit){
		VisitExample example=new VisitExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(visit, criteria);
		return visitMapper.channelVisitSum(example);
	}
	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(Visit visit,Criteria criteria){
		if (visit!=null ) {
			
		}
	}
	public VisitMapper getVisitMapper() {
		return visitMapper;
	}

	public void setVisitMapper(VisitMapper visitMapper) {
		this.visitMapper = visitMapper;
	}
}
