package cn.freeteam.service;

import java.util.List;

import cn.freeteam.base.BaseService;
import cn.freeteam.dao.ConfigMapper;
import cn.freeteam.model.Config;
import cn.freeteam.model.ConfigExample;
import cn.freeteam.model.ConfigExample.Criteria;
/**
 * 
 * <p>Title: ConfigService.java</p>
 * 
 * <p>Description: 系统配置服务类</p>
 * 
 * <p>Date: Jan 14, 2013</p>
 * 
 * <p>Time: 8:27:11 PM</p>
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
public class ConfigService extends BaseService{

	private ConfigMapper configMapper;
	
	public ConfigService() {
		initMapper("configMapper");
	}
	/**
	 * 查询所有系统配置项目
	 * @return
	 */
	public List<Config> find(){
		ConfigExample example=new ConfigExample();
		example.setOrderByClause(" orderNum ");
		return configMapper.selectByExample(example);
	}

	public ConfigMapper getConfigMapper() {
		return configMapper;
	}

	public void setConfigMapper(ConfigMapper configMapper) {
		this.configMapper = configMapper;
	}
	
}
