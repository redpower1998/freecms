package cn.freeteam.cms.action;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;


import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Channel;
import cn.freeteam.cms.model.Info;
import cn.freeteam.cms.model.InfoSign;
import cn.freeteam.cms.model.Site;
import cn.freeteam.cms.service.ChannelService;
import cn.freeteam.cms.service.InfoService;
import cn.freeteam.cms.service.InfoSignService;
import cn.freeteam.cms.service.RoleChannelService;
import cn.freeteam.cms.service.SiteService;
import cn.freeteam.model.Roles;
import cn.freeteam.model.Users;
import cn.freeteam.service.UserService;
import cn.freeteam.util.FileUtil;
import cn.freeteam.util.OperLogUtil;
import cn.freeteam.util.Pager;


/**
 * 
 * <p>Title: InfoAction.java</p>
 * 
 * <p>Description: 信息相关操作</p>
 * 
 * <p>Date: Feb 1, 2012</p>
 * 
 * <p>Time: 3:19:27 PM</p>
 * 
 * <p>Copyright: 2012</p>
 * 
 * <p>Company:  freeteam</p>
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
public class InfoAction extends BaseAction{
	
	private SiteService siteService;
	private ChannelService channelService;
	private InfoService infoService;
	private RoleChannelService roleChannelService;
	private UserService userService;
	private InfoSignService infoSignService;
	
	private List<Site> siteList;
	private List<Channel> channelList;
	private List<Info> infoList;
	private List<Users> userList;
	private List<InfoSign> infosignList;
	
	
	private Info info;
	private Site site;
	private Channel channel;
	private File videoUpload;
	private String videoUploadFileName;
	
	private String order=" addtime desc ";
	private String listPageFuncId;
	private String ids;
	private String logContent;
	private String type;
	private String[] signusers;
	private String msg;
	
	public InfoAction(){
		init("siteService","channelService","infoService",
				"roleChannelService","userService");
	}
	/**
	 * 信息列表
	 * @return
	 */
	public String list(){
		if (info==null) {
			info=new Info();
		}
		if (order.trim().length()==0) {
			order=" addtime desc ";
		}
		if (info.getChannel()!=null && info.getChannel().length()>0) {
			channel=channelService.findById(info.getChannel());
		}
		infoList=infoService.find(info, order, currPage, pageSize);
		totalCount=infoService.count(info);
		Pager pager=new Pager(getHttpRequest());
		pager.appendParam("info.channel");
		pager.appendParam("info.issign");
		pager.appendParam("info.iscomment");
		pager.appendParam("order");
		pager.appendParam("pageSize");
		pager.appendParam("pageFuncId");
		pager.setCurrPage(currPage);
		pager.setPageSize(pageSize);
		pager.setTotalCount(totalCount);
		pager.setOutStr("info_list.do");
		pageStr=pager.getOutStr();
		return "list";
	}
	/**
	 * 管理页面
	 * @return
	 */
	public String info(){

		site=getManageSite();
		if (site!=null) {
			//提取站点信息和此站点的一级栏目 
			channelList=channelService.findByPar(site.getId(), "par");
			if (channelList!=null && channelList.size()>0) {
				for (int i = 0; i < channelList.size(); i++) {
					if (channelService.hasChildren(channelList.get(i).getId())) {
						channelList.get(i).setHasChildren("1");
					}
					if (!isAdminLogin() && !isSiteAdmin()) {
						//如果是普通管理员则设置是否有权限管理
						if (roleChannelService.haves(getLoginRoleIdsSql(), channelList.get(i).getId())) {
							channelList.get(i).setHaveChannelRole("1");
						}
					}
				}
			}
		}
		return "info";
	}
	/**
	 * 编辑页面
	 * @return
	 */
	public String edit(){
		site=getManageSite();
		if (site!=null) {
			if (!isAdminLogin() && !isSiteAdmin()) {
				//普通用户只提取自己有权限的栏目
				channelList=channelService.findByRoles(site.getId(), getLoginRoleIdsSql());
			}
			//编辑
			if (info!=null && info.getId()!=null && info.getId().trim().length()>0) {
				info=infoService.findById(info.getId());
				channel=channelService.findById(info.getChannel());
				init("infoSignService");
				//查询签收用户
				infosignList=infoSignService.findByInfo(info.getId());
			}
			//添加,传递参数channel.id
			if (channel!=null && channel.getId()!=null && channel.getId().trim().length()>0) {
				channel=channelService.findById(channel.getId());
			}
			//查询所有用户，签收时使用
			userList=userService.findAll();
		}
		return "edit";
	}
	/**
	 * 编辑处理
	 * @return
	 */
	public String editDo(){
		site=getManageSite();
		if (info!=null) {
			String oper="添加";
			try {
				if (videoUpload!=null) {
					//生成目标文件
					String root=getHttpRequest().getRealPath("/");
					String ext=FileUtil.getExt(videoUploadFileName).toLowerCase();
					if (!".flv".equals(ext)) {
						msg="<script>alert('只能上传flv格式的视频!');history.back();</script>";
						return "msg";
					}
					String id=UUID.randomUUID().toString();
					File targetFile=new File(root+"\\upload\\"+site.getId()+"\\"+id+ext);
					File folder=new File(root+"\\upload\\"+site.getId()+"\\");
					if (!folder.exists()) {
						folder.mkdirs();
					}
					if (!targetFile.exists()) {
						targetFile.createNewFile();
					}
					//复制到目标文件
					FileUtil.copy(videoUpload, targetFile);

					//生成访问地址
					info.setVideo("/upload/"+site.getId()+"/"+id+ext);
				}
				if (info.getId()!=null && info.getId().trim().length()>0) {
					//更新
					oper="更新";
					Info oldInfo=infoService.findById(info.getId());
					if (oldInfo!=null) {
						oldInfo.setAuthor(info.getAuthor());
						oldInfo.setAddtime(info.getAddtime());
						oldInfo.setAttchs(info.getAttchs());
						oldInfo.setChannel(info.getChannel());
						oldInfo.setContent(info.getContent());
						oldInfo.setDescription(info.getDescription());
						oldInfo.setImg(info.getImg());
						oldInfo.setIstop(info.getIstop());
						oldInfo.setShorttitle(info.getShorttitle());
						oldInfo.setSite(info.getSite());
						oldInfo.setSource(info.getSource());
						oldInfo.setTags(info.getTags());
						oldInfo.setTemplet(info.getTemplet());
						oldInfo.setTitle(info.getTitle());
						oldInfo.setTitleblod(info.getTitleblod());
						oldInfo.setTitlecolor(info.getTitlecolor());
						oldInfo.setTopendtime(info.getTopendtime());
						oldInfo.setUrl(info.getUrl());
						oldInfo.setIssign(info.getIssign());
						oldInfo.setIscomment(info.getIscomment());
						oldInfo.setVideo(info.getVideo());
						oldInfo.setOpenendtime(info.getOpenendtime());
						oldInfo.setOpentimetype(info.getOpentimetype());
						oldInfo.setOpentype(info.getOpentype());
						oldInfo.setIndexnum(info.getIndexnum());
						infoService.update(oldInfo);
						OperLogUtil.log(getLoginName(), oper+"信息("+oldInfo.getTitle()+")成功", getHttpRequest());
					}
				}else{
					//添加
					if (info.getAddtime()==null) {
						info.setAddtime(new Date());
					}
					info.setAdduser(getLoginAdmin().getId());
					info.setClicknum(0);
					infoService.insert(info);
					OperLogUtil.log(getLoginName(), oper+"信息("+info.getTitle()+")成功", getHttpRequest());
				}
				//处理签收用户
				init("infoSignService");
				infoSignService.infoedit(info.getId(), signusers);
				//生成静态页面
				infoService.html(info.getId(), getServletContext(), getContextPath(), getHttpRequest(), getLoginName());
				if ("channel".equals(type)) {
					write("<script>alert('操作成功');location.href='info_list.do?info.channel="+info.getChannel()+"&pageFuncId="+pageFuncId+"';</script>", "GBK");
				}else {
					write("<script>alert('操作成功');location.href='info_edit.do?pageFuncId="+pageFuncId+"';</script>", "GBK");
				}
			} catch (Exception e) {
				DBProException(e);
				OperLogUtil.log(getLoginName(), oper+"信息("+info.getTitle()+")失败:"+e.toString(), getHttpRequest());
				write("<script>alert('操作失败:"+e.toString()+"');history.back();</script>", "GBK");
			}
		}
		return null;
	}

	/**
	 * 删除
	 * @return
	 */
	public String del(){
		if (ids!=null && ids.trim().length()>0) {
			StringBuilder sb=new StringBuilder();
			String[] idArr=ids.split(";");
			if (idArr!=null && idArr.length>0) {
				for (int i = 0; i < idArr.length; i++) {
					if (idArr[i].trim().length()>0) {
						try {
							info=infoService.findById(idArr[i]);
							if (info!=null) {
								infoService.del(idArr[i]);
								sb.append(idArr[i]+";");
								logContent="删除信息("+info.getTitle()+")成功!";
							}
						} catch (Exception e) {
							DBProException(e);
							logContent="删除信息("+info.getTitle()+")失败:"+e.toString()+"!";
						}
						OperLogUtil.log(getLoginName(), logContent, getHttpRequest());
					}
				}
			}
			write(sb.toString(), "GBK");
		}
		return null;
	}
	
	
	
	//set and get
	public Info getInfo() {
		return info;
	}
	public void setInfo(Info info) {
		this.info = info;
	}




	public SiteService getSiteService() {
		return siteService;
	}




	public void setSiteService(SiteService siteService) {
		this.siteService = siteService;
	}
	public List<Site> getSiteList() {
		return siteList;
	}
	public void setSiteList(List<Site> siteList) {
		this.siteList = siteList;
	}
	public List<Channel> getChannelList() {
		return channelList;
	}
	public void setChannelList(List<Channel> channelList) {
		this.channelList = channelList;
	}
	public ChannelService getChannelService() {
		return channelService;
	}
	public void setChannelService(ChannelService channelService) {
		this.channelService = channelService;
	}
	public InfoService getInfoService() {
		return infoService;
	}
	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}
	public Site getSite() {
		return site;
	}
	public void setSite(Site site) {
		this.site = site;
	}
	public Channel getChannel() {
		return channel;
	}
	public void setChannel(Channel channel) {
		this.channel = channel;
	}
	public List<Info> getInfoList() {
		return infoList;
	}
	public void setInfoList(List<Info> infoList) {
		this.infoList = infoList;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	public String getListPageFuncId() {
		return listPageFuncId;
	}
	public void setListPageFuncId(String listPageFuncId) {
		this.listPageFuncId = listPageFuncId;
	}
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public String getLogContent() {
		return logContent;
	}
	public void setLogContent(String logContent) {
		this.logContent = logContent;
	}
	public RoleChannelService getRoleChannelService() {
		return roleChannelService;
	}
	public void setRoleChannelService(RoleChannelService roleChannelService) {
		this.roleChannelService = roleChannelService;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public List<Users> getUserList() {
		return userList;
	}
	public void setUserList(List<Users> userList) {
		this.userList = userList;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String[] getSignusers() {
		return signusers;
	}
	public void setSignusers(String[] signusers) {
		this.signusers = signusers;
	}
	public InfoSignService getInfoSignService() {
		return infoSignService;
	}
	public void setInfoSignService(InfoSignService infoSignService) {
		this.infoSignService = infoSignService;
	}
	public List<InfoSign> getInfosignList() {
		return infosignList;
	}
	public void setInfosignList(List<InfoSign> infosignList) {
		this.infosignList = infosignList;
	}
	public File getVideoUpload() {
		return videoUpload;
	}
	public void setVideoUpload(File videoUpload) {
		this.videoUpload = videoUpload;
	}
	public String getVideoUploadFileName() {
		return videoUploadFileName;
	}
	public void setVideoUploadFileName(String videoUploadFileName) {
		this.videoUploadFileName = videoUploadFileName;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
}
