<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<link href="img/sl_core.css" rel="stylesheet" type="text/css" />
<link href="img/index.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="../js/jquery-1.5.1.min.js"></script>
		<script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js" defer="defer"></script>
		<script type="text/javascript" src="js/profile.js"></script>
<div class="tipcnt">
  <div class="title">
<span class="f12 fr"></span>
  <span class="b">个人资料</span></div>
		<FORM id=MyForm 
			method=post name=MyForm action=member_profile.do enctype="multipart/form-data" onsubmit="return checkform()">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr class="tr1 tac s3">
  <td  align="left">登录名</td>
  <td  align="left">${loginMember.loginname }</td>
</tr>
<tr class="tr1 tac s3">
  <td align="left">真实姓名</td>
  <td  align="left">
	<INPUT onblur="this.className='colorblur';" id="name"
	class=colorblur onfocus="this.className='colorfocus';" 
	maxLength=50 type=text name=member.name value="${loginMember.name }"> *</td>
</tr>
<TR class="tr1 tac s3">
			<TD  align="left">性别
			</TD>
			<TD align="left">
				<input type="radio" name="member.sex" value="1" checked="checked">男
				<input type="radio" name="member.sex" value="0" ${ loginMember.sex == "0"?"checked":""}>女
			</TD>
		</TR>
		<TR class="tr1 tac s3">
			<TD  align="left">出生日期
			</TD>
			<TD align="left">
<input name="member.birthday" id="birthday" class="Wdate"  type="text" size="14" value="${loginMember.birthdayStr }"  onClick="WdatePicker({skin:'default',dateFmt:'yyyy-MM-dd',maxDate:'%y-%M-%d'})"/>
		</TD>
	</TR>
	<TR class="tr1 tac s3">
		<TD  align="left">
			<LABEL id=ctl02_ctl00_label>联系电话
		</TD>
		<TD align="left">
			<INPUT onblur="this.className='colorblur';" 
				class=colorblur onfocus="this.className='colorfocus';" 
				maxLength=50 type=text name=member.tel value="${loginMember.tel }">
		</TD>
	</TR><TR class="tr1 tac s3">
		<TD  align="left">手机
		</TD>
		<TD align="left">
			<INPUT onblur="this.className='colorblur';" 
				class=colorblur onfocus="this.className='colorfocus';" 
				maxLength=50 type=text name=member.mobilephone value="${loginMember.mobilephone }">
		</TD>
	</TR>
	<TR class="tr1 tac s3">
		<TD  align="left">电子邮箱
		</TD>
		<TD align="left">
			<INPUT onblur="this.className='colorblur';" id="email"
				class=colorblur onfocus="this.className='colorfocus';" 
				maxLength=50 type=text name=member.email value="${loginMember.email }">
		</TD>
	</TR>
	<TR class="tr1 tac s3">
		<TD  align="left">头像
		</TD>
		<TD align="left"> 
		<input type="hidden" id="oldImg" name="oldImg" value="${loginMember.img }"/>
		<span id="oldImgSpan" style="display:${ (loginMember.img!=null && loginMember.img != "" && loginMember != "null")?"block":"none"}">
		<a href="<%=basePath %>${loginMember.img }?date=<%=UUID.randomUUID() %>" target="_blank">
		<img src="<%=basePath %>${loginMember.img }?date=<%=UUID.randomUUID() %>" width="180" height="42" title="点击查看大图"/>
		</a>
		<a href="javascript:delImg()">删除</a>
		</span>
		<br/>
				<input type="file" name="img" onblur="this.className='inputblur';" 
				class=inputblur onfocus="this.className='inputfocus';" id="img">
		</TD>
	</TR>
	
	
	
	<TR class="tr1 tac s3">
		<TD  align="left">简介
		</TD>
		<TD align="left">
			<textarea onblur="this.className='colorblur';"   
				class=colorblur onfocus="this.className='colorfocus';" 
				maxLength=50 type=text id=intro name=member.intro cols="40" rows="3">${loginMember.intro }</textarea>
				(200字以内)
		</TD>
	</TR>
	<TR class="tr1 tac s3">
		<TD  align="center" colspan="10">
		<input type="submit" value="保 存"  class="button"  />
		</TD>
	</TR>
  </table>
</div>