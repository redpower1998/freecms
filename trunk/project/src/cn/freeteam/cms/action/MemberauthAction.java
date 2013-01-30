package cn.freeteam.cms.action;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.service.MemberauthService;
/**
 * 
 * <p>Title: MemberauthAction.java</p>
 * 
 * <p>Description: 会员权限相关操作</p>
 * 
 * <p>Date: Jan 30, 2013</p>
 * 
 * <p>Time: 8:55:06 PM</p>
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
public class MemberauthAction extends BaseAction{

	private MemberauthService memberauthService;
	
	public MemberauthAction() {
		init("memberauthService");
	}

	public MemberauthService getMemberauthService() {
		return memberauthService;
	}

	public void setMemberauthService(MemberauthService memberauthService) {
		this.memberauthService = memberauthService;
	}
}
