package cn.freeteam.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import cn.freeteam.base.Base;
import cn.freeteam.cms.model.Site;
import cn.freeteam.cms.model.Visit;
import cn.freeteam.cms.service.SiteService;
import cn.freeteam.cms.service.VisitService;

public class VisitFilter extends Base implements Filter{
	protected FilterConfig filterConfig;
	
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
		System.out.println(hreq.getRequestURI().replaceFirst(hreq.getContextPath(), ""));
		System.out.println(hreq.getQueryString());
		try {
			Visit visit=null;
			if (uri.startsWith("/site/")) {
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
					String uri2=uri.replaceFirst(siteFloder+"/", "");
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
				init("visitService");
				visitService.add(visit);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		chain.doFilter(req, res);
	}

	public void setFilterConfig(final FilterConfig filterConfig) {
		this.filterConfig = filterConfig;
	}

	/**
	 * 销毁过滤器
	 */
	public void destroy() {
		this.filterConfig = null;
	}

	/**
	 * 初始化过滤器,和一般的Servlet一样，它也可以获得初始参数。
	 */
	public void init(FilterConfig config) throws ServletException {
		this.filterConfig = config;
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
