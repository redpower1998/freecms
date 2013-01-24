package cn.freeteam.cms.util;

import java.util.Date;

import javax.servlet.ServletContext;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import cn.freeteam.base.Base;
import cn.freeteam.cms.service.SiteService;
import freemarker.template.TemplateModelException;
/**
 * 
 * <p>Title: HtmlSiteJob.java</p>
 * 
 * <p>Description: 站点首页静态化任务</p>
 * 
 * <p>Date: Jan 24, 2013</p>
 * 
 * <p>Time: 7:31:03 PM</p>
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
public class HtmlSiteJob extends Base implements Job{
	private SiteService siteService;
	public HtmlSiteJob() {
		init("siteService");
	}
    public   void  execute(JobExecutionContext cntxt)  throws  JobExecutionException   {
    	if (cntxt.getJobDetail().getJobDataMap().get("siteid")!=null 
    			&& cntxt.getJobDetail().getJobDataMap().get("servletContext")!=null) {
    		try {
    			siteService.html(cntxt.getJobDetail().getJobDataMap().get("siteid")
    					.toString(), (ServletContext) cntxt.getJobDetail()
    					.getJobDataMap().get("servletContext"));
    		} catch (TemplateModelException e) {
    			System.out.println("站点首页静态化调度任务失败");
    			e.printStackTrace();
    		}
		}
    }
	public SiteService getSiteService() {
		return siteService;
	}
	public void setSiteService(SiteService siteService) {
		this.siteService = siteService;
	} 
}
