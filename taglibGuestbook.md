# guestbook #

<p>
<span>从FreeCMS 1.5 开始支持</span><span></span>
</p>
<p>
<span>提取指定</span><span>id</span><span>的留言信息。</span><span></span>
</p>
<table>
<tbody>
<tr>
<td>
<p>
<span>参数</span><span></span>
</p>
</td>
<td>
<p>
<span>说明</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>id</span><span></span>
</p>
</td>
<td>
<p>
<span>留言</span><span>id</span><span></span>
</p>
</td>
</tr>
</tbody>
</table>
<p>
<span></span>
</p>
<table>
<tbody>
<tr>
<td>
<p>
<span>返回值</span><span></span>
</p>
</td>
<td>
<p>
<span>说明</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>guestbook</span><span></span>
</p>
</td>
<td>
<p>
<span>留言对象</span><span></span>
</p>
</td>
</tr>
</tbody>
</table>
<p>
<span></span>
</p>
<p>
<span>示例1</span><span></span>
</p>
```

　　<@guestbook id='${guestbookid!""}' cache='true';guestbook>
　　          <#if (""!=(guestbook.id!""))>
　　          <TABLE cellSpacing=4 cellPadding=4 width="95%" align=center>
　　					<TBODY>
　　						
　　						
　　						<TR>
　　							<TD  align="left">
　　								<b>标题</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.title!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>姓名</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.name!""}
　　							</TD>
　　						</TR>
　　						
　　						<TR>
　　							<TD  align="left">
　　								<b>性别</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.sexStr!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>Email</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.email!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>QQ</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.qq!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>电话</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.tel!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>内容</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.content!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>添加时间</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.addtimeStr!""}
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>IP</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　								${guestbook.ip!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>会员</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.membername!""}
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>审核状态</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.stateStr!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>回复内容</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　								${guestbook.recontent!"" }
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>回复时间</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.retimeStr!""}
　　							</TD>
　　						</TR>
　　						<TR>
　　							<TD  align="left">
　　								<b>回复人</b>
　　							</TD>
　　							<TD  align="left" colspan="3">
　　							${guestbook.reusername!""}
　　							</TD>
　　						</TR>
　　					</TBODY>
　　				</TABLE>
　　          <#else>
　　          <table width="710" border="0" cellpadding="0" cellspacing="1" bgcolor="#E6E6E6">
　　            <tr>
　　              <td  height="30" align="left" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px">
　　<font color="red"><b>没有找到相关数据!</b></font>
　　</td>
　　            </tr>
　　          </table>
　　          </#if>
          </@guestbook>
```