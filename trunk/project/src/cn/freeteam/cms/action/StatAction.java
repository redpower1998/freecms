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
	private String statType;
	private int sum;
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
		sum=infoService.workloadSum(info);
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
		sum=infoService.workloadSum(info);
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
		sum=infoService.siteStatSum(info);
		if ("1".equals(export)) {
			infoList=infoService.siteStat(info);
			return "sysSiteStatExport";
		}else {
			infoList=infoService.siteStat(info, currPage, pageSize);
			totalCount=infoService.siteStatCount(info);
			return "sysSiteStat";
		}
	}
	/**
	 * 栏目信息统计 
	 * @return
	 */
	public String channelStat(){
		if (info==null) {
			info=new Info();
		}
		info.setInfosite(getManageSite().getId());
		infoList=infoService.channelStat(info);
		sum=infoService.channelStatSum(info);
		if ("1".equals(export)) {
			return "channelStatExport";
		}else {
			totalCount=infoService.channelStatCount(info);
			return "channelStat";
		}
	}

	/**
	 * 信息更新统计 
	 * @return
	 */
	public String infoUpdate(){
		if (info==null) {
			info=new Info();
		}
		info.setInfosite(getManageSite().getId());
		if ("year".equals(statType)) {
			//按年统计
			sum=infoService.infoUpdateYearSum(info);
			if ("1".equals(export)) {
				infoList=infoService.infoUpdateYear(info);
				return "infoUpdateExport";
			}else {
				infoList=infoService.infoUpdateYear(info, currPage, pageSize);
				totalCount=infoService.infoUpdateYearCount(info);
				return "infoUpdate";
			}
		}
		else if ("month".equals(statType)) {
			//按月统计
			sum=infoService.infoUpdateMonthSum(info);
			if ("1".equals(export)) {
				infoList=infoService.infoUpdateMonth(info);
				return "infoUpdateExport";
			}else {
				infoList=infoService.infoUpdateMonth(info, currPage, pageSize);
				totalCount=infoService.infoUpdateMonthCount(info);
				return "infoUpdate";
			}
		}
		else if ("day".equals(statType)) {
			//按日统计
			sum=infoService.infoUpdateDaySum(info);
			if ("1".equals(export)) {
				infoList=infoService.infoUpdateDay(info);
				return "infoUpdateExport";
			}else {
				infoList=infoService.infoUpdateDay(info, currPage, pageSize);
				totalCount=infoService.infoUpdateDayCount(info);
				return "infoUpdate";
			}
		}
		else if ("week".equals(statType)) {
			//按周统计
			sum=infoService.infoUpdateWeekSum(info);
			infoList=infoService.infoUpdateWeek(info);
			if ("1".equals(export)) {
				return "infoUpdateExport";
			}else {
				return "infoUpdate";
			}
		}
		return "infoUpdate";
	}

	/**
	 * 系统信息更新统计 
	 * @return
	 */
	public String sysInfoUpdate(){
		if (info==null) {
			info=new Info();
		}
		if ("year".equals(statType)) {
			//按年统计
			sum=infoService.infoUpdateYearSum(info);
			if ("1".equals(export)) {
				infoList=infoService.infoUpdateYear(info);
				return "sysInfoUpdateExport";
			}else {
				infoList=infoService.infoUpdateYear(info, currPage, pageSize);
				totalCount=infoService.infoUpdateYearCount(info);
				return "sysInfoUpdate";
			}
		}
		else if ("month".equals(statType)) {
			//按月统计
			sum=infoService.infoUpdateMonthSum(info);
			if ("1".equals(export)) {
				infoList=infoService.infoUpdateMonth(info);
				return "sysInfoUpdateExport";
			}else {
				infoList=infoService.infoUpdateMonth(info, currPage, pageSize);
				totalCount=infoService.infoUpdateMonthCount(info);
				return "sysInfoUpdate";
			}
		}
		else if ("day".equals(statType)) {
			//按日统计
			sum=infoService.infoUpdateDaySum(info);
			if ("1".equals(export)) {
				infoList=infoService.infoUpdateDay(info);
				return "sysInfoUpdateExport";
			}else {
				infoList=infoService.infoUpdateDay(info, currPage, pageSize);
				totalCount=infoService.infoUpdateDayCount(info);
				return "sysInfoUpdate";
			}
		}
		else if ("week".equals(statType)) {
			//按周统计
			sum=infoService.infoUpdateWeekSum(info);
			infoList=infoService.infoUpdateWeek(info);
			if ("1".equals(export)) {
				return "sysInfoUpdateExport";
			}else {
				return "sysInfoUpdate";
			}
		}
		return "sysInfoUpdate";
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
	public String getStatType() {
		return statType;
	}
	public void setStatType(String statType) {
		this.statType = statType;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
}
