package cn.freeteam.cms.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Membergroup;
import cn.freeteam.cms.model.Site;
import cn.freeteam.cms.service.MembergroupService;
import cn.freeteam.util.FileUtil;
import cn.freeteam.util.OperLogUtil;
/**
 * 
 * <p>Title: MembergroupAction.java</p>
 * 
 * <p>Description: 会员组相关操作</p>
 * 
 * <p>Date: Jan 31, 2013</p>
 * 
 * <p>Time: 7:17:21 PM</p>
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
public class MembergroupAction extends BaseAction{
	private String msg;
	private String pageFuncId;
	private String order=" ordernum ";
	private String logContent;
	private String ids;
	
	private Membergroup membergroup;
	private List<Membergroup> membergroupList;
	private File img;
	private String imgFileName;
	private String oldImg;

	private MembergroupService membergroupService;
	
	public MembergroupAction() {
		init("membergroupService");
	}
	

	/**
	 * 列表
	 * @return
	 */
	public String list(){
		if (membergroup==null ){
			membergroup=new Membergroup();
		}
		membergroupList=membergroupService.find(membergroup, order);
		return "list";
	}

	/**
	 * 编辑页面
	 * @return
	 */
	public String edit(){
		if (membergroup!=null && membergroup.getId()!=null && membergroup.getId().trim().length()>0) {
			membergroup=membergroupService.findById(membergroup.getId());
		}
		return "edit";
	}

	/**
	 * 编辑处理
	 * @return
	 */
	public String editDo(){
		try {
			if (membergroup.getColor()!=null) {
				membergroup.setColor("#"+membergroup.getColor());
			}
			if (membergroup.getId()!=null && membergroup.getId().trim().length()>0) {
				//更新
				Membergroup oldmembergroup=membergroupService.findById(membergroup.getId());
				//如果原来有和现在的logo不同则删除原来的logo文件 
				if (!oldImg.equals(oldmembergroup.getImg())) {
					if(oldmembergroup.getImg()!=null &&  oldmembergroup.getImg().trim().length()>0){
						FileUtil.del(getHttpRequest().getRealPath("/")+oldmembergroup.getImg().trim().replaceAll("/", "\\\\"));
					}
				}else {
					membergroup.setImg(oldImg);
				}
				if (img!=null) {
					//生成目标文件
					String root=getHttpRequest().getRealPath("/");
					String ext=FileUtil.getExt(imgFileName).toLowerCase();
					if (!".jpg".equals(ext) && !".jpeg".equals(ext) && !".gif".equals(ext) && !".png".equals(ext)) {
						write("<script>alert('图标只能上传jpg,jpeg,gif,png格式的图片!');history.back();</script>", "UTF-8");
						return null;
					}
					String id=UUID.randomUUID().toString();
					File targetFile=new File(root+"\\upload\\member\\"+id+ext);
					File folder=new File(root+"\\upload\\member\\");
					if (!folder.exists()) {
						folder.mkdirs();
					}
					if (!targetFile.exists()) {
						targetFile.createNewFile();
					}
					//复制到目标文件
					FileUtil.copy(img, targetFile);

					//生成访问地址
					membergroup.setImg("/upload/member/"+id+ext);
				}
				membergroupService.update(membergroup);
				OperLogUtil.log(getLoginName(), "更新会员组 "+membergroup.getName(), getHttpRequest());
			}else {
				//添加
				if (img!=null) {
					//生成目标文件
					String root=getHttpRequest().getRealPath("/");
					String ext=FileUtil.getExt(imgFileName).toLowerCase();
					if (!".jpg".equals(ext) && !".jpeg".equals(ext) && !".gif".equals(ext) && !".png".equals(ext)) {
						write("<script>alert('图标只能上传jpg,jpeg,gif,png格式的图片!');history.back();</script>", "UTF-8");
						return null;
					}
					String id=UUID.randomUUID().toString();
					File targetFile=new File(root+"\\upload\\member\\"+id+ext);
					File folder=new File(root+"\\upload\\member\\");
					if (!folder.exists()) {
						folder.mkdirs();
					}
					if (!targetFile.exists()) {
						targetFile.createNewFile();
					}
					//复制到目标文件
					FileUtil.copy(img, targetFile);
					//生成访问地址
					membergroup.setImg("/upload/member/"+id+ext);
				}
				membergroupService.insert(membergroup);
				OperLogUtil.log(getLoginName(), "添加会员组 "+membergroup.getName(), getHttpRequest());
			}
			write("<script>alert('操作成功');location.href='membergroup_list.do?pageFuncId="+pageFuncId+"';</script>", "UTF-8");
		} catch (Exception e) {
			DBProException(e);
			write(e.toString(), "GBK");
		}
		
		return null;
	}
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getPageFuncId() {
		return pageFuncId;
	}

	public void setPageFuncId(String pageFuncId) {
		this.pageFuncId = pageFuncId;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getLogContent() {
		return logContent;
	}

	public void setLogContent(String logContent) {
		this.logContent = logContent;
	}

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	public Membergroup getMembergroup() {
		return membergroup;
	}

	public void setMembergroup(Membergroup membergroup) {
		this.membergroup = membergroup;
	}

	public List<Membergroup> getMembergroupList() {
		return membergroupList;
	}

	public void setMembergroupList(List<Membergroup> membergroupList) {
		this.membergroupList = membergroupList;
	}


	public MembergroupService getMembergroupService() {
		return membergroupService;
	}


	public void setMembergroupService(MembergroupService membergroupService) {
		this.membergroupService = membergroupService;
	}


	public File getImg() {
		return img;
	}


	public void setImg(File img) {
		this.img = img;
	}


	public String getImgFileName() {
		return imgFileName;
	}


	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}


	public String getOldImg() {
		return oldImg;
	}


	public void setOldImg(String oldImg) {
		this.oldImg = oldImg;
	}
}
