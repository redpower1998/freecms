package cn.freeteam.cms.action;

import java.util.List;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Link;
import cn.freeteam.cms.model.Templet;
import cn.freeteam.cms.model.TempletLink;
import cn.freeteam.cms.service.TempletLinkService;
import cn.freeteam.cms.service.TempletService;
import cn.freeteam.util.Pager;

/**
 * 
 * <p>Title: TempletLinkAction.java</p>
 * 
 * <p>Description: 模板链接相关操作</p>
 * 
 * <p>Date: May 8, 2013</p>
 * 
 * <p>Time: 8:43:09 PM</p>
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
public class TempletLinkAction extends BaseAction{

	private TempletLinkService templetLinkService;
	private Templet templet;
	private TempletLink templetLink;
	private List<TempletLink> templetLinkList;
	private TempletService templetService;
	private String order=" ordernum ";//默认按排序号
	
	public Templet getTemplet() {
		return templet;
	}


	public void setTemplet(Templet templet) {
		this.templet = templet;
	}


	public TempletLink getTempletLink() {
		return templetLink;
	}


	public void setTempletLink(TempletLink templetLink) {
		this.templetLink = templetLink;
	}


	public List<TempletLink> getTempletLinkList() {
		return templetLinkList;
	}


	public void setTempletLinkList(List<TempletLink> templetLinkList) {
		this.templetLinkList = templetLinkList;
	}


	public TempletLinkAction() {
		init("templetLinkService","templetService");
	}
	

	/**
	 * 链接类别
	 * @return
	 */
	public String clazz(){
		if (templet!=null && templet.getId()!=null && templet.getId().trim().length()>0) {
			templet=templetService.findById(templet.getId());
			if (templet!=null) {
				if (templetLink==null ){
					templetLink=new TempletLink();
				}
				if(templetLink.getTemplet()==null || templetLink.getTemplet().trim().length()==0) {
					templetLink.setTemplet(templet.getId());
				}
				//只有选择模板才查询
				if (templetLink!=null && templetLink.getTemplet()!=null && templetLink.getTemplet().trim().length()>0) {
					templetLink.setIsClass("1");
					if (order.trim().length()==0) {
						order=" ordernum ";
					}
					templetLinkList=templetLinkService.findAll(templetLink, order);
				}
			}
		}
		return "class";
	}

	public TempletLinkService getTempletLinkService() {
		return templetLinkService;
	}

	public void setTempletLinkService(TempletLinkService templetLinkService) {
		this.templetLinkService = templetLinkService;
	}


	public TempletService getTempletService() {
		return templetService;
	}


	public void setTempletService(TempletService templetService) {
		this.templetService = templetService;
	}


	public String getOrder() {
		return order;
	}


	public void setOrder(String order) {
		this.order = order;
	}
}
