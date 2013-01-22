package cn.freeteam.cms.action;

import java.util.List;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Question;
import cn.freeteam.cms.service.QuestionService;
import cn.freeteam.util.Pager;

/**
 * 
 * <p>Title: QuestionAction.java</p>
 * 
 * <p>Description: 网上调查</p>
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
public class QuestionAction extends BaseAction{
	private String msg;
	private String pageFuncId;
	
	private QuestionService questionService;
	private List<Question> questionList;
	private Question question;
	private String order;
	
	public QuestionAction() {
		init("questionService");
	}

	/**
	 * 列表
	 * @return
	 */
	public String list(){
		if (question==null ){
			question=new Question();
		}
		if (!isAdminLogin() && !isSiteAdmin()) {
			question.setSiteid(getManageSite().getId());
		}
		questionList=questionService.find(question, order, currPage, pageSize,false);
		totalCount=questionService.count(question,false);
		Pager pager=new Pager(getHttpRequest());
		pager.appendParam("mail.type");
		pager.appendParam("mail.querycode");
		pager.appendParam("mail.mailtype");
		pager.appendParam("mail.title");
		pager.appendParam("mail.writer");
		pager.appendParam("mail.state");
		pager.appendParam("mail.unitid");
		pager.appendParam("mail.userid");
		pager.appendParam("mail.isopen");
		pager.appendParam("order");
		pager.appendParam("pageSize");
		pager.appendParam("pageFuncId");
		pager.setCurrPage(currPage);
		pager.setPageSize(pageSize);
		pager.setTotalCount(totalCount);
		pager.setOutStr("question_list.do");
		pageStr=pager.getOutStr();
		return "list";
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

	public QuestionService getQuestionService() {
		return questionService;
	}

	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}

	public List<Question> getQuestionList() {
		return questionList;
	}

	public void setQuestionList(List<Question> questionList) {
		this.questionList = questionList;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

}
