package cn.freeteam.cms.freemarker.directive;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import cn.freeteam.base.BaseDirective;
import cn.freeteam.cms.model.Info;
import cn.freeteam.cms.service.InfoService;
import cn.freeteam.cms.service.SiteService;
import cn.freeteam.util.DateUtil;
import freemarker.core.Environment;
import freemarker.ext.beans.BeanModel;
import freemarker.ext.beans.BeansWrapper;
import freemarker.template.SimpleNumber;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * 
 * <p>Title: WorkloadDirective.java</p>
 * 
 * <p>Description:工作量排行 </p>
 * 
 * 参数
 * siteid	站点id
 * num		提取数量
 * 
 * 返回值
 * 返回值
 * info			信息对象
 * index		索引
 * 
 * <p>Date: Jul 8, 2013</p>
 * 
 * <p>Time: 9:17:05 PM</p>
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
public class WorkloadDirective extends BaseDirective implements TemplateDirectiveModel{

	private InfoService infoService;
	public WorkloadDirective() {
		init("infoService");
	}
	public void execute(Environment env, Map params, TemplateModel[] loopVars, 
			TemplateDirectiveBody body)throws TemplateException, IOException {
		
		//获取参数
		//站点id
		String siteid=getParam(params, "siteid");
		//提取数量
		int num=getParamInt(params, "num",1);
		
		if (body!=null) {
			//设置循环变量
			if (loopVars!=null && loopVars.length>0 ) {
				Info info=new Info();
				info.setSite(siteid);
				List<Info> infoList=infoService.workload(info, 1, num);
				if (infoList!=null && infoList.size()>0) {
					for (int i = 0; i < infoList.size(); i++) {
						loopVars[0]=new BeanModel(infoList.get(i),new BeansWrapper());  
						if(loopVars.length>1){
							loopVars[1]=new SimpleNumber(i);
						}
						body.render(env.getOut());  
					}
				}
			}
		}
	}
	public InfoService getInfoService() {
		return infoService;
	}
	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}
}