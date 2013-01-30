package cn.freeteam.cms.service;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.MemberauthMapper;

/**
 * 
 * <p>Title: MemberauthService.java</p>
 * 
 * <p>Description: 会员权限服务</p>
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
public class MemberauthService extends BaseService{

	private MemberauthMapper memberauthMapper;
	
	public MemberauthService() {
		initMapper("memberauthMapper");
	}

	public MemberauthMapper getMemberauthMapper() {
		return memberauthMapper;
	}

	public void setMemberauthMapper(MemberauthMapper memberauthMapper) {
		this.memberauthMapper = memberauthMapper;
	}
}
