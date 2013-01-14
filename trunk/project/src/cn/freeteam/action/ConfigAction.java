package cn.freeteam.action;

import java.util.List;

import cn.freeteam.base.BaseAction;
import cn.freeteam.model.Config;
import cn.freeteam.service.ConfigService;
/**
 * 
 * <p>Title: ConfigAction.java</p>
 * 
 * <p>Description: 系统配置相关操作</p>
 * 
 * <p>Date: Jan 14, 2013</p>
 * 
 * <p>Time: 8:26:09 PM</p>
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
public class ConfigAction extends BaseAction{

	private ConfigService configService;
	
	private List<Config> configList;
	
	public ConfigAction() {
		init("configService");
	}
	/**
	 * 配置页面
	 * @return
	 */
	public String config(){
		//提取所有系统配置项目
		configList=configService.find();
		return "config";
	}

	public ConfigService getConfigService() {
		return configService;
	}

	public void setConfigService(ConfigService configService) {
		this.configService = configService;
	}
	public List<Config> getConfigList() {
		return configList;
	}
	public void setConfigList(List<Config> configList) {
		this.configList = configList;
	}
}
