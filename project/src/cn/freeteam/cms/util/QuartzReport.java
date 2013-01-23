package cn.freeteam.cms.util;
import  org.quartz.CronTrigger;
import  org.quartz.Job;
import  org.quartz.JobDetail;
import  org.quartz.JobExecutionContext;
import  org.quartz.JobExecutionException;
import  org.quartz.Scheduler;
import  org.quartz.SchedulerFactory;
import org.quartz.impl.StdSchedulerFactory;

import  java.util.Date;

 public class QuartzReport implements  Job{

     public   void  execute(JobExecutionContext cntxt)  throws  JobExecutionException   {
       System.out.println( "输出："+cntxt.getJobDetail().getJobDataMap().get("name")+new Date());
    } 

     public static void  main(String[] args)   {
        try    {
           SchedulerFactory schedFact=new StdSchedulerFactory();
           Scheduler sched=schedFact.getScheduler();
           sched.start();
           JobDetail jobDetail=new JobDetail("a","b",QuartzReport.class);
           jobDetail.getJobDataMap().put("name","lucy");
           
           CronTrigger trigger=new  CronTrigger("c","d");
           trigger.setCronExpression("0/1 * * * * ? " ); // 启动之后立即执行 每一秒继续重复。 
           sched.scheduleJob(jobDetail, trigger);
           
       }   catch  (Exception e)   {
           e.printStackTrace();
       } 
   } 
} 

