package cn.freeteam.cms.action;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.service.CreditruleService;
/**
 * 
 * <p>Title: CreditruleAction.java</p>
 * 
 * <p>Description:积分规则相关操作 </p>
 * 
 * <p>Date: Feb 4, 2013</p>
 * 
 * <p>Time: 7:52:23 PM</p>
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
public class CreditruleAction extends BaseAction{

	private CreditruleService creditruleService;
	
	public CreditruleAction() {
		init("creditruleService");
	}

	public CreditruleService getCreditruleService() {
		return creditruleService;
	}

	public void setCreditruleService(CreditruleService creditruleService) {
		this.creditruleService = creditruleService;
	}
}
