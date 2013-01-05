package cn.freeteam.base;

import java.util.Map;

/**
 * 
 * <p>Title: BaseDirective.java</p>
 * 
 * <p>Description: 自定义标签共同的功能</p>
 * 
 * <p>Date: May 13, 2012</p>
 * 
 * <p>Time: 9:39:01 PM</p>
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
public class BaseDirective extends Base{

	/**
	 * 获得参数
	 * @param params
	 * @param name
	 * @return
	 */
	public String getParam(Map params,String name){
		String value="";
		if (params.get(name)!=null && params.get(name).toString().length()>0) {
			value=params.get(name).toString();
		}
		return value;
	}
	/**
	 * 获得参数并传递默认值 
	 * @param params
	 * @param name
	 * @param defaultValue
	 * @return
	 */
	public String getParam(Map params,String name,String defaultValue){
		String value=defaultValue;
		if (params.get(name)!=null && params.get(name).toString().length()>0) {
			value=params.get(name).toString();
		}
		return value;
	}
	/**
	 * 获得int参数并传递默认值 
	 * @param params
	 * @param name
	 * @param defaultValue
	 * @return
	 */
	public int getParamInt(Map params,String name,int defaultValue){
		int value=defaultValue;
		if (params.get(name)!=null && params.get(name).toString().length()>0) {
			try {
				value=Integer.parseInt(params.get(name).toString());
			} catch (Exception e) {
			}
		}
		return value;
	}
}
