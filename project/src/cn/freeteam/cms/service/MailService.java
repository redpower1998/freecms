package cn.freeteam.cms.service;

import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.MailMapper;
import cn.freeteam.cms.model.Mail;
import cn.freeteam.cms.model.MailExample;
import cn.freeteam.cms.model.MailExample.Criteria;

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

	/**
	 * 分页查询
	 */
	public List<Mail> find(Mail mail,String order,int currPage,int pageSize){
		MailExample example=new MailExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(mail, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		example.setCurrPage(currPage);
		example.setPageSize(pageSize);
		return mailMapper.selectPageByExample(example);
	}
	/**
	 * 统计
	 * @param info
	 * @return
	 */
	public int count(Mail mail){
		MailExample example=new MailExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(mail, criteria);
		return mailMapper.countByExample(example);
	}
	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(Mail mail,Criteria criteria){
		if (mail!=null ) {
			if ("unit".equals(mail.getType())) {
				//部门信件
				criteria.andSql(" (unitid is not null and unitid != '') ");
			}else if ("user".equals(mail.getType())) {
				//个人信件
				criteria.andSql(" (userid is not null and userid != '') ");
			}else if ("other".equals(mail.getType())) {
				//其他信件
				criteria.andSql(" ((unitid is null or unitid = '') and (userid is null or userid = '')) ");
			}
			if (mail.getTitle()!=null && mail.getTitle().trim().length()>0) {
				criteria.andTitleLike("%"+mail.getTitle().trim()+"%");
			}
			if (mail.getWriter()!=null && mail.getWriter().trim().length()>0) {
				criteria.andWriterLike("%"+mail.getWriter().trim()+"%");
			}
			if (mail.getMailtype()!=null && mail.getMailtype().trim().length()>0) {
				criteria.andMailtypeEqualTo(mail.getMailtype().trim());
			}
		}
	}
	public MailMapper getMailMapper() {
		return mailMapper;
	}

	public void setMailMapper(MailMapper mailMapper) {
		this.mailMapper = mailMapper;
	}
}
