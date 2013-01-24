package cn.freeteam.cms.util;

import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerFactory;
import org.quartz.impl.StdSchedulerFactory;

import cn.freeteam.cms.model.Htmlquartz;
import cn.freeteam.cms.service.HtmlquartzService;
/**
 * 
 * <p>Title: QuartzInitializer.java</p>
 * 
 * <p>Description: 处理所有调度</p>
 * 
 * <p>Date: Jan 24, 2013</p>
 * 
 * <p>Time: 7:27:59 PM</p>
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
public class QuartzInitializer extends HttpServlet{
	public static SchedulerFactory schedFact ;
	public static Scheduler sched;
	public void init(ServletConfig config) throws ServletException { 
		HtmlquartzService htmlquartzService=new HtmlquartzService();
		//查询所有调度
		List<Htmlquartz> htmlquartzList=htmlquartzService.findAll();
		if (htmlquartzList!=null && htmlquartzList.size()>0) {
			Htmlquartz htmlquartz;
			//创建调度工厂
			schedFact = new StdSchedulerFactory();
			try {
				sched = schedFact.getScheduler();
				sched.start();
				for (int i = 0; i < htmlquartzList.size(); i++) {
					htmlquartz=htmlquartzList.get(i);
					
					JobDetail jobDetail = null;
					CronTrigger trigger = null;
					if (htmlquartz.getChannelid()!=null && htmlquartz.getChannelid().trim().length()>0) {
						//栏目静态化调度
						jobDetail = new JobDetail("HtmlChannelJob"+htmlquartz.getChannelid(), "HtmlChannelJob",HtmlChannelJob.class);
						trigger = new CronTrigger("HtmlChannelTrigger"+htmlquartz.getChannelid(), "HtmlChannelTrigger");
					}else if (htmlquartz.getSiteid()!=null && htmlquartz.getSiteid().trim().length()>0) {
						//站点静态化调度
						jobDetail = new JobDetail("HtmlSiteJob"+htmlquartz.getSiteid(), "HtmlSiteJob",HtmlSiteJob.class);
						trigger = new CronTrigger("HtmlSiteTrigger"+htmlquartz.getSiteid(), "HtmlSiteTrigger");
					}
					if (jobDetail!=null && trigger!=null) {
						//设置参数
						jobDetail.getJobDataMap().put("siteid", htmlquartz.getSiteid());
						jobDetail.getJobDataMap().put("channelid", htmlquartz.getChannelid());
						jobDetail.getJobDataMap().put("servletContext", config.getServletContext());
						//设置触发器
						String triggerStr="";
						if (Htmlquartz.TYPE_EXETIME.equals(htmlquartz.getType()) && 
								(htmlquartz.getExetimehour()>0 || htmlquartz.getExetimemin()>0)) {
							//定时执行
							triggerStr="0 "+htmlquartz.getExetimemin()+" "+htmlquartz.getExetimehour()+" * * ? ";
						}else if (Htmlquartz.TYPE_INTERVAL.equals(htmlquartz.getType())) {
							//间隔重复执行
							//每小时
							if (Htmlquartz.INTERVALTYPE_HOUR.equals(htmlquartz.getIntervaltype()) 
									&& htmlquartz.getIntervalhour()>0) {
								triggerStr="0 0 0/"+htmlquartz.getIntervalhour()+" * * ? ";
							}
							//每分钟
							else if (Htmlquartz.INTERVALTYPE_MIN.equals(htmlquartz.getIntervaltype()) 
									&& htmlquartz.getIntervalmin()>0) {
								triggerStr="0 0/"+htmlquartz.getIntervalmin()+" * * * ? ";
							}
						}
						if (triggerStr.trim().length()>0) {
							trigger.setCronExpression(triggerStr); 
							//添加到调度对列
							sched.scheduleJob(jobDetail, trigger);
						}
					}
				}
			} catch (Exception e) {
				System.out.println("QuartzInitializer失败");
				e.printStackTrace();
			}
		}
	}
}
