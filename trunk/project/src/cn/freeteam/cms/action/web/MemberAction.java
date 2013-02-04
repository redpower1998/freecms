package cn.freeteam.cms.action.web;

import java.io.File;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Member;
import cn.freeteam.cms.model.Membergroup;
import cn.freeteam.cms.service.MemberService;
import cn.freeteam.cms.service.MembergroupService;
import cn.freeteam.util.FileUtil;
import cn.freeteam.util.MD5;
import cn.freeteam.util.OperLogUtil;

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
	private String ValidateCode;
	public MemberAction() {
		init("memberService");
	}

	/**
	 * 注册处理
	 * @return
	 */
	public String register(){
		try {
			init("membergroupService");

		    HttpSession session =getHttpSession();
			if (ValidateCode!=null && !ValidateCode.equals(session.getAttribute("rand"))) {
				write("<script>alert('验证码错误!');history.back();</script>", "UTF-8");
				return null;
			}
			//判断用户是否存在
			if (memberService.have(member)) {
				write("<script>alert('此会员名已存在!');history.back();</script>", "UTF-8");
				return null;
			}
			member.setPwd(MD5.MD5(member.getPwd()));
			member.setAddtime(new Date());
			member.setIsok("1");
			member.setGrouptype(0);
			member.setExperience(0);
			member.setCredit(0);
			//默认注册会员是经验会员并处理所属会员组
			if (member.getExperience()!=null) {
				membergroup=membergroupService.findByExperience(0);
				if (membergroup!=null) {
					member.setGroupid(membergroup.getId());
				}else {
					member.setGroupid("");
				}
			}else {
				member.setGroupid("");
			}
			memberService.add(member);
		} catch (Exception e) {
			DBProException(e);
			write(e.toString(), "GBK");
		}
		return showMessage("恭喜您，注册成功了!<br>正在跳转到会员中心!", "login.jsp", 5);
	}

	/**
	 * 检查登录名是否重复
	 * @return
	 */
	public String checkLoginname(){
		//判断用户是否存在
		if (memberService.have(member)) {
			write("此会员名已存在!", "UTF-8");
			return null;
		}
		return null;
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

	public String getValidateCode() {
		return ValidateCode;
	}

	public void setValidateCode(String validateCode) {
		ValidateCode = validateCode;
	}
}
