<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="fs" uri="/fs-tags" %>
<%@include file="../../util/checkParentFrame.jsp" %>
<HTML>
	<HEAD>
		<link rel="stylesheet" href="../../img/common.css" type="text/css" />
		<link rel="stylesheet" href="../../img/style.css" type="text/css" />
		<link rel="stylesheet" href="../../img/style3.css" type="text/css" />
		<script type="text/javascript" src="../../js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="js/mailPro.js"></script>

	</HEAD>
	<BODY>
		<FORM id=MyForm 
			method=post name=MyForm action=mail_proDo.do >
			<input type="hidden" name="pageFuncId" id="pageFuncId" value="${param.pageFuncId }"/>
			<input type="hidden" name="mail.id" value="${mail.id }"/>
			<input type="hidden" name="mail.type" value="${mail.type }"/>
			<DIV class=tab>
				<DIV class=tabOn >
					信件办理
				</DIV>
				<DIV class=clearer></DIV>
			</DIV>
			<DIV class=column>
				<TABLE cellSpacing=4 cellPadding=4 width="95%" align=center>
					<TBODY>
						
						
						
						<TR>
							<TD  align="right">
								收信人
							</TD>
							<TD  align="left">
							<s:if test="%{'unit' == mail.type}">
							${mail.unitname }
							</s:if>
							<s:if test="%{'user' == mail.type}">
							${mail.username }
							</s:if>
							</TD>
							<TD  align="right">
								信件类型
							</TD>
							<TD  align="left">
								${mail.mailtype }
							</TD>
						</TR>
						
						<TR>
							<TD  align="right">
								信件标题
							</TD>
							<TD  align="left" colspan="3">
							${mail.title }
							</TD>
						</TR>
						
						<TR>
							<TD  align="right">
								写信人姓名
							</TD>
							<TD  align="left">
							${mail.writer }
							</TD>
							<TD  align="right">
								联系电话
							</TD>
							<TD  align="left">
								${mail.tel }
							</TD>
						</TR>
						
						<TR>
							<TD  align="right">
								联系地址
							</TD>
							<TD  align="left">
							${mail.address }
							</TD>
							<TD  align="right">
								电子信箱
							</TD>
							<TD  align="left">
								${mail.email }
							</TD>
						</TR>
						<TR>
							<TD  align="right">
								是否公开
							</TD>
							<TD  align="left" colspan="3">
							${"1"==mail.isopen?"是":"否" }
							</TD>
						</TR>
						<TR>
							<TD  align="right">
								信件内容
							</TD>
							<TD  align="left" colspan="3">
							${mail.content }
							</TD>
						</TR>
						<TR>
							<TD  align="center" colspan="10">
							<input type="submit" value="办 结"  class="button"  />
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
			
		</FORM>
	</BODY>
</HTML>

