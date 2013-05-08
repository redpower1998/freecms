package cn.freeteam.cms.service;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.TempletLinkMapper;

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

	public TempletLinkMapper getTempletLinkMapper() {
		return templetLinkMapper;
	}

	public void setTempletLinkMapper(TempletLinkMapper templetLinkMapper) {
		this.templetLinkMapper = templetLinkMapper;
	}
}
