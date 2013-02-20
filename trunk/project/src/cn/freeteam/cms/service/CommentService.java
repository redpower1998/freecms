package cn.freeteam.cms.service;

import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.CommentMapper;
import cn.freeteam.cms.model.Comment;
import cn.freeteam.cms.model.CommentExample;
import cn.freeteam.cms.model.CommentExample.Criteria;

/**
 * 
 * <p>Title: CommentService.java</p>
 * 
 * <p>Description: 评论服务</p>
 * 
 * <p>Date: Feb 6, 2013</p>
 * 
 * <p>Time: 1:45:17 PM</p>
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
public class CommentService extends BaseService{

	private CommentMapper commentMapper;
	
	public CommentService() {
		initMapper("commentMapper");
	}

	/**
	 * 分页查询
	 */
	public List<Comment> find(Comment Comment,String order,int currPage,int pageSize,boolean iscache){
		CommentExample example=new CommentExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(Comment, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		example.setCurrPage(currPage);
		example.setPageSize(pageSize);
		if (iscache) {
			return commentMapper.selectPageByExampleCache(example);
		}
		return commentMapper.selectPageByExample(example);
	}
	/**
	 * 查询
	 */
	public List<Comment> find(Comment Comment,String order){
		CommentExample example=new CommentExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(Comment, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		return commentMapper.selectByExample(example);
	}
	/**
	 * 统计
	 * @param info
	 * @return
	 */
	public int count(Comment Comment,boolean iscache){
		CommentExample example=new CommentExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(Comment, criteria);
		if (iscache) {
			return commentMapper.countByExampleCache(example);
		}
		return commentMapper.countByExample(example);
	}

	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(Comment Comment,Criteria criteria){
		if (Comment!=null ) {
			if (Comment.getMemberid()!=null && Comment.getMemberid().trim().length()>0) {
				criteria.andMemberidEqualTo(Comment.getMemberid().trim());
			}
			if (Comment.getMemberid()!=null && Comment.getMemberid().trim().length()>0) {
				criteria.andMemberidEqualTo(Comment.getMemberid().trim());
			}
			if (Comment.getSiteid()!=null && Comment.getSiteid().trim().length()>0) {
				criteria.andSiteidLike("%"+Comment.getSiteid().trim()+"%");
			}
			if (Comment.getIsanonymous()!=null && Comment.getIsanonymous().trim().length()>0) {
				criteria.andIsanonymousEqualTo(Comment.getIsanonymous().trim());
			}
			if (Comment.getObjtype()!=null && Comment.getObjtype().trim().length()>0) {
				criteria.andObjtypeEqualTo(Comment.getObjtype().trim());
			}
			if (Comment.getObjid()!=null && Comment.getObjid().trim().length()>0) {
				criteria.andObjidLike("%"+Comment.getObjid().trim()+"%");
			}
			if (Comment.getState()!=null && Comment.getState().trim().length()>0) {
				criteria.andStateEqualTo(Comment.getState().trim());
			}
			if (Comment.getContent()!=null && Comment.getContent().trim().length()>0) {
				criteria.andContentLike("%"+Comment.getContent().trim()+"%");
			}
		}
	}

	/**
	 * 根据id查询
	 * @param id
	 * @param cache
	 * @return
	 */
	public Comment findById(String id){
		return commentMapper.selectByPrimaryKey(id);
	}
	/**
	 * 更新
	 * @param question
	 */
	public void update(Comment Comment){
		commentMapper.updateByPrimaryKeySelective(Comment);
		DBCommit();
	}
	/**
	 * 添加
	 * @param question
	 * @return
	 */
	public String add(Comment Comment){
		Comment.setId(UUID.randomUUID().toString());
		commentMapper.insert(Comment);
		DBCommit();
		return Comment.getId();
	}
	/**
	 * 删除 
	 * @param id
	 */
	public void del(String id){
		commentMapper.deleteByPrimaryKey(id);
		DBCommit();
	}

	public void state(String id){
		Comment comment=new Comment();
		comment.setId(id);
		comment.setState("1");
		commentMapper.updateByPrimaryKeySelective(comment);
		DBCommit();
	}
	public CommentMapper getCommentMapper() {
		return commentMapper;
	}

	public void setCommentMapper(CommentMapper commentMapper) {
		this.commentMapper = commentMapper;
	}
}
