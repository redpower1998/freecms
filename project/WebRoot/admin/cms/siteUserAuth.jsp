<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="cn.freeteam.cms.model.SiteUser"%>
<%@page import="cn.freeteam.model.Users"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%> 
<input type="hidden" id="siteUserId" value="${siteUser.id }">
			<DIV class=column style="display:${siteUser !=null?'block':'none' }">
				<TABLE cellSpacing=4 cellPadding=4 width="95%" align=center>
					<TBODY>
					
						
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl02_ctl00_label>
									<IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl02_ctl00_imgHelp tabIndex=-1 alt=请选择数据级别，个人只可管理用户自己添加的数据，全部可管理此站点的全部数据
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl02_ctl00_lblLabel>数据级别：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD align="left">
							<select name="siteUser.datalevel" id="datalevel">
								<option value="<%=SiteUser.DATALEVEL_PERSON %>" >个人</option>
								<%
								if(session.getAttribute("loginAdmin")!=null){
									Users admin=(Users)session.getAttribute("loginAdmin");
									boolean isshow=false;
									if(admin!=null && 
											("admin".equals(admin.getLoginname()))){
										isshow=true;
									}else{
										if(request.getAttribute("adminSiteUser")!=null){
											SiteUser adminSiteUser=(SiteUser)request.getAttribute("adminSiteUser");
											if(adminSiteUser!=null && SiteUser.DATALEVEL_ALL.equals(adminSiteUser.getDatalevel())){
												isshow=true;
											}
										}
										if(!isshow){
											if(request.getAttribute("siteUser")!=null){
												SiteUser siteUser=(SiteUser)request.getAttribute("siteUser");
												if(siteUser!=null && SiteUser.DATALEVEL_ALL.equals(siteUser.getDatalevel())){
													isshow=true;
												}
											}
										}
									}
									if(isshow){
										%>
										<option value="<%=SiteUser.DATALEVEL_ALL %>" ${siteUser!=null && siteUser.datalevel =='1' ?'selected':'' }>全部</option>
										<%
									}
								}
								%>
							</select>
							</TD>
						</TR>
						
					</TBODY>
				</TABLE>
			</DIV>
			<DIV class=column style="display:${siteUser !=null?'none':'block' }">
				请先勾选此站点!
			</DIV>
