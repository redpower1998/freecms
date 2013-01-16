package cn.freeteam.cms.freemarker.directive;

import java.io.IOException;
import java.io.Writer;
import java.net.URLDecoder;
import java.util.Map;
import java.util.UUID;

import cn.freeteam.base.BaseDirective;
import freemarker.core.Environment;
import freemarker.ext.beans.BeansWrapper;
import freemarker.ext.beans.StringModel;
import freemarker.template.SimpleNumber;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * 
 * <p>Title: VideoDirective.java</p>
 * 
 * <p>Description: 视频播放标签</p>
 * 参数 
 * video		视频地址
 * img			视频截图地址
 * loadjs  		是否加载依赖的js
 * width		视频播放窗口宽度,默认300
 * height		视频播放窗口高度,默认200
 * targetid	    把页面加载到指定id元素下
 * 
 * 返回值
 * js   生成的js
 * 此标签依赖的文件
<script type="text/javascript" src="${contextPath}/js/jwplayer/jwplayer.min.js"></script>
 * <p>Date: Jan 16, 2013</p>
 * 
 * <p>Time: 8:36:43 PM</p>
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
public class VideoDirective extends BaseDirective implements TemplateDirectiveModel{

	public void execute(Environment env, Map params, TemplateModel[] loopVars, 
			TemplateDirectiveBody body)throws TemplateException, IOException {
		
		//获取参数
		//视频字符串
		String video=getParam(params, "video");
		//是否加载引用的js
		String loadjs=getParam(params, "loadjs");
		//视频播放窗口宽度
		String width=getParam(params, "width","300");
		//视频播放窗口高度
		String height=getParam(params, "height","200");
		//视频截图地址
		String img=getParam(params, "img");
		//把页面加载到指定id元素下
		String targetid=getParam(params, "targetid");
		
		Writer out =env.getOut();
		if (body!=null) {
			//设置循环变量
			if (loopVars!=null && loopVars.length>0 && video.trim().length()>0) {
				String contextPath=env.getDataModel().get("contextPath").toString();
				StringBuilder sb=new StringBuilder();
				if ("true".equals(loadjs)) {
					//导入js
					sb.append("<script src='"+contextPath+"js/jwplayer/jwplayer.min.js'></script>");
				}
				//生成唯一标识
				String uuid=UUID.randomUUID().toString().replace("-", "");
				//播放脚本
				sb.append("<script>");
				sb.append("jwplayer('"+targetid+"').setup({");
				sb.append("type:'http',");
				sb.append("id: 'playerID"+uuid+"',"); 
				sb.append("width: '"+width+"',");
				sb.append("height: '"+height+"',");
				sb.append("file:'"+(!video.startsWith("http:")&&!video.startsWith("https:")?contextPath:"")+video+"',");  //视频地址
				sb.append("image:'"+(!img.startsWith("http:")&&!img.startsWith("https:")?contextPath:"")+img+"',");  // 视频的图片
				sb.append("type:'http',");
				sb.append("controlbar: 'bottom',");
				sb.append("autostart:false,");
				sb.append("allowscriptaccess:'always',");
				sb.append("allowfullscreen:true,");
				sb.append("modes: [");
				sb.append("  { 'type': 'flash', 'src': '"+contextPath+"js/jwplayer/player.swf' },");
				sb.append("  { 'type': 'html5'},");
				sb.append("  { 'type': 'download' }");
				sb.append("]");
				sb.append("}); ");
				sb.append("</script>");
				loopVars[0]=new StringModel(sb.toString(),new BeansWrapper());  
				body.render(env.getOut()); 
			}
		}
	}
}
