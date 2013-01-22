package cn.freeteam.cms.service;

import java.util.List;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.QuestionMapper;
import cn.freeteam.cms.model.Question;
import cn.freeteam.cms.model.QuestionExample;
import cn.freeteam.cms.model.QuestionExample.Criteria;
/**
 * 
 * <p>Title: QuestionService.java</p>
 * 
 * <p>Description: 网上调查服务类</p>
 * 
 * <p>Date: Jan 22, 2013</p>
 * 
 * <p>Time: 8:58:23 PM</p>
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
public class QuestionService extends BaseService{

	private QuestionMapper questionMapper;
	public QuestionService() {
		initMapper("questionMapper");
	}

	/**
	 * 分页查询
	 */
	public List<Question> find(Question question,String order,int currPage,int pageSize,boolean cache){
		QuestionExample example=new QuestionExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(question, criteria);
		if (order!=null && order.trim().length()>0) {
			example.setOrderByClause(order);
		}
		example.setCurrPage(currPage);
		example.setPageSize(pageSize);
		if (cache) {
			return questionMapper.selectPageByExampleCache(example);
		}else {
			return questionMapper.selectPageByExample(example);
		}
	}
	/**
	 * 统计
	 * @param info
	 * @return
	 */
	public int count(Question question,boolean cache){
		QuestionExample example=new QuestionExample();
		Criteria criteria=example.createCriteria();
		proSearchParam(question, criteria);
		if (cache) {
			return questionMapper.countByExampleCache(example);
		}else {
			return questionMapper.countByExample(example);
		}
	}

	/**
	 * 处理查询条件
	 * @param info
	 * @param criteria
	 */
	public void proSearchParam(Question question,Criteria criteria){
		if (question!=null ) {
			if (question.getName()!=null && question.getName().trim().length()>0) {
				criteria.andNameLike("%"+question.getName().trim()+"%");
			}
			if (question.getSelecttype()!=null && question.getSelecttype().trim().length()>0) {
				if ("1".equals(question.getSelecttype())) {
					criteria.andSelecttypeEqualTo("1");
				}else if ("0".equals(question.getSelecttype())) {
					criteria.andSql(" (selecttype is null or selecttype='0') ");
				}
			}
			if (question.getIsok()!=null && question.getIsok().trim().length()>0) {
				if ("1".equals(question.getIsok())) {
					criteria.andIsokEqualTo("1");
				}else if ("0".equals(question.getIsok())) {
					criteria.andSql(" (isok is null or isok='0') ");
				}
			}
		}
	}

	public QuestionMapper getQuestionMapper() {
		return questionMapper;
	}

	public void setQuestionMapper(QuestionMapper questionMapper) {
		this.questionMapper = questionMapper;
	}
}
