<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>FreeCMS-信息提示</title>
<link rel="stylesheet" href="<%=basePath %>img/style.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath %>img/style2.css" type="text/css" />
</head>
<style type="text/css"> 
body {margin:20px auto auto 6px;text-align:center;padding:0;line-height:22px;}
img {border:0}
.tip {padding:4px 0 6px 46px;color:#999;}
#Logo {width:760px;margin:auto;text-align:left;}
#Logo .lg {position:absolute;top:22px}
#Logo .nav {float:right;margin-right:5px;color:#1A82D2}
#Main {width:770px;margin:auto;text-align:center;}
#Bot {width:750px;clear:both;margin:auto;text-align:center;line-height:18px;border-top:1px solid #DADADA;padding-top:13px;margin-top:25px;}
#Bot a {color:#494949;}
#Banner {background-color:#000;width:760px;height:170px;margin-top:30px;}
#Banner .index_banner {float:left;background:#208DE1;width:216px;height:170px;}
#Banner .index_bg {float:right;background:url(<%=basePath %>img/index_login_bg1.gif) repeat-y;width:540px;height:145px!important; height /**/: 170px;padding:25px 0 0 4px;font:normal 12px tahoma;line-height:24px;text-align:left;color:#2A58A6;}

</style>
<body >
<form id="fm1" class="fm-v clearfix" action="member_register.do" method="post" onsubmit="return submitForm()">
<div id="Logo">
	<div style="float:left"><div class="lg"><img width="165" src="<%=basePath %>img/logo.png" border="0" /></div><br/></div>
	<div class="nav"></div>
    <div style="clear:both"></div>
</div>
<div id="Main">
	<div id="Banner">
				<div class="index_banner"><img src="<%=basePath %>img/login.gif"/></div>
		
		<div class="index_bg">
公开源码、免费使用<br/>
代码通俗易懂、注释详细、面向二次开发友好<br/>
致力于打造更好的中国开源免费CMS<br/>
	  </div>
		
	</div>
	
</div>
 
<div id="Bot">
<span>Copyright &copy;<script>document.write(new Date().getFullYear());</script> FreeCMS. All Rights Reserved</span></div>
</body>
        	</form>
</html>
 
 
               
	            

