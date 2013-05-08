package cn.freeteam.cms.service;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.TempletChannelMapper;
import cn.freeteam.cms.model.TempletChannel;
import cn.freeteam.cms.model.TempletChannelExample;
import cn.freeteam.cms.model.TempletChannelExample.Criteria;
import freemarker.template.TemplateException;

/**
 * 
 * <p>Title: TempletChannelService.java</p>
 * 
 * <p>Description: 模板栏目相关服务</p>
 * 
 * <p>Date: Jan 23, 2012</p>
 * 
 * <p>Time: 11:49:58 AM</p>
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
public class TempletChannelService extends BaseService{

	private TempletChannelMapper templetChannelMapper;
	
	public TempletChannelService() {
		initMapper("templetChannelMapper");
	}
	

	/**
	 * 根据站点和父id查询
	 * @param siteid
	 * @param parid
	 * @return
	 */
	public List<TempletChannel> findByPar(String templetid,String parid){
		return findByPar(templetid, parid, null,null);
	}
	/**
	 * 根据站点和父id查询
	 * @param siteid
	 * @param parid
	 * @return
	 */
	public List<TempletChannel> findByPar(String templetid,String parid,String state,String navigation){
		TempletChannelExample example=new TempletChannelExample();
		Criteria criteria=example.createCriteria();
		if (templetid!=null && templetid.trim().length()>0) {
			criteria.andTempletidEqualTo(templetid.trim());
		}
		if (parid!=null && parid.trim().length()>0 && !"par".equals(parid)) {
			criteria.andParidEqualTo(parid.trim());
		}
		if ("par".equals(parid)) {
			criteria.andSql(" (parid is null or parid = '') ");
		}
		if (state!=null && state.trim().length()>0) {
			criteria.andStateEqualTo(state.trim());
		}
		if (navigation!=null && navigation.trim().length()>0) {
			criteria.andNavigationEqualTo(navigation.trim());
		}
		example.setOrderByClause(" orderNum ");
		return templetChannelMapper.selectByExample(example);
	}

	/**
	 * 查询是否有子数据
	 * @param parId
	 * @return
	 */
	public boolean hasChildren(String parId){
		TempletChannelExample example=new TempletChannelExample();
		Criteria criteria=example.createCriteria();
		criteria.andParidEqualTo(parId);
		return templetChannelMapper.countByExample(example)>0;
	}

	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public TempletChannel findById(String id){
		return templetChannelMapper.selectByPrimaryKey(id);
	}
	/**
	 * 更新
	 * @param TempletChannel
	 */
	public void update(TempletChannel templetChannel){
		templetChannelMapper.updateByPrimaryKeyWithBLOBs(templetChannel);
		DBCommit();
	}
	/**
	 * 添加
	 * @param TempletChannel
	 */
	public String insert(TempletChannel templetChannel){
		String id=UUID.randomUUID().toString();
		templetChannel.setId(id);
		templetChannelMapper.insert(templetChannel);
		DBCommit();
		return id;
	}

	/**
	 * 删除
	 * @param templetId
	 * @throws TemplateException 
	 * @throws IOException 
	 */
	public void del(String id,HttpServletRequest request) throws IOException, TemplateException{
		TempletChannel templetChannel=findById(id);
		if (templetChannel!=null) {
			delPar(id,request);
			templetChannelMapper.deleteByPrimaryKey(id);
			DBCommit();
		}
	}
	/**
	 * 递归删除
	 * @param parId
	 * @throws TemplateException 
	 * @throws IOException 
	 */
	public void delPar(String parId,HttpServletRequest request) throws IOException, TemplateException{
		TempletChannelExample example=new TempletChannelExample();
		Criteria criteria=example.createCriteria();
		criteria.andParidEqualTo(parId);
		List<TempletChannel> TempletChannelList=templetChannelMapper.selectByExample(example);
		if (TempletChannelList!=null && TempletChannelList.size()>0) {
			for (int i = 0; i < TempletChannelList.size(); i++) {
				delPar(TempletChannelList.get(i).getId(),request);
			}
		}
		templetChannelMapper.deleteByPrimaryKey(parId);
	}

	/**
	 * 判断是否已存在此页面标识
	 * @param pagemark
	 * @return
	 */
	public boolean hasPagemark(String templetid,String pagemark){
		TempletChannelExample example=new TempletChannelExample();
		Criteria criteria=example.createCriteria();
		criteria.andTempletidEqualTo(templetid);
		criteria.andPagemarkEqualTo(pagemark);
		return templetChannelMapper.countByExample(example)>0;
	}
	public TempletChannelMapper getTempletChannelMapper() {
		return templetChannelMapper;
	}

	public void setTempletChannelMapper(TempletChannelMapper templetChannelMapper) {
		this.templetChannelMapper = templetChannelMapper;
	}
}
