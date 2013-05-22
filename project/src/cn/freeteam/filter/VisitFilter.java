package cn.freeteam.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;


import cn.freeteam.base.BaseService;
import cn.freeteam.cms.model.Site;
import cn.freeteam.cms.model.Visit;
import cn.freeteam.cms.service.SiteService;
import cn.freeteam.cms.service.VisitService;

public class VisitFilter extends BaseService {
	
	private SiteService siteService;
	private VisitService visitService;
	/**
	 * 过滤处理的方法
	 */
	public void doFilter(final ServletRequest req, final ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hreq = (HttpServletRequest) req;
		String uri=hreq.getRequestURI().replaceFirst(hreq.getContextPath(), "");
		String queryString=hreq.getQueryString();
		try {
			Visit visit=null;
			if (uri.startsWith("/site/") && uri.endsWith(".html")) {
				//访问静态页面
				//提取站点源文件夹 
				String uri1=uri.replaceFirst("/site/", "");
				String siteFloder=uri1.substring(0, uri1.indexOf("/"));
				//查询是否有此站点
				init("siteService");
				Site site=siteService.findBySourcepath(siteFloder);
				if(site!=null){
					visit=new Visit();
					visit.setSiteid(site.getId());
					//提取栏目id
					String uri2=uri1.replaceFirst(siteFloder+"/", "");
					String channelid=uri2.substring(0, uri2.indexOf("/"));
					if (channelid!=null && channelid.length()>0) {
						visit.setChannelid(channelid);
						//提取信息id
						if (uri2.indexOf("/info/")>-1) {
							String infoid=uri2.substring(uri2.lastIndexOf("/")+1, uri2.lastIndexOf("."));
							if (infoid!=null && infoid.length()>0) {
								visit.setInfoid(infoid);
							}
						}
					}
				}
			}
			if (visit!=null) {
				//添加访问记录
				visit.setAddtime(new Date());
				visit.setUrl(uri+(queryString!=null?"?"+queryString:""));
				visit.setIp(hreq.getRemoteAddr());
				init("visitService");
				visitService.add(visit);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public SiteService getSiteService() {
		return siteService;
	}

	public void setSiteService(SiteService siteService) {
		this.siteService = siteService;
	}

	public VisitService getVisitService() {
		return visitService;
	}

	public void setVisitService(VisitService visitService) {
		this.visitService = visitService;
	}


}
