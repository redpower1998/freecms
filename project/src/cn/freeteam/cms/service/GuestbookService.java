package cn.freeteam.cms.service;

import java.util.List;
import java.util.UUID;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.GuestbookMapper;
import cn.freeteam.cms.model.Guestbook;
import cn.freeteam.cms.model.GuestbookExample;
import cn.freeteam.cms.model.GuestbookExample.Criteria;
/**
 * 
 * <p>Title: GuestbookService.java</p>
 * 
 * <p>Description: 留言本相关服务</p>
 * 
 * <p>Date: Feb 4, 2013</p>
 * 
 * <p>Time: 7:50:54 PM</p>
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
public class GuestbookService extends BaseService{

	private GuestbookMapper guestbookMapper;
	
	public GuestbookService() {
		initMapper("guestbookMapper");
	}
	

	/**
	 * 分页查询
	 */
	public List<Guestbook> find(Guestbook guestbook,String order,int currPage,int pageSize,boolean cache){
		GuestbookExample example=new GuestbookExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(guestbook, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		example.setCurrPage(currPage);
		example.setPageSize(pageSize);
		if (cache) {
			return guestbookMapper.selectPageByExampleCache(example);
		}else {
			return guestbookMapper.selectPageByExample(example);
		}
	}
	/**
	 * 统计
	 * @param info
	 * @return
	 */
	public int count(Guestbook Guestbook,boolean cache){
		GuestbookExample example=new GuestbookExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(Guestbook, criteria);
		return guestbookMapper.countByExample(example);
	}

	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(Guestbook guestbook,Criteria criteria){
		if (guestbook!=null ) {
		}
	}

	/**
	 * 根据id查询
	 * @param id
	 * @param cache
	 * @return
	 */
	public Guestbook findById(String id){
		return guestbookMapper.selectByPrimaryKey(id);
	}
	/**
	 * 更新
	 * @param question
	 */
	public void update(Guestbook Guestbook){
		guestbookMapper.updateByPrimaryKeySelective(Guestbook);
		DBCommit();
	}
	/**
	 * 添加
	 * @param question
	 * @return
	 */
	public String add(Guestbook Guestbook){
		Guestbook.setId(UUID.randomUUID().toString());
		guestbookMapper.insert(Guestbook);
		DBCommit();
		return Guestbook.getId();
	}
	/**
	 * 删除 
	 * @param id
	 */
	public void del(String id){
		guestbookMapper.deleteByPrimaryKey(id);
		DBCommit();
	}

	public GuestbookMapper getGuestbookMapper() {
		return guestbookMapper;
	}

	public void setGuestbookMapper(GuestbookMapper guestbookMapper) {
		this.guestbookMapper = guestbookMapper;
	}
}
