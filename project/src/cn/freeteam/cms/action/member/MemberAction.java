package cn.freeteam.cms.action.member;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Member;
import cn.freeteam.cms.model.Membergroup;
import cn.freeteam.cms.service.MemberService;
import cn.freeteam.cms.service.MembergroupService;
/**
 * 
 * <p>Title: MemberAction.java</p>
 * 
 * <p>Description:会员相关操作 </p>
 * 
 * <p>Date: Feb 1, 2013</p>
 * 
 * <p>Time: 8:00:46 PM</p>
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
public class MemberAction extends BaseAction{

	private MemberService memberService;
	private MembergroupService membergroupService;
	private Member member;
	private Membergroup membergroup;
	public MemberAction() {
		init("memberService");
	}
	/**
	 * 会员中心首页
	 * @return
	 */
	public String index(){
		return "index";
	}
	
	

	public MemberService getMemberService() {
		return memberService;
	}
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	public MembergroupService getMembergroupService() {
		return membergroupService;
	}
	public void setMembergroupService(MembergroupService membergroupService) {
		this.membergroupService = membergroupService;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Membergroup getMembergroup() {
		return membergroup;
	}
	public void setMembergroup(Membergroup membergroup) {
		this.membergroup = membergroup;
	}
}
