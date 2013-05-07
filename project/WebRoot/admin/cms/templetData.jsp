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
		<link type="text/css" rel="stylesheet" href="../../js/weebox0.4/weebox.css" />
	<link rel="stylesheet" href="../../js/jquery.treeview.css" />
	<script src="../../js/jquery.cookie.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.edit.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.async.js" type="text/javascript"></script>

		<script type="text/javascript" src="js/templetData.js"></script>
	</HEAD>
	<BODY style="padding:0;margin:0">
		
			<input type="hidden" name="pageFuncId" id="pageFuncId" value="${param.pageFuncId }"/>
			<DIV class="column" style="width:99%">
				<div class="columntitle">
					模板初始化化数据 (${templet.name })
				</div>
				<TABLE width="100%" border=0 align=center cellpadding="2"
					cellspacing="0">
					<TBODY>
						<TR class=summary-title>
							<TD height="30" align=left style="padding-left: 10px;">
							
								模板名称：
								
								<input name="templet.name" type="text" maxlength="500"
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
			

	</BODY>
</HTML>

