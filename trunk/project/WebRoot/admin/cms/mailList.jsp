<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="fs" uri="/fs-tags" %>
<%@include file="../../util/loading.jsp"%>
<%@include file="../../util/checkParentFrame.jsp"%>
<%@include file="checkSelectSite.jsp" %>

<HTML>
	<HEAD>
		<LINK rel=stylesheet type=text/css href="../../img/style.css">
		<LINK rel=stylesheet type=text/css href="../../img/style3.css">
		<script type="text/javascript" src="../../js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="../../js/check.js"></script>
		<script type="text/javascript" src="../../js/checkAll.js"></script>
		<script type="text/javascript" src="../../js/weebox0.4/bgiframe.js"></script>
		<script type="text/javascript" src="../../js/weebox0.4/weebox.js"></script>
		<link type="text/css" rel="stylesheet" href="../../js/weebox0.4/weebox_css.jsp" />

		<script type="text/javascript" src="js/mailList.js"></script>
		<META content=text/html;charset=gb2312 http-equiv=content-type>
	</HEAD>
	<BODY style="padding:0;margin:0">
		<input type="hidden" id="type" value="${mail.type }"/>
		<form name="myForm" method="post" action="mail_list.do?pageFuncId=${param.pageFuncId }&mail.type=${mail.type }" id="myForm"
			style="margin: 0px">
			<DIV class="column" style="width:99%">
				<div class="columntitle">
					${mail.type=="unit"?"部门":"" }${mail.type=="user"?"个人":"" }${mail.type=="other"?"其他":"" }信件搜索
				</div>
				<TABLE width="100%" border=0 align=center cellpadding="2"
					cellspacing="0">
					<TBODY>
						<TR class=summary-title>
							<TD height="30" align=left style="padding-left: 10px;">
								类型：
								<select name="mail.mailtype">
								<option value="">全部
								<s:iterator value="mailtypes" id="bean">
								<option value="${bean }">${bean }
								</s:iterator>
								</select>
								标题：
								
								<input name="mail.title" type="text" maxlength="500"
									class="colorblur" onfocus="this.className='colorfocus';"
									onblur="this.className='colorblur';"  />
								写信人：
								
								<input name="mail.writer" type="text" maxlength="500"
									class="colorblur" onfocus="this.className='colorfocus';"
									onblur="this.className='colorblur';"  />
								每页显示条数：
								<select name="pageSize"
									id="pageSize">
									<option selected="selected" value="10">
										10
									</option>
									<option value="30">
										30
									</option>
									<option value="50">
										50
									</option>
									<option value="100">
										100
									</option>
									<option value="200">
										200
									</option>
									<option value="300">
										300
									</option>

								</select>
								
								<input type="submit" name="Search" value="搜 索" 
									class="button" style="MARGIN-BOTTOM: 0px" />
							</TD>
						</TR>
						
					</TBODY>
				</TABLE>
			</DIV>
</form>
			<DIV class="column" style="width:99%">
				<div class="columntitle">
					信件列表
				</div>

				<table id="MyDataList" cellspacing="1" cellpadding="1"
					Align="center" border="0" border="0"
					style="width: 100%; word-break: break-all">
					<TR class="summary-title" style="HEIGHT: 25px" align="center">
						<TD>
							<INPUT onClick="checkAll(this.checked)" type="checkbox" />
						</TD>
						<TD>
							<fs:order colName="信件类型" col="mailtype"/>
						</TD>
						<TD>
							<fs:order colName="信件标题" col="title"/>
						</TD>
						<TD>
							
							<fs:order colName="发信人" col="writer"/>
						</TD>
						<TD>
							
							<fs:order colName="写信时间" col="addtime"/>
						</TD>
					</TR>
					
					<s:iterator value="mailList" status="bean">
					<TR class="tdbg" onMouseOver="this.className='tdbg-dark';"  id="tr<s:property value="id"/>"
						style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
						<TD align="center">
							<INPUT name="ids" type="checkbox" value="<s:property value="id"/>"/></TD>
						
						<TD  align="left" id="mailtype<s:property value="id"/>">
							<s:property value="mailtype"/>
						</TD>
						<TD  align="left" id="title<s:property value="id"/>">
							<s:property value="title"/>
						</TD>
						<TD  align="left" id="writer<s:property value="id"/>">
							<s:property value="writer"/>
						</TD>
						<TD  align="left" id="addtime<s:property value="id"/>">
							<s:date name="addtime" format="yyyy-MM-dd" />
						</TD>
					</TR>
					</s:iterator>
					<TR class="tdbg" 
						style="HEIGHT: 25px" >
						<TD  align="center" colspan="10">
							${pageStr }
						</TD>
					</TR>
				</table>

			</DIV>

			<table width="95%" align="center">
				<tr>
					<td align="right">
						<table cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td align="left">
									<fs:operButtons />
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

	</BODY>
</HTML>

