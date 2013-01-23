package cn.freeteam.cms.util;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import cn.freeteam.cms.service.SiteService;
import freemarker.template.TemplateModelException;

public class QuartzInitializer extends HttpServlet{
	public void init(ServletConfig config) throws ServletException { 
		try {
			new SiteService().html("7a4d22d6-762b-46e5-895b-d62da52bf9cb", config.getServletContext());
		} catch (TemplateModelException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
