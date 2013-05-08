package cn.freeteam.cms.service;

import java.util.List;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.TempletLinkMapper;
import cn.freeteam.cms.model.Link;
import cn.freeteam.cms.model.TempletLink;
import cn.freeteam.cms.model.TempletLinkExample;
import cn.freeteam.cms.model.TempletLinkExample.Criteria;

/**
 * 
 * <p>Title: TempletLinkService.java</p>
 * 
 * <p>Description: 模板链接相关服务</p>
 * 
 * <p>Date: May 8, 2013</p>
 * 
 * <p>Time: 8:41:17 PM</p>
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
public class TempletLinkService extends BaseService{

	private TempletLinkMapper templetLinkMapper;
	
	public TempletLinkService() {
		initMapper("templetLinkMapper");
	}
	/**
	 * 查询
	 */
	public List<TempletLink> findAll(TempletLink templetLink,String order){
		TempletLinkExample example=new TempletLinkExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(templetLink, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		return templetLinkMapper.selectByExample(example);
	}

	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(TempletLink templetLink,Criteria criteria){
		if (templetLink!=null ) {
			if (templetLink.getTemplet()!=null && templetLink.getTemplet().trim().length()>0) {
				criteria.andTempletEqualTo(templetLink.getTemplet());
			}
			if ("1".equals(templetLink.getIsClass())) {
				criteria.andSql(" (parid is null or parid = '') ");
			}else {
				criteria.andSql(" (parid is not null and parid != '') ");
			}
			if (templetLink.getType()!=null && templetLink.getType().trim().length()>0) {
				criteria.andTypeEqualTo(templetLink.getType());
			}
		}
	}

	public TempletLinkMapper getTempletLinkMapper() {
		return templetLinkMapper;
	}

	public void setTempletLinkMapper(TempletLinkMapper templetLinkMapper) {
		this.templetLinkMapper = templetLinkMapper;
	}
}
