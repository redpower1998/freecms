<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<link href="img/sl_core.css" rel="stylesheet" type="text/css" />
<link href="img/index.css" rel="stylesheet" type="text/css" />
<table width="200" border="0" cellspacing="0" cellpadding="0">
<tr><td valign="top">
<div class="tipcnt mr10 mb10">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr class="tr1">
<td>
<s:if test='%{#session.loginMember.img!=null && #session.loginMember.img!=""}'>
<img src="<%=basePath %>${loginMember.img }" width="50" height="50"/>
</s:if>
<s:if test='%{#session.loginMember.img==null || #session.loginMember.img==""}'>
<img src="../img/noimg.jpg" width="50" height="50"/>
</s:if>
</td>
<td>欢迎：${loginMember.loginname }<br />
<a href="profile.jsp" class="link_down mr10" target="right"><span>设置</span></a>
<a href="../member_out.do" class="s8">退出</a>
</td>
  </tr>
</table>


</div>


<div class="tipcnt mr10">
  <div class="title b">会员服务导航</div>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr class="tr1"><td><a href="profile.jsp" target="right">个人资料</a></td></tr>
<tr class="tr1"><td><a href="userpay.php?action=buy" target="_blank">个人帐户充值</a></td></tr>
<tr class="tre"><td><a href="profile.php" target="_blank">个人帐户管理</a></td></tr>
  </table>
</div>
</td>
</tr>
</table>