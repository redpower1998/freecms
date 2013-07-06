package cn.freeteam.cms.service;

import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.JobMapper;
import cn.freeteam.cms.model.Job;
import cn.freeteam.cms.model.JobExample;
import cn.freeteam.cms.model.JobExample.Criteria;

public class JobService extends BaseService{

	private JobMapper jobMapper;
	
	public JobService() {
		initMapper("jobMapper");
	}
	

	/**
	 * 分页查询
	 */
	public List<Job> find(Job job,String order,int currPage,int pageSize){
		JobExample example=new JobExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(job, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		example.setCurrPage(currPage);
		example.setPageSize(pageSize);
		return jobMapper.selectPageByExample(example);
	}
	/**
	 * 统计
	 * @param info
	 * @return
	 */
	public int count(Job job){
		JobExample example=new JobExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(job, criteria);
		return jobMapper.countByExample(example);
	}

	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(Job job,Criteria criteria){
		if (job!=null ) {
		}
	}

	/**
	 * 根据id查询
	 * @param id
	 * @param cache
	 * @return
	 */
	public Job findById(String id){
		return jobMapper.selectByPrimaryKey(id);
	}
	/**
	 * 更新
	 * @param question
	 */
	public void update(Job Job){
		jobMapper.updateByPrimaryKeySelective(Job);
		DBCommit();
	}
	/**
	 * 添加
	 * @param question
	 * @return
	 */
	public String add(Job job){
		job.setId(UUID.randomUUID().toString());
		jobMapper.insert(job);
		DBCommit();
		return job.getId();
	}
	/**
	 * 删除 
	 * @param id
	 */
	public void del(String id){
		jobMapper.deleteByPrimaryKey(id);
		DBCommit();
	}

	public JobMapper getJobMapper() {
		return jobMapper;
	}

	public void setJobMapper(JobMapper jobMapper) {
		this.jobMapper = jobMapper;
	}
	
}
