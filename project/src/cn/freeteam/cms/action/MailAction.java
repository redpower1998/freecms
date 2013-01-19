package cn.freeteam.cms.action;

import java.util.List;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Mail;
import cn.freeteam.cms.service.MailService;
import cn.freeteam.model.Unit;
import cn.freeteam.model.Users;
import cn.freeteam.service.ConfigService;
import cn.freeteam.service.UnitService;
import cn.freeteam.service.UserService;
import cn.freeteam.util.Pager;

/**
 * 
 * <p>Title: MailAction.java</p>
 * 
 * <p>Description: 互动信件</p>
 * 
 * <p>Date: Jan 18, 2013</p>
 * 
 * <p>Time: 8:58:23 PM</p>
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
public class MailAction extends BaseAction{

	private MailService mailService;
	private UnitService unitService;
	private UserService userService;
	
	private Mail mail;
	private List<Mail> mailList;
	private String order;
	private String[] mailtypes;
	private List<Unit> unitList;
	private List<Users> userList;
	private Unit unit;
	private Users user;
	private String msg;
	private String pageFuncId;
	private String forwardtype;
	

	public MailAction() {
		init("mailService");
	}

	/**
	 * 列表
	 * @return
	 */
	public String list(){
		init("unitService","userService");
		unitList=unitService.findByPar("", "1", "1");
		user=new Users();
		user.setIsmail("1");
		userList=userService.find(user);
		mailtypes=getConfig().get("mailType").toString().split(",");
		if (mail==null ){
			mail=new Mail();
		}
		if (!isAdminLogin()) {
			//不是admin,只能查看自己所属单位或个人的
			if ("unit".equals(mail.getType())) {
				mail.setUnitids(getLoginUnitIdsSql());
				if (mail.getUnitids().trim().length()==0) {
					mail.setUnitids("'no'");
				}
			}else if ("user".equals(mail.getType())) {
				mail.setUserid(getLoginAdmin().getId());
			}
		}
		mailList=mailService.find(mail, order, currPage, pageSize);
		totalCount=mailService.count(mail);
		Pager pager=new Pager(getHttpRequest());
		pager.appendParam("mail.type");
		pager.appendParam("order");
		pager.appendParam("pageSize");
		pager.appendParam("pageFuncId");
		pager.setCurrPage(currPage);
		pager.setPageSize(pageSize);
		pager.setTotalCount(totalCount);
		pager.setOutStr("mail_list.do");
		pageStr=pager.getOutStr();
		return "list";
	}
	/**
	 * 转交
	 * @return
	 */
	public String forward(){
		init("unitService","userService");
		unitList=unitService.findByPar("", "1", "1");
		user=new Users();
		user.setIsmail("1");
		userList=userService.find(user);
		return "forward";
	}
	/**
	 * 转交处理
	 * @return
	 */
	public String forwardDo(){
		Mail updateMail=new Mail();
		updateMail.setId(mail.getId());
		if ("unit".equals(forwardtype)) {
			updateMail.setUnitid(mail.getUnitid());
			updateMail.setUserid("");
		}else {
			updateMail.setUnitid("");
			updateMail.setUserid(mail.getUserid());
		}
		mailService.update(updateMail);
		msg="<script>alert('转交成功');location.href='mail_list.do?mail.type="+mail.getType()+"&pageFuncId="+pageFuncId+"';</script>";
		return "msg";
	}
	public MailService getMailService() {
		return mailService;
	}

	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}
	public Mail getMail() {
		return mail;
	}

	public void setMail(Mail mail) {
		this.mail = mail;
	}


	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public List<Mail> getMailList() {
		return mailList;
	}

	public void setMailList(List<Mail> mailList) {
		this.mailList = mailList;
	}

	public String[] getMailtypes() {
		return mailtypes;
	}

	public void setMailtypes(String[] mailtypes) {
		this.mailtypes = mailtypes;
	}

	public List<Unit> getUnitList() {
		return unitList;
	}

	public void setUnitList(List<Unit> unitList) {
		this.unitList = unitList;
	}

	public List<Users> getUserList() {
		return userList;
	}

	public void setUserList(List<Users> userList) {
		this.userList = userList;
	}

	public UnitService getUnitService() {
		return unitService;
	}

	public void setUnitService(UnitService unitService) {
		this.unitService = unitService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public Unit getUnit() {
		return unit;
	}

	public void setUnit(Unit unit) {
		this.unit = unit;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getPageFuncId() {
		return pageFuncId;
	}

	public void setPageFuncId(String pageFuncId) {
		this.pageFuncId = pageFuncId;
	}

	public String getForwardtype() {
		return forwardtype;
	}

	public void setForwardtype(String forwardtype) {
		this.forwardtype = forwardtype;
	}
}
