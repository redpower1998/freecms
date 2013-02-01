package cn.freeteam.cms.service;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.MembergroupAuthMapper;

/**
 * 
 * <p>Title: MembergroupAuthService.java</p>
 * 
 * <p>Description: 会员组权限服务</p>
 * 
 * <p>Date: Jan 30, 2013</p>
 * 
 * <p>Time: 8:53:38 PM</p>
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
public class MembergroupAuthService extends BaseService{

	private MembergroupAuthMapper membergroupAuthMapper;
	
	public MembergroupAuthService() {
		initMapper("membergroupAuthMapper");
	}

	public MembergroupAuthMapper getMembergroupAuthMapper() {
		return membergroupAuthMapper;
	}

	public void setMembergroupAuthMapper(MembergroupAuthMapper membergroupAuthMapper) {
		this.membergroupAuthMapper = membergroupAuthMapper;
	}
}
