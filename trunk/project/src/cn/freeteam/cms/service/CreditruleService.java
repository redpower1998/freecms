package cn.freeteam.cms.service;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.CreditruleMapper;
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

	public CreditruleMapper getCreditruleMapper() {
		return creditruleMapper;
	}

	public void setCreditruleMapper(CreditruleMapper creditruleMapper) {
		this.creditruleMapper = creditruleMapper;
	}
}
