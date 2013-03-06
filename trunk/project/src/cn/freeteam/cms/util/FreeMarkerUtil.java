package cn.freeteam.cms.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletContext;

import cn.freeteam.cms.freemarker.directive.AjaxInfoClickDirective;
import cn.freeteam.cms.freemarker.directive.AjaxLoadDirective;
import cn.freeteam.cms.freemarker.directive.ChannelDirective;
import cn.freeteam.cms.freemarker.directive.ChannelListDirective;
import cn.freeteam.cms.freemarker.directive.ChannelPathDirective;
import cn.freeteam.cms.freemarker.directive.CommentPageDirective;
import cn.freeteam.cms.freemarker.directive.ConfigDirective;
import cn.freeteam.cms.freemarker.directive.InfoAttchsDirective;
import cn.freeteam.cms.freemarker.directive.InfoListDirective;
import cn.freeteam.cms.freemarker.directive.InfoPageDirective;
import cn.freeteam.cms.freemarker.directive.InfoSearchDirective;
import cn.freeteam.cms.freemarker.directive.InfoSignDirective;
import cn.freeteam.cms.freemarker.directive.LinkClassDirective;
import cn.freeteam.cms.freemarker.directive.LinkDirective;
import cn.freeteam.cms.freemarker.directive.MailListDirective;
import cn.freeteam.cms.freemarker.directive.MailPageDirective;
import cn.freeteam.cms.freemarker.directive.MailQueryDirective;
import cn.freeteam.cms.freemarker.directive.MailSaveDirective;
import cn.freeteam.cms.freemarker.directive.QuestionListDirective;
import cn.freeteam.cms.freemarker.directive.QuestionOneDirective;
import cn.freeteam.cms.freemarker.directive.QuestionPageDirective;
import cn.freeteam.cms.freemarker.directive.URLDecoderDirective;
import cn.freeteam.cms.freemarker.directive.URLEncoderDirective;
import cn.freeteam.cms.freemarker.directive.UnitListDirective;
import cn.freeteam.cms.freemarker.directive.UserListDirective;
import cn.freeteam.cms.freemarker.directive.VideoDirective;


import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModelException;

