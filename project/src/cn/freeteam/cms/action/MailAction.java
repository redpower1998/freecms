package cn.freeteam.cms.action;

import java.util.List;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Mail;
import cn.freeteam.cms.service.MailService;
import cn.freeteam.service.ConfigService;
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
	
	private Mail mail;
	private List<Mail> mailList;
	private String order;
	private String[] mailtypes;
	
	public MailAction() {
		init("mailService");
	}

	/**
	 * 列表
	 * @return
	 */
	public String list(){
		mailtypes=getConfig().get("mailType").toString().split(",");
		if (mail==null ){
			mail=new Mail();
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
}
