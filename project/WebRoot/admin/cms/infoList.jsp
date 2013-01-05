<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="fs" uri="/fs-tags" %>
<%@include file="../../util/loading.jsp"%>
<%@include file="../../util/checkParentFrame.jsp"%>
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
	<link rel="stylesheet" href="../../js/jquery.treeview.css" />
	<script src="../../js/jquery.cookie.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.edit.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.async.js" type="text/javascript"></script>

		<script type="text/javascript" src="js/infoList.js"></script>
		<META content=text/html;charset=gb2312 http-equiv=content-type>
	</HEAD>
	<BODY style="padding:0;margin:0">
		<form name="myForm" method="post" action="info_list.do" id="myForm"
			style="margin: 0px">
			<input type="hidden" name="info.channel" id="channelId" value="${info.channel }"/>
			<input type="hidden" name="pageFuncId" id="pageFuncId" value="${param.pageFuncId }"/>
			<DIV class="column" style="width:99%">
				<div class="columntitle">
					信息搜索(${channel.name })
				</div>
				<TABLE width="100%" border=0 align=center cellpadding="2"
					cellspacing="0">
					<TBODY>
						<TR class=summary-title>
							<TD height="30" align=left style="padding-left: 10px;">
							
								信息标题：
								
								<input name="info.title" type="text" maxlength="500"
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
								
								<input type="button" name="Search" value="搜 索" id="Search" onclick="this.form.submit();"
									class="button" style="MARGIN-BOTTOM: 0px" />
							</TD>
						</TR>
						
					</TBODY>
				</TABLE>
			</DIV>
</form>
			<DIV class="column" style="width:99%">
				<div class="columntitle">
					信息列表
				</div>

				<table id="MyDataList" cellspacing="1" cellpadding="1"
					Align="center" border="0" border="0"
					style="width: 100%; word-break: break-all">
					<TR class="summary-title" style="HEIGHT: 25px" align="center">
						<TD width="10%">
							<INPUT onClick="checkAll(this.checked)" type="checkbox" />
						</TD>
						
						<TD width="90%">
							
							<fs:order colName="信息标题" col="title"/>
						</TD>
					</TR>
					
					<s:iterator value="infoList" status="bean">
					<TR class="tdbg" onMouseOver="this.className='tdbg-dark';"  id="tr<s:property value="id"/>"
						style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
						<TD align="center">
							<INPUT name="ids" type="checkbox" value="<s:property value="id"/>"/></TD>
						
						<TD  align="left" id="title<s:property value="id"/>">
							<a title="点击打开信息页面" href="<%=basePath %>site/${manageSite.sourcepath }/<s:property value="pageurl"/>" target="_blank"><s:property value="title"/></a>
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