/**
 * 
 * <p>Title: FreeMarkerUtil.java</p>
 * 
 * <p>Description: freemarker工具类</p>
 * 
 * <p>Date: Mar 9, 2012</p>
 * 
 * <p>Time: 4:00:48 PM</p>
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
public class FreeMarkerUtil {

	 /**     
	  * 生成静态页面主方法     默认编码为UTF-8
	  * @param context ServletContext     
	  * @param data 一个Map的数据结果集     
	  * @param templatePath ftl模版路径     
	  * @param htmlPath 生成静态页面的路径   
	 * @throws TemplateException 
	 * @throws IOException 
	  */    
	public static void createHTML(ServletContext context,Map<String,Object> data,String templatePath,String htmlPath) throws IOException, TemplateException{
		createHTML(context, data, "UTF-8", templatePath, "UTF-8", htmlPath);
	}
	 /**     
	  * 生成静态页面主方法     
	  * @param context ServletContext     
	  * @param data 一个Map的数据结果集     
	  * @param templatePath ftl模版路径     
	  * @param templateEncode ftl模版编码     
	  * @param htmlPath 生成静态页面的路径   
	  * @param htmlEncode 生成静态页面的编码     
	 * @throws IOException 
	 * @throws TemplateException 
	  */    
	public static void createHTML(ServletContext context,Map<String,Object> data,String templetEncode,String templatePath,String htmlEncode,String htmlPath) throws IOException, TemplateException{
		
		Configuration freemarkerCfg=initCfg(context, templetEncode);
		  
		//指定模版路径            
		Template template = freemarkerCfg.getTemplate(templatePath,templetEncode);            
		template.setEncoding(templetEncode);            
		//静态页面路径                      
		File htmlFile = new File(htmlPath);            
		Writer writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(htmlFile), htmlEncode));            
		//处理模版              
		template.process(data, writer);            
		writer.flush();            
		writer.close();        
	}
	/**
	 * 处理页面后，装处理结果放入指定Out
	 * @param context
	 * @param data
	 * @param templatePath
	 * @throws TemplateModelException 
	 */
	public static void createWriter(ServletContext context,Map<String,Object> data,String templatePath,Writer writer) throws TemplateModelException{
		createWriter(context, data, "UTF-8", templatePath, "UTF-8",writer);
	}
	public static void createWriter(ServletContext context,Map<String,Object> data,String templetEncode,String templatePath,String htmlEncode,Writer writer) throws TemplateModelException{

		Configuration freemarkerCfg=initCfg(context, templetEncode);
		
		try {            
			//指定模版路径            
			Template template = freemarkerCfg.getTemplate(templatePath,templetEncode);            
			template.setEncoding(templetEncode);            
			//处理模版              
			template.process(data, writer);        
		} catch (Exception e) {            
			e.printStackTrace();        
		}
	}
	/**
	 * 初始化freemarker配置
	 * @return
	 * @throws TemplateModelException 
	 */
	public static Configuration initCfg(ServletContext context,String templetEncode) throws TemplateModelException{

		Configuration freemarkerCfg=null;
		//判断context中是否有freemarkerCfg属性
		if (context.getAttribute("freemarkerCfg")!=null) {
			freemarkerCfg=(Configuration)context.getAttribute("freemarkerCfg");
		}else {
			freemarkerCfg = new Configuration();        
			//加载模版        
			freemarkerCfg.setServletContextForTemplateLoading(context, "/");        
			freemarkerCfg.setEncoding(Locale.getDefault(), templetEncode);    
			
			//加载自定义标签
			//栏目类
			freemarkerCfg.setSharedVariable("channel", new ChannelDirective());
			freemarkerCfg.setSharedVariable("channelList", new ChannelListDirective());
			freemarkerCfg.setSharedVariable("channelPath", new ChannelPathDirective());
			//信息类
			freemarkerCfg.setSharedVariable("infoList", new InfoListDirective());
			freemarkerCfg.setSharedVariable("infoPage", new InfoPageDirective());
			freemarkerCfg.setSharedVariable("infoAttchs", new InfoAttchsDirective());
			freemarkerCfg.setSharedVariable("infoSearch", new InfoSearchDirective());
			freemarkerCfg.setSharedVariable("infoSign", new InfoSignDirective());
			//链接类
			freemarkerCfg.setSharedVariable("linkClass", new LinkClassDirective());
			freemarkerCfg.setSharedVariable("link", new LinkDirective());
			//Ajax类
			freemarkerCfg.setSharedVariable("ajaxInfoClick", new AjaxInfoClickDirective());
			freemarkerCfg.setSharedVariable("ajaxLoad", new AjaxLoadDirective());
			//单位类
			freemarkerCfg.setSharedVariable("unitList", new UnitListDirective());
			//用户类
			freemarkerCfg.setSharedVariable("userList", new UserListDirective());
			//系统配置
			freemarkerCfg.setSharedVariable("config", new ConfigDirective());
			//信件
			freemarkerCfg.setSharedVariable("mailSave", new MailSaveDirective());
			freemarkerCfg.setSharedVariable("mailQuery", new MailQueryDirective());
			freemarkerCfg.setSharedVariable("mailList", new MailListDirective());
			freemarkerCfg.setSharedVariable("mailPage", new MailPageDirective());
			//网上调查
			freemarkerCfg.setSharedVariable("questionOne", new QuestionOneDirective());
			freemarkerCfg.setSharedVariable("questionList", new QuestionListDirective());
			freemarkerCfg.setSharedVariable("questionPage", new QuestionPageDirective());
			//评论
			freemarkerCfg.setSharedVariable("commentPage", new CommentPageDirective());
			//其它
			freemarkerCfg.setSharedVariable("video", new VideoDirective());
			freemarkerCfg.setSharedVariable("URLEncoder", new URLEncoderDirective());
			freemarkerCfg.setSharedVariable("URLDecoder", new URLDecoderDirective());
		}
		return freemarkerCfg;
	}
}