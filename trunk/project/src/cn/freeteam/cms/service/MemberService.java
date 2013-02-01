package cn.freeteam.cms.service;

import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.MemberMapper;
import cn.freeteam.cms.model.Member;
import cn.freeteam.cms.model.MemberExample;
import cn.freeteam.cms.model.MemberExample.Criteria;

/**
 * 
 * <p>Title: MemberService.java</p>
 * 
 * <p>Description:会员相关服务 </p>
 * 
 * <p>Date: Feb 1, 2013</p>
 * 
 * <p>Time: 7:59:23 PM</p>
 * 
 * <p>Copyright: 2013</p>
 * 
 * <p>Company: freeteam</p>
 * 
 * @or freeteam
 * @version 1.0
 * 
 * <p>============================================</p>
 * <p>Modification History
 * <p>Mender: </p>
 * <p>Date: </p>
 * <p>Reason: </p>
 * <p>============================================</p>
 */
public class MemberService extends BaseService{

	private MemberMapper memberMapper;
	
	public MemberService() {
		initMapper("memberMapper");
	}

	/**
	 * 分页查询
	 */
	public List<Member> find(Member member,String order,int currPage,int pageSize){
		MemberExample example=new MemberExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(member, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		example.setCurrPage(currPage);
		example.setPageSize(pageSize);
		return memberMapper.selectPageByExample(example);
	}
	/**
	 * 查询
	 */
	public List<Member> find(Member member,String order){
		MemberExample example=new MemberExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(member, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		return memberMapper.selectByExample(example);
	}
	/**
	 * 统计
	 * @param info
	 * @return
	 */
	public int count(Member member){
		MemberExample example=new MemberExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(member, criteria);
		return memberMapper.countByExample(example);
	}

	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(Member member,Criteria criteria){
		if (member!=null ) {
			if (member.getLoginname()!=null && member.getLoginname().trim().length()>0) {
				criteria.andLoginnameLike("%"+member.getLoginname().trim()+"%");
			}
			if (member.getName()!=null && member.getName().trim().length()>0) {
				criteria.andNameLike("%"+member.getName().trim()+"%");
			}
		}
	}

	/**
	 * 根据id查询
	 * @param id
	 * @param cache
	 * @return
	 */
	public Member findById(String id){
		return memberMapper.selectByPrimaryKey(id);
	}
	/**
	 * 更新
	 * @param question
	 */
	public void update(Member member){
		memberMapper.updateByPrimaryKey(member);
		DBCommit();
	}
	/**
	 * 添加
	 * @param question
	 * @return
	 */
	public String add(Member member){
		member.setId(UUID.randomUUID().toString());
		memberMapper.insert(member);
		DBCommit();
		return member.getId();
	}
	/**
	 * 删除 
	 * @param id
	 */
	public void del(String id){
		memberMapper.deleteByPrimaryKey(id);
		DBCommit();
	}

	public MemberMapper getMemberMapper() {
		return memberMapper;
	}

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}
}
