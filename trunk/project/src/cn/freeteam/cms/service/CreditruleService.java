package cn.freeteam.cms.service;

import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.CreditruleMapper;
import cn.freeteam.cms.model.Creditrule;
import cn.freeteam.cms.model.CreditruleExample;
import cn.freeteam.cms.model.CreditruleExample.Criteria;
/**
 * 
 * <p>Title: CreditruleService.java</p>
 * 
 * <p>Description: 积分规则相关服务</p>
 * 
 * <p>Date: Feb 4, 2013</p>
 * 
 * <p>Time: 7:50:54 PM</p>
 * 
 * <p>Copyright: 2013</p>
 * 
 * <p>Company: freeteam</p>
 * 
 * @author freeteam
 * @version 1.0
 * 
 * <p>============================================</p>
 * <p>Modification History
 * <p>Mender: </p>
 * <p>Date: </p>
 * <p>Reason: </p>
 * <p>============================================</p>
 */
public class CreditruleService extends BaseService{

	private CreditruleMapper creditruleMapper;
	
	public CreditruleService() {
		initMapper("creditruleMapper");
	}

	/**
	 * 分页查询
	 */
	public List<Creditrule> find(Creditrule Creditrule,String order,int currPage,int pageSize){
		CreditruleExample example=new CreditruleExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(Creditrule, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		example.setCurrPage(currPage);
		example.setPageSize(pageSize);
		return creditruleMapper.selectPageByExample(example);
	}
	/**
	 * 查询
	 */
	public List<Creditrule> find(Creditrule Creditrule,String order){
		CreditruleExample example=new CreditruleExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(Creditrule, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		return creditruleMapper.selectByExample(example);
	}
	/**
	 * 统计
	 * @param info
	 * @return
	 */
	public int count(Creditrule Creditrule){
		CreditruleExample example=new CreditruleExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(Creditrule, criteria);
		return creditruleMapper.countByExample(example);
	}

	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(Creditrule Creditrule,Criteria criteria){
		if (Creditrule!=null ) {
			if (Creditrule.getCode()!=null && Creditrule.getCode().trim().length()>0) {
				criteria.andCodeLike("%"+Creditrule.getCode().trim()+"%");
			}
			if (Creditrule.getName()!=null && Creditrule.getName().trim().length()>0) {
				criteria.andNameLike("%"+Creditrule.getName().trim()+"%");
			}
		}
	}

	/**
	 * 根据id查询
	 * @param id
	 * @param cache
	 * @return
	 */
	public Creditrule findById(String id){
		return creditruleMapper.selectByPrimaryKey(id);
	}
	/**
	 * 更新
	 * @param question
	 */
	public void update(Creditrule Creditrule){
		creditruleMapper.updateByPrimaryKeySelective(Creditrule);
		DBCommit();
	}
	/**
	 * 添加
	 * @param question
	 * @return
	 */
	public String add(Creditrule Creditrule){
		Creditrule.setId(UUID.randomUUID().toString());
		creditruleMapper.insert(Creditrule);
		DBCommit();
		return Creditrule.getId();
	}
	/**
	 * 删除 
	 * @param id
	 */
	public void del(String id){
		creditruleMapper.deleteByPrimaryKey(id);
		DBCommit();
	}
	public CreditruleMapper getCreditruleMapper() {
		return creditruleMapper;
	}

	public void setCreditruleMapper(CreditruleMapper creditruleMapper) {
		this.creditruleMapper = creditruleMapper;
	}
}
