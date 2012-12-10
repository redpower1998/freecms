package cn.freeteam.cms.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;


import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.SiteMapper;
import cn.freeteam.cms.model.Site;
import cn.freeteam.cms.model.SiteExample;
import cn.freeteam.cms.model.SiteExample.Criteria;
import cn.freeteam.cms.util.FreeMarkerUtil;
import cn.freeteam.util.OperLogUtil;


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
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andSql(" id in (select siteid from freecms_role_site where roleid in ("+roles+" ))");
		example.setOrderByClause("ordernum");
		return siteMapper.selectByExample(example);
	}
	/**
	 * 查询用户第一个可管理站点
	 * @param parid
	 * @return
	 */
	public Site selectFirstByRoles(String roles){
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
	 * 生成首页
	 * @param id
	 * @throws TemplateModelException 
	 */
	public void html(String id,ServletContext context,String contextPath,HttpServletRequest request,String operuser) throws TemplateModelException{
		//查询站点
		Site site=findById(id);
		if (site!=null && site.getIndextemplet()!=null 
				&& site.getIndextemplet().trim().length()>0) {
			//生成静态页面
			Map<String,Object> data=new HashMap<String,Object>();
			//传递site参数
			data.put("site", site);
			data.put("contextPath", contextPath);
			FreeMarkerUtil.createHTML(context, data, 
					"templet/"+site.getIndextemplet().trim()+"/首页.html", 
					request.getRealPath("/")+"/site/"+site.getSourcepath()+"/index.html");
			OperLogUtil.log(operuser, "首页静态化:"+site.getName(), request);
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
	 */
	public void del(String siteId){
		delPar(siteId);
		siteMapper.deleteByPrimaryKey(siteId);
		DBCommit();
	}
	/**
	 * 递归删除
	 * @param parId
	 */
	public void delPar(String parId){
		SiteExample example=new SiteExample();
		Criteria criteria=example.createCriteria();
		criteria.andParidEqualTo(parId);
		List<Site> siteList=siteMapper.selectByExample(example);
		if (siteList!=null && siteList.size()>0) {
			for (int i = 0; i < siteList.size(); i++) {
				delPar(siteList.get(i).getId());
			}
		}
		siteMapper.deleteByPrimaryKey(parId);
	}
	public SiteMapper getSiteMapper() {
		return siteMapper;
	}

	public void setSiteMapper(SiteMapper siteMapper) {
		this.siteMapper = siteMapper;
	}
}
