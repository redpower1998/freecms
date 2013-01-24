package cn.freeteam.cms.util;

import javax.servlet.ServletContext;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import cn.freeteam.base.Base;
import cn.freeteam.cms.service.ChannelService;
import freemarker.template.TemplateModelException;

/**
 * 
 * <p>Title: HtmlChannelJob.java</p>
 * 
 * <p>Description: 栏目页面静态化任务</p>
 * 
 * <p>Date: Jan 24, 2013</p>
 * 
 * <p>Time: 7:32:54 PM</p>
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
public class HtmlChannelJob extends Base implements Job{

	private ChannelService channelService;
	
	public HtmlChannelJob() {
		init("channelService");
	}

    public   void  execute(JobExecutionContext cntxt)  throws  JobExecutionException   {
    	if (cntxt.getJobDetail().getJobDataMap().get("siteid")!=null 
    			&& cntxt.getJobDetail().getJobDataMap().get("channelid")!=null 
    			&& cntxt.getJobDetail().getJobDataMap().get("servletContext")!=null) {
    		try {
    			channelService.html(cntxt.getJobDetail().getJobDataMap().get("siteid")
    					.toString(), cntxt.getJobDetail().getJobDataMap().get("channelid")
    					.toString(), (ServletContext) cntxt.getJobDetail()
    					.getJobDataMap().get("servletContext"));
    		} catch (TemplateModelException e) {
    			System.out.println("站点栏目页静态化调度任务失败");
    			e.printStackTrace();
    		}
		}
    }
	public ChannelService getChannelService() {
		return channelService;
	}

	public void setChannelService(ChannelService channelService) {
		this.channelService = channelService;
	}
}
