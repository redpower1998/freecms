package cn.freeteam.cms.action;

import java.util.List;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Info;
import cn.freeteam.cms.service.InfoService;
import cn.freeteam.util.Pager;

/**
 * 
 * <p>Title: StatAction.java</p>
 * 
 * <p>Description:关于站点的统计分析 </p>
 * 
 * <p>Date: Jan 21, 2012</p>
 * 
 * <p>Time: 2:30:58 PM</p>
 * 
 * <p>Copyright: 2012</p>
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
public class StatAction extends BaseAction{

	private InfoService infoService;
	private List<Info> infoList;
	private Info info;
	private String export;
	public StatAction() {
		init("infoService");
	}
	/**
	 * 工作量统计
	 * @return
	 */
	public String workload(){
		if (info==null) {
			info=new Info();
		}
		info.setSite(getManageSite().getId());
		infoList=infoService.workload(info, currPage, pageSize);
		totalCount=infoService.workloadCount(info);
		if ("1".equals(export)) {
			infoList=infoService.workload(info);
			return "workloadExport";
		}else {
			infoList=infoService.workload(info, currPage, pageSize);
			totalCount=infoService.workloadCount(info);
			return "workload";
		}
	}

	/**
	 * 系统 工作量统计
	 * @return
	 */
	public String sysWorkload(){
		if (info==null) {
			info=new Info();
		}
		if ("1".equals(export)) {
			infoList=infoService.workload(info);
			return "sysWorkloadExport";
		}else {
			infoList=infoService.workload(info, currPage, pageSize);
			totalCount=infoService.workloadCount(info);
			return "sysWorkload";
		}
	}
	/**
	 * 系统 站点内容统计 
	 * @return
	 */
	public String sysSiteStat(){
		if (info==null) {
			info=new Info();
		}
		if ("1".equals(export)) {
			infoList=infoService.siteStat(info);
			return "sysSiteStatExport";
		}else {
			infoList=infoService.siteStat(info, currPage, pageSize);
			totalCount=infoService.siteStatCount(info);
			return "sysSiteStat";
		}
	}
	
	
	
	//set and get
	public InfoService getInfoService() {
		return infoService;
	}
	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}
	public List<Info> getInfoList() {
		return infoList;
	}
	public void setInfoList(List<Info> infoList) {
		this.infoList = infoList;
	}
	public Info getInfo() {
		return info;
	}
	public void setInfo(Info info) {
		this.info = info;
	}
	public String getExport() {
		return export;
	}
	public void setExport(String export) {
		this.export = export;
	}
}
