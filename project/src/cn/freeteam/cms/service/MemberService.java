package cn.freeteam.cms.service;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.MemberMapper;

/**
 * 
 * <p>Title: MemberService.java</p>
 * 
 * <p>Description:会员相关服务 </p>
 * 
 * <p>Date: Feb 1, 2013</p>
 * 
 * <p>Time: 7:59:23 PM</p>
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
public class MemberService extends BaseService{

	private MemberMapper memberMapper;
	
	public MemberService() {
		initMapper("memberMapper");
	}

	public MemberMapper getMemberMapper() {
		return memberMapper;
	}

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}
}
