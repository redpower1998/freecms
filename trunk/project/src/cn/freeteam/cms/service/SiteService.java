package cn.freeteam.cms.service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.SchedulerException;
import org.quartz.Trigger;


import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.SiteMapper;
import cn.freeteam.cms.model.Htmlquartz;
import cn.freeteam.cms.model.Site;
import cn.freeteam.cms.model.SiteExample;
import cn.freeteam.cms.model.SiteExample.Criteria;
import cn.freeteam.cms.util.FreeMarkerUtil;
import cn.freeteam.cms.util.HtmlChannelJob;
import cn.freeteam.cms.util.HtmlSiteJob;
import cn.freeteam.cms.util.QuartzUtil;
import cn.freeteam.util.FileUtil;
import cn.freeteam.util.OperLogUtil;


import freemarker.template.TemplateException;
import freemarker.template.TemplateModelException;

/**
 * 
 * <p>Title: SiteService.java</p>
 * 
 * <p>Description: 站点相关服务</p>
 * 
 * <p>Date: Jan 21, 2012</p>
 * 
 * <p>Time: 2:31:27 PM</p>
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
public class SiteService extends BaseService{

	private SiteMapper siteMapper;
	private HtmlquartzService htmlquartzService;
	
	
	public SiteService(){
		initMapper("siteMapper");
	}
	
	
	/**
	 * 查询是否有子数据
	 * @param parId
	 * @return
	 */
	public boolean hasChildren(String parId){
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andParidEqualTo(parId);
		return siteMapper.countByExample(example)>0;
	}
	/**
	 * 查询子站点
	 * @param parid
	 * @return
	 */
	public List<Site> selectByParId(String parid){
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andParidEqualTo(parid);
		example.setOrderByClause("ordernum");
		return siteMapper.selectByExample(example);
	}
	/**
	 * 查询第一个子站点
	 * @param parid
	 * @return
	 */
	public Site selectFirstByParId(String parid){
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andParidEqualTo(parid);
		example.setOrderByClause("ordernum");
		example.setCurrPage(1);
		example.setPageSize(1);
		List<Site> list = siteMapper.selectPageByExample(example);
		if (list!=null && list.size()>0) {
			return list.get(0);
		}
		return null;
	}
	/**
	 * 查询角色可管理站点
	 * @param parid
	 * @return
	 */
	public List<Site> selectByRoles(String roles){
		if (roles!=null && roles.trim().length()>0) {
			SiteExample example=new SiteExample();
			Criteria criteria=example.createCriteria();
			criteria.andSql(" id in (select siteid from freecms_role_site where roleid in ("+roles+" ))");
			example.setOrderByClause("ordernum");
			return siteMapper.selectByExample(example);
		}
		return null;
	}
	/**
	 * 查询用户第一个可管理站点
	 * @param parid
	 * @return
	 */
	public Site selectFirstByRoles(String roles){
		if (roles!=null && roles.trim().length()>0) {
			SiteExample example=new SiteExample();
			Criteria criteria=example.createCriteria();
			criteria.andSql(" id in (select siteid from freecms_role_site where roleid in ("+roles+" ))");
			example.setOrderByClause("ordernum");
			example.setCurrPage(1);
			example.setPageSize(1);
			List<Site> list = siteMapper.selectPageByExample(example);
			if (list!=null && list.size()>0) {
				return list.get(0);
			}
		}
		return null;
	}
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public Site findById(String id){
		return siteMapper.selectByPrimaryKey(id);
	}
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public Site findByDomain(String domain,boolean cache){
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andSitedomainEqualTo(domain);
		example.setCurrPage(1);
		example.setPageSize(1);
		List<Site> list=null;
		if (cache) {
			list = siteMapper.selectPageByExampleCache(example);
		}else {
			list = siteMapper.selectPageByExample(example);
		}
		if (list!=null && list.size()>0) {
			return list.get(0);
		}
		return null;
	}
	/**
	 * 根据sourcepath查询
	 * @param id
	 * @return
	 */
	public Site findBySourcepath(String sourcepath){
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andSourcepathEqualTo(sourcepath);
		example.setCurrPage(1);
		example.setPageSize(1);
		List<Site> list = siteMapper.selectPageByExample(example);
		if (list!=null && list.size()>0) {
			return list.get(0);
		}
		return null;
	}
	/**
	 * 生成首页
	 * @param id
	 * @throws TemplateException 
	 * @throws IOException 
	 */
	public void html(String id,ServletContext context,String contextPath,HttpServletRequest request,String operuser) throws IOException, TemplateException{
		//查询站点
		Site site=findById(id);
		if (site!=null && site.getIndextemplet()!=null 
				&& site.getIndextemplet().trim().length()>0) {
			//生成静态页面
			Map<String,Object> data=new HashMap<String,Object>();
			//传递site参数
			data.put("site", site);
			data.put("contextPath", contextPath);
			data.put("contextPathNo", request.getContextPath());
			FreeMarkerUtil.createHTML(context, data, 
					"templet/"+site.getIndextemplet().trim()+"/index.html", 
					request.getRealPath("/")+"/site/"+site.getSourcepath()+"/index.html");
			OperLogUtil.log(operuser, "首页静态化:"+site.getName(), request);
		}
	}
	/**
	 * 生成首页
	 * @param id
	 * @throws TemplateException 
	 * @throws IOException 
	 */
	public void html(String id,ServletContext context) throws IOException, TemplateException{
		//查询站点
		Site site=findById(id);
		if (site!=null && site.getIndextemplet()!=null 
				&& site.getIndextemplet().trim().length()>0) {
			//生成静态页面
			Map<String,Object> data=new HashMap<String,Object>();
			//传递site参数
			data.put("site", site);
			data.put("contextPath", context.getContextPath()+"/");
			FreeMarkerUtil.createHTML(context, data, 
					"templet/"+site.getIndextemplet().trim()+"/index.html", 
					context.getRealPath("/")+"/site/"+site.getSourcepath()+"/index.html");
		}
	}
	/**
	 * 静态文件
	 * @param id
	 * @throws TemplateException 
	 * @throws IOException 
	 */
	public void delhtml(String id,HttpServletRequest request) throws IOException, TemplateException{
		//查询站点
		Site site=findById(id);
		if (site!=null ) {
			//删除静态页面
			String rootPath=request.getRealPath("/")+"/site/"+site.getSourcepath();
			//判断栏目文件夹是否存在
			File folder=new File(rootPath);
			if (folder.exists()) {
				FileUtil.deleteFile(folder);
			}
		}
	}
	/**
	 * 查询是否有此目录
	 * @param path
	 * @return
	 */
	public boolean haveSourcePath(String path){
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andSourcepathEqualTo(path);
		return siteMapper.countByExample(example)>0;
	}

	/**
	 * 更新
	 * @param site
	 */
	public void update(Site site){
		siteMapper.updateByPrimaryKey(site);
		DBCommit();
	}
	/**
	 * 添加
	 * @param site
	 * @return
	 */
	public String insert(Site site){
		site.setId(UUID.randomUUID().toString());
		siteMapper.insert(site);
		DBCommit();
		return site.getId();
	}
	/**
	 * 删除
	 * @param siteId
	 * @throws TemplateException 
	 * @throws IOException 
	 */
	public void del(String siteId,HttpServletRequest request) throws IOException, TemplateException{
		init("htmlquartzService");
		delhtml(siteId, request);
		delPar(siteId, request);
		siteMapper.deleteByPrimaryKey(siteId);
		DBCommit();
	}
	/**
	 * 递归删除
	 * @param parId
	 */
	public void delPar(String parId,HttpServletRequest request){
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andParidEqualTo(parId);
		List<Site> siteList=siteMapper.selectByExample(example);
		if (siteList!=null && siteList.size()>0) {
			for (int i = 0; i < siteList.size(); i++) {
				delPar(siteList.get(i).getId(), request);
			}
		}
		//删除静态化调度任务
		try {
			delHtmlSiteJob(parId);
		} catch (SchedulerException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//删除静态化调度数据
		htmlquartzService.delBySiteid(parId);
		siteMapper.deleteByPrimaryKey(parId);
	}
	/**
	 * 更新首页静态化调度任务
	 * @param site
	 * @throws SchedulerException 
	 * @throws ParseException 
	 */
	public void updateHtmlSiteJob(ServletContext servletContext,Site site,Htmlquartz htmlquartz) throws SchedulerException, ParseException{
		if (site!=null) {
			 Trigger trigger = QuartzUtil.getScheduler().getTrigger("HtmlSiteTrigger"+site.getId(),"HtmlSiteTrigger");  
			 if(trigger != null){  
				//停止触发器
				 QuartzUtil.getScheduler().pauseTrigger("HtmlSiteTrigger"+site.getId(),"HtmlSiteTrigger");
				//移除触发器
				 QuartzUtil.getScheduler().unscheduleJob("HtmlSiteTrigger"+site.getId(),"HtmlSiteTrigger"); 
				//删除任务 
				 QuartzUtil.getScheduler().deleteJob("HtmlSiteJob"+site.getId(),"HtmlSiteJob");
			 }
			 //创建任务
			JobDetail jobDetail = null;
			//站点静态化调度
			jobDetail = new JobDetail("HtmlSiteJob"+site.getId(), "HtmlSiteJob",HtmlSiteJob.class);
			trigger = new CronTrigger("HtmlSiteTrigger"+site.getId(), "HtmlSiteTrigger");
			if (jobDetail!=null && trigger!=null) {
				//设置参数
				jobDetail.getJobDataMap().put("siteid", site.getId());
				jobDetail.getJobDataMap().put("servletContext", servletContext);
				//设置触发器
				String triggerStr=QuartzUtil.getTriggerStr(htmlquartz);
				if (triggerStr.trim().length()>0) {
					((CronTrigger) trigger).setCronExpression(triggerStr); 
					//添加到调度对列
					QuartzUtil.getScheduler().scheduleJob(jobDetail, trigger);
				}
			}
		}
	}
	/**
	 * 删除首页静态化调度任务
	 * @param site
	 * @throws SchedulerException 
	 * @throws ParseException 
	 */
	public void delHtmlSiteJob(String siteid) throws SchedulerException, ParseException{
		if (siteid!=null) {
			 Trigger trigger = QuartzUtil.getScheduler().getTrigger("HtmlSiteTrigger"+siteid,"HtmlSiteTrigger");  
			 if(trigger != null){  
				//停止触发器
				 QuartzUtil.getScheduler().pauseTrigger("HtmlSiteTrigger"+siteid,"HtmlSiteTrigger");
				//移除触发器
				 QuartzUtil.getScheduler().unscheduleJob("HtmlSiteTrigger"+siteid,"HtmlSiteTrigger"); 
				//删除任务 
				 QuartzUtil.getScheduler().deleteJob("HtmlSiteJob"+siteid,"HtmlSiteJob");
			 }
		}
	}
	public SiteMapper getSiteMapper() {
		return siteMapper;
	}

	public void setSiteMapper(SiteMapper siteMapper) {
		this.siteMapper = siteMapper;
	}


	public HtmlquartzService getHtmlquartzService() {
		return htmlquartzService;
	}


	public void setHtmlquartzService(HtmlquartzService htmlquartzService) {
		this.htmlquartzService = htmlquartzService;
	}
}
