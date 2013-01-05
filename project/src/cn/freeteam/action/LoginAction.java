package cn.freeteam.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;


import cn.freeteam.base.BaseAction;
import cn.freeteam.dao.UsersMapper;
import cn.freeteam.model.Users;
import cn.freeteam.model.UsersExample;
import cn.freeteam.model.UsersExample.Criteria;
import cn.freeteam.util.EscapeUnescape;
import cn.freeteam.util.MD5;
import cn.freeteam.util.MybatisSessionFactory;
import cn.freeteam.util.OperLogUtil;
import cn.freeteam.util.ResponseUtil;




/**
 * 登录
 * @author freeteam
 *
 */

public class LoginAction extends BaseAction{

	private Users user;
	private String ValidateCode;
	private String RememberMe;
	private String msg;
	private UsersMapper usersMapper;
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String login(){
		try {
			//记住用户名
			if("on".equals(RememberMe)){
				Cookie cookie=new Cookie("FreeSystem_loginName",EscapeUnescape.escape(user.getLoginname()));
				cookie.setMaxAge(1000*60*60*24*365);//有效时间为一年
				getHttpResponse().addCookie(cookie);
			}
		    HttpSession session =getHttpSession();
			if (ValidateCode!=null && ValidateCode.equals(session.getAttribute("rand"))) {
				UsersExample usersExample=new UsersExample();
				Criteria criteria= usersExample.createCriteria();
				criteria.andLoginnameEqualTo(user.getLoginname());
				criteria.andPwdEqualTo(MD5.MD5(user.getPwd()));
				usersMapper=MybatisSessionFactory.getSession().getMapper(UsersMapper.class) ;
				List list=usersMapper.selectByExample(usersExample);
				if (list!=null && list.size()>0) {
					user=(Users)list.get(0);
					//是否为无效
					if ("1".equals(user.getIsok())) {
						
						//修改上次登录时间
						user.setLastlogintime(user.getLastestlogintime());
						user.setLastestlogintime(new Date());
						usersMapper.updateLastLoginTime(user);
						MybatisSessionFactory.getSession().commit();
						session.setAttribute("loginAdmin", user);
						//设置cdfinder文件目录
						session.setAttribute("currentFolder", "/"+user.getLoginname()+"/");
						return "admin";
					}else{
						msg="此用户已禁用!";
					}
				}else{
					msg="用户名或密码错误!";
				}
			}else {
				msg="验证码错误!";
			}
			if (msg==null || "".equals(msg)) {
				OperLogUtil.log(user.getLoginname(), "登录系统", getHttpRequest());
				return "admin";
			}else {
				ResponseUtil.writeGBK(getHttpResponse(), "<script>alert('"+msg+"');history.back();</script>");
				return null;
			}
		} catch (Exception e) {
			try {
				MybatisSessionFactory.getSession().rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
			OperLogUtil.log(user.getLoginname(), "登录系统失败:"+e.toString(), getHttpRequest());
			ResponseUtil.writeGBK(getHttpResponse(), "<script>alert('出现错误:"+e.toString()+"');history.back();</script>");
			return null;
		}
	}
	//退出
	public String out(){
	    HttpSession session =getHttpSession();
	    user=(Users)session.getAttribute("loginAdmin");
	    if (user!=null) {
			OperLogUtil.log(user.getLoginname(), "退出系统", getHttpRequest());
		}
	    session.removeAttribute("loginAdmin");
	    session.removeAttribute("manageSite");
	    session.removeAttribute("siteAdmin");
	    session.removeAttribute("loginUnits");
	    session.removeAttribute("loginRoles");
		return "login";
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public String getValidateCode() {
		return ValidateCode;
	}
	public void setValidateCode(String validateCode) {
		ValidateCode = validateCode;
	}
	public String getRememberMe() {
		return RememberMe;
	}
	public void setRememberMe(String rememberMe) {
		RememberMe = rememberMe;
	}
}
