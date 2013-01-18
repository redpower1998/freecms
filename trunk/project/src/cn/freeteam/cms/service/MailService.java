package cn.freeteam.cms.service;

import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.MailMapper;
import cn.freeteam.cms.model.Mail;

public class MailService extends BaseService{

	private MailMapper mailMapper;
	
	public MailService() {
		initMapper("mailMapper");
	}
	

	/**
	 * 添加
	 * @param mail
	 * @return
	 */
	public String insert(Mail mail){
		mail.setId(UUID.randomUUID().toString());
		mailMapper.insert(mail);
		DBCommit();
		return mail.getId();
	}

	public MailMapper getMailMapper() {
		return mailMapper;
	}

	public void setMailMapper(MailMapper mailMapper) {
		this.mailMapper = mailMapper;
	}
}
