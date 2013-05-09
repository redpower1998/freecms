package cn.freeteam.cms.service;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.TempletChannelMapper;
import cn.freeteam.cms.model.Templet;
import cn.freeteam.cms.model.TempletChannel;
import cn.freeteam.cms.model.TempletChannelExample;
import cn.freeteam.cms.model.TempletChannelExample.Criteria;
import cn.freeteam.util.XMLUtil;
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
	 * 根据站点和父id查询
	 * @param siteid
	 * @param parid
	 * @return
	 */
	public List<TempletChannel> findByParWithBLOBs(String templetid,String parid){
		return findByParWithBLOBs(templetid, parid, null,null);
	}
	/**
	 * 根据站点和父id查询
	 * @param siteid
	 * @param parid
	 * @return
	 */
	public List<TempletChannel> findByParWithBLOBs(String templetid,String parid,String state,String navigation){
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
		return templetChannelMapper.selectByExampleWithBLOBs(example);
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
	/**
	 * 生成指定模板的栏目初始化数据xml文件
	 * @param templetid
	 */
	public void createXML(Templet templet,HttpServletRequest request){
		if (templet!=null) {
			//查找是否有栏目数据
			List<TempletChannel> list=findByParWithBLOBs(templet.getId(), null);
			if (list!=null && list.size()>0) {
				//生成xml
				Document document = DocumentHelper.createDocument();
				//添加元素 channels
		        Element channelsElement = document.addElement("channels");
		        //给channels元素添加属性 xmlns:xs="http://www.w3.org/2001/XMLSchema"
		        channelsElement.addAttribute("xmlns:xs", "http://www.w3.org/2001/XMLSchema");
		        for (int i = 0; i < list.size(); i++) {
		        	TempletChannel templetChannel=list.get(i);
			        //添加元素channel
			        Element channelElement = channelsElement.addElement("channel");
			        if (templetChannel.getId()!=null) {
				        //添加channel子元素 id
				        Element idElement = channelElement.addElement("id");
				        idElement.setText(templetChannel.getId());
			        }
			        if (templetChannel.getName()!=null) {
				        //添加channel子元素 name
				        Element nameElement = channelElement.addElement("name");
				        nameElement.setText(templetChannel.getName());
			        }
			        if (templetChannel.getTemplet()!=null) {
				        //添加channel子元素 templet
				        Element templetElement = channelElement.addElement("templet");
				        templetElement.setText(templetChannel.getTemplet());
			        }
			        if (templetChannel.getContenttemplet()!=null) {
				        //添加channel子元素 contenttemplet
				        Element contenttempletElement = channelElement.addElement("contenttemplet");
				        contenttempletElement.setText(templetChannel.getContenttemplet());
			        }
			        if (templetChannel.getImg()!=null) {
				        //添加channel子元素 img
				        Element imgElement = channelElement.addElement("img");
				        imgElement.setText(templetChannel.getImg());
			        }
			        if (templetChannel.getDescription()!=null) {
				        //添加channel子元素 description
				        Element descriptionElement = channelElement.addElement("description");
				        descriptionElement.addCDATA(templetChannel.getDescription());
			        }
			        if (templetChannel.getParid()!=null) {
				        //添加channel子元素 parid
				        Element paridElement = channelElement.addElement("parid");
				        paridElement.setText(templetChannel.getParid());
			        }
			        if (templetChannel.getUrl()!=null) {
				        //添加channel子元素 url
				        Element urlElement = channelElement.addElement("url");
				        urlElement.setText(templetChannel.getUrl());
			        }
			        if (templetChannel.getState()!=null) {
				        //添加channel子元素 state
				        Element stateElement = channelElement.addElement("state");
				        stateElement.setText(templetChannel.getState());
			        }
			        if (templetChannel.getOrdernum()!=null) {
				        //添加channel子元素 ordernum
				        Element ordernumElement = channelElement.addElement("ordernum");
				        ordernumElement.setText(""+templetChannel.getOrdernum());
			        }
			        if (templetChannel.getNavigation()!=null) {
				        //添加channel子元素 navigation
				        Element navigationElement = channelElement.addElement("navigation");
				        navigationElement.setText(templetChannel.getNavigation());
			        }
			        if (templetChannel.getPagemark()!=null) {
				        //添加channel子元素 pagemark
				        Element pagemarkElement = channelElement.addElement("pagemark");
				        pagemarkElement.setText(templetChannel.getPagemark());
			        }
			        if (templetChannel.getHtmlchannel()!=null) {
				        //添加channel子元素 htmlchannel
				        Element htmlchannelElement = channelElement.addElement("htmlchannel");
				        htmlchannelElement.setText(templetChannel.getHtmlchannel());
			        }
			        if (templetChannel.getHtmlchannelold()!=null) {
				        //添加channel子元素 htmlchannelold
				        Element htmlchanneloldElement = channelElement.addElement("htmlchannelold");
				        htmlchanneloldElement.setText(templetChannel.getHtmlchannelold());
			        }
			        if (templetChannel.getHtmlparchannel()!=null) {
				        //添加channel子元素 htmlparchannel
				        Element htmlparchannelElement = channelElement.addElement("htmlparchannel");
				        htmlparchannelElement.setText(templetChannel.getHtmlparchannel());
			        }
			        if (templetChannel.getHtmlsite()!=null) {
				        //添加channel子元素 htmlsite
				        Element htmlsiteElement = channelElement.addElement("htmlsite");
				        htmlsiteElement.setText(templetChannel.getHtmlsite());
			        }
				}
		        //生成xml文件
		        XMLUtil.writeFile(document, request.getRealPath("/")+"/templet/"+templet.getId()+"/channels.xml");
			}
		}
	}
	public TempletChannelMapper getTempletChannelMapper() {
		return templetChannelMapper;
	}

	public void setTempletChannelMapper(TempletChannelMapper templetChannelMapper) {
		this.templetChannelMapper = templetChannelMapper;
	}
}
