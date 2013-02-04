package cn.freeteam.base;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.struts2.ServletActionContext;

import cn.freeteam.cms.model.Site;
import cn.freeteam.model.Config;
import cn.freeteam.model.Roles;
import cn.freeteam.model.Unit;
import cn.freeteam.model.Users;
import cn.freeteam.service.ConfigService;
import cn.freeteam.service.RoleService;
import cn.freeteam.service.UnitService;



/**
 * action基类，提供共用方法
 * @author freeteam
 *
 */
public class BaseAction extends BaseService{

	public UnitService baseUnitService;
	public RoleService baseRoleService;
	public ConfigService baseConfigService;
	public int pageSize=10;
	public int currPage=1;
	public int totalCount=0;
	public String pageStr;
	public String pageFuncId;
	public String showMessage;
	public String forwardUrl="";
	public int forwardSeconds=0;
	public String getForwardUrl() {
		return forwardUrl;
	}
	public void setForwardUrl(String forwardUrl) {
		this.forwardUrl = forwardUrl;
	}
	public int getForwardSeconds() {
		return forwardSeconds;
	}
	public void setForwardSeconds(int forwardSeconds) {
		this.forwardSeconds = forwardSeconds;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public HttpSession getHttpSession(){
	    return ServletActionContext.getRequest().getSession();
	}
	public HttpServletRequest getHttpRequest(){
		return ServletActionContext.getRequest();
	}
	public HttpServletResponse getHttpResponse(){
		return ServletActionContext.getResponse();
	}
	public PageContext getPageContext(){
		return ServletActionContext.getPageContext();
	}
	public ServletContext getServletContext(){
		return ServletActionContext.getServletContext();
	}
	public Map<String, Object> getApplication(){
		return ServletActionContext.getContext().getApplication();
	}
	public String getBasePath(){
		String path = getHttpRequest().getContextPath();
		String basePath = getHttpRequest().getScheme()+"://"+getHttpRequest().getServerName()+":"+getHttpRequest().getServerPort()+path+"/";
		return basePath;
	}
	/**
	 * 获取配置
	 * @return
	 */
	public Map<String, Object> getConfig(){
		if (getApplication().get("config")!=null) {
			return (Map<String, Object>)getApplication().get("config");
		}else {
			//重新生成
			return setConfig();
		}
	}
	/**
	 * 设置配置
	 * @return
	 */
	public Map<String, Object> setConfig(){
		init("baseConfigService");
		List<Config> configList=baseConfigService.find();
		Map<String, Object> config=new HashMap<String, Object>();
		if (configList!=null && configList.size()>0) {
			for (int i = 0; i < configList.size(); i++) {
				config.put(configList.get(i).getCode(), configList.get(i).getConfigvalue());
			}
		}
		getApplication().put("config", config);
		return config;
	}
	public void write(String content,String charset){
		getHttpResponse().setCharacterEncoding(charset);
		getHttpResponse().setContentType("text/html;charset="+charset);
		try {
			getHttpResponse().getWriter().print(content);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 判断是否为admin登录
	 */
	public boolean isAdminLogin(){
		return "admin".equals(getLoginName());
	}
	/**
	 * 判断是否为站点总管理员
	 */
	public boolean isSiteAdmin(){
		if (getHttpSession().getAttribute("siteAdmin")!=null) {
			return (Boolean)getHttpSession().getAttribute("siteAdmin");
		}
		return false;
	}
	/**
	 * 获取当前管理站点 
	 * @return
	 */
	public Site getManageSite(){
		if (getHttpSession().getAttribute("manageSite")!=null) {
			//获取当前管理站点
			return (Site)getHttpSession().getAttribute("manageSite");
		}
		return null;
	}
	/**
	 * 获取session中的当有登录用户名
	 * @return
	 */
	public String getLoginName(){
		if (getLoginAdmin()!=null) {
			return getLoginAdmin().getLoginname();
		}
		return "";
	}
	/**
	 * 获取session中的当有登录用户
	 * @return
	 */
	public Users getLoginAdmin(){
		if (getHttpSession().getAttribute("loginAdmin")!=null) {
			return (Users)getHttpSession().getAttribute("loginAdmin");
		}
		return null;
	}
	/**
	 * 获取登录用户所属单位
	 * @return
	 */
	public List<Unit> getLoginUnits(){
		//先判断session是否存在
		HttpSession session=getHttpSession();
		if (session.getAttribute("loginUnits")!=null) {
			return (List<Unit>)session.getAttribute("loginUnits");
		}else {
			//不存在则重新提取
			init("baseUnitService");
			List<Unit> list = baseUnitService.findByUser(getLoginAdmin().getId());
			session.setAttribute("loginUnits", list);
			return list;
		}
	}
	/**
	 * 获取登录用户所属单位组成的sql语句
	 * 例:'','',''
	 * @return
	 */
	public String getLoginUnitIdsSql(){
		List<Unit> list=getLoginUnits();
		StringBuilder sb=new StringBuilder();
		if (list!=null && list.size()>0) {
			for (int i = 0; i < list.size(); i++) {
				if (i>0) {
					sb.append(",");
				}
				sb.append("'"+list.get(i).getId()+"'");
			}
		}
		return sb.toString();
	}
	/**
	 * 获取登录用户所属角色
	 * @return
	 */
	public List<Roles> getLoginRoles(){
		//先判断session是否存在
		HttpSession session=getHttpSession();
		if (session.getAttribute("loginRoles")!=null) {
			return (List<Roles>)session.getAttribute("loginRoles");
		}else {
			//不存在则重新提取
			init("baseRoleService");
			List<Roles> list = baseRoleService.findByUser(getLoginAdmin().getId());
			session.setAttribute("loginRoles", list);
			return list;
		}
	}
	/**
	 * 获取登录用户所属角色组成的sql语句
	 * 例:'','',''
	 * @return
	 */
	public String getLoginRoleIdsSql(){
		List<Roles> list=getLoginRoles();
		StringBuilder sb=new StringBuilder();
		if (list!=null && list.size()>0) {
			for (int i = 0; i < list.size(); i++) {
				if (i>0) {
					sb.append(",");
				}
				sb.append("'"+list.get(i).getId()+"'");
			}
		}
		return sb.toString();
	}
	/**
	 * 返回到通用信息提示页面
	 * @param msg
	 * @param url
	 * @param seconds
	 * @return
	 */
	public String showMessage(String showMessage,String forwardUrl,int forwardSeconds){
		this.showMessage=showMessage;
		this.forwardUrl=forwardUrl;
		this.forwardSeconds=forwardSeconds;
		return "showMessage";
	}
	public String getContextPath(){
		return getHttpRequest().getContextPath()+"/";
	}
	public String getPageStr() {
		return pageStr;
	}
	public void setPageStr(String pageStr) {
		this.pageStr = pageStr;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public String getPageFuncId() {
		return pageFuncId;
	}
	public void setPageFuncId(String pageFuncId) {
		this.pageFuncId = pageFuncId;
	}
	public UnitService getBaseUnitService() {
		return baseUnitService;
	}
	public void setBaseUnitService(UnitService baseUnitService) {
		this.baseUnitService = baseUnitService;
	}
	public RoleService getBaseRoleService() {
		return baseRoleService;
	}
	public void setBaseRoleService(RoleService baseRoleService) {
		this.baseRoleService = baseRoleService;
	}
	public ConfigService getBaseConfigService() {
		return baseConfigService;
	}
	public void setBaseConfigService(ConfigService baseConfigService) {
		this.baseConfigService = baseConfigService;
	}
	public String getShowMessage() {
		return showMessage;
	}
	public void setShowMessage(String showMessage) {
		this.showMessage = showMessage;
	}
}
