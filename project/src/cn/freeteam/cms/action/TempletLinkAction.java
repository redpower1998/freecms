package cn.freeteam.cms.action;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.service.TempletLinkService;

/**
 * 
 * <p>Title: TempletLinkAction.java</p>
 * 
 * <p>Description: 模板链接相关操作</p>
 * 
 * <p>Date: May 8, 2013</p>
 * 
 * <p>Time: 8:43:09 PM</p>
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
public class TempletLinkAction extends BaseAction{

	private TempletLinkService templetLinkService;
	
	public TempletLinkAction() {
		init("templetLinkService");
	}

	public TempletLinkService getTempletLinkService() {
		return templetLinkService;
	}

	public void setTempletLinkService(TempletLinkService templetLinkService) {
		this.templetLinkService = templetLinkService;
	}
}
