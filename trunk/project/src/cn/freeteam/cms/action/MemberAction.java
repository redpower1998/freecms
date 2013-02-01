package cn.freeteam.cms.action;

import java.io.File;
import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Member;
import cn.freeteam.cms.model.Memberauth;
import cn.freeteam.cms.model.Membergroup;
import cn.freeteam.cms.service.MemberService;
import cn.freeteam.cms.service.MembergroupService;
import cn.freeteam.util.FileUtil;
import cn.freeteam.util.OperLogUtil;
import cn.freeteam.util.Pager;
/**
 * 
 * <p>Title: MemberAction.java</p>
 * 
 * <p>Description:会员相关操作 </p>
 * 
 * <p>Date: Feb 1, 2013</p>
 * 
 * <p>Time: 8:00:46 PM</p>
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
public class MemberAction extends BaseAction{
	private String msg;
	private String pageFuncId;
	private String order=" addtime desc ";
	private String logContent;
	private String ids;
	private File img;
	private String imgFileName;
	private String oldImg;
	
	private Member member;
	private List<Member> memberList;
	private List<Membergroup> membergroupList;
	private Membergroup membergroup;

	private MemberService memberService;
	private MembergroupService membergroupService;
	
	public MemberAction() {
		init("memberService");
	}


	/**
	 * 列表
	 * @return
	 */
	public String list(){
		if (member==null ){
			member=new Member();
		}
		memberList=memberService.find(member, order, currPage, pageSize);
		totalCount=memberService.count(member);
		Pager pager=new Pager(getHttpRequest());
		pager.appendParam("member.name");
		pager.appendParam("member.loginname");
		pager.appendParam("order");
		pager.appendParam("pageSize");
		pager.appendParam("pageFuncId");
		pager.setCurrPage(currPage);
		pager.setPageSize(pageSize);
		pager.setTotalCount(totalCount);
		pager.setOutStr("member_list.do");
		pageStr=pager.getOutStr();
		return "list";
	}

	/**
	 * 编辑页面
	 * @return
	 */
	public String edit(){
		//提取特殊会员组
		init("membergroupService");
		membergroup=new Membergroup();
		membergroup.setType(1);
		membergroupList=membergroupService.find(membergroup, " ordernum ");
		if (member!=null && member.getId()!=null && member.getId().trim().length()>0) {
			member=memberService.findById(member.getId());
			if (0==member.getGrouptype() && member.getGroupid()!=null && member.getGroupid().trim().length()>0) {
				//提取当前会员所属组
				membergroup=membergroupService.findById(member.getGroupid());
			}
		}
		return "edit";
	}

	/**
	 * 编辑处理
	 * @return
	 */
	public String editDo(){
		try {
			if (member.getId()!=null && member.getId().trim().length()>0) {
				//更新
				Member oldmember=memberService.findById(member.getId());
				//如果原来有和现在的logo不同则删除原来的logo文件 
				if (!oldImg.equals(oldmember.getImg())) {
					if(oldmember.getImg()!=null &&  oldmember.getImg().trim().length()>0){
						FileUtil.del(getHttpRequest().getRealPath("/")+oldmember.getImg().trim().replaceAll("/", "\\\\"));
					}
				}else {
					member.setImg(oldImg);
				}
				if (img!=null) {
					//生成目标文件
					String root=getHttpRequest().getRealPath("/");
					String ext=FileUtil.getExt(imgFileName).toLowerCase();
					if (!".jpg".equals(ext) && !".jpeg".equals(ext) && !".gif".equals(ext) && !".png".equals(ext)) {
						write("<script>alert('头像只能上传jpg,jpeg,gif,png格式的图片!');history.back();</script>", "UTF-8");
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
					member.setImg("/upload/member/"+id+ext);
				}
				memberService.update(member);
				OperLogUtil.log(getLoginName(), "更新会员 "+member.getName(), getHttpRequest());
			}else {
				//添加
				if (img!=null) {
					//生成目标文件
					String root=getHttpRequest().getRealPath("/");
					String ext=FileUtil.getExt(imgFileName).toLowerCase();
					if (!".jpg".equals(ext) && !".jpeg".equals(ext) && !".gif".equals(ext) && !".png".equals(ext)) {
						write("<script>alert('头像只能上传jpg,jpeg,gif,png格式的图片!');history.back();</script>", "UTF-8");
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
					member.setImg("/upload/member/"+id+ext);
				}
				memberService.add(member);
				OperLogUtil.log(getLoginName(), "添加会员 "+member.getName(), getHttpRequest());
			}
			write("<script>alert('操作成功');location.href='member_list.do?pageFuncId="+pageFuncId+"';</script>", "UTF-8");
		} catch (Exception e) {
			DBProException(e);
			write(e.toString(), "GBK");
		}
		
		return null;
	}
	public MemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
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

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public List<Member> getMemberList() {
		return memberList;
	}

	public void setMemberList(List<Member> memberList) {
		this.memberList = memberList;
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


	public List<Membergroup> getMembergroupList() {
		return membergroupList;
	}


	public void setMembergroupList(List<Membergroup> membergroupList) {
		this.membergroupList = membergroupList;
	}


	public Membergroup getMembergroup() {
		return membergroup;
	}


	public void setMembergroup(Membergroup membergroup) {
		this.membergroup = membergroup;
	}


	public MembergroupService getMembergroupService() {
		return membergroupService;
	}


	public void setMembergroupService(MembergroupService membergroupService) {
		this.membergroupService = membergroupService;
	}
}