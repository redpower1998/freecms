package cn.freeteam.cms.service;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.HtmlquartzMapper;

/**
 * 
 * <p>Title: HtmlquartzService.java</p>
 * 
 * <p>Description: 静态化调度服务类</p>
 * 
 * <p>Date: Jan 23, 2013</p>
 * 
 * <p>Time: 10:20:29 PM</p>
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
public class HtmlquartzService extends BaseService{

	private HtmlquartzMapper htmlquartzMapper;
	
	public HtmlquartzService() {
		initMapper("htmlquartzMapper");
	}

	public HtmlquartzMapper getHtmlquartzMapper() {
		return htmlquartzMapper;
	}

	public void setHtmlquartzMapper(HtmlquartzMapper htmlquartzMapper) {
		this.htmlquartzMapper = htmlquartzMapper;
	}
}
