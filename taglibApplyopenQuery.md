# applyopenQuery #
<p>
<blockquote></p>
<p>
</blockquote><blockquote><span>从FreeCMS 1.3 开始支持</span></p>
<p>
<span>根据查询码查询申请公开处理结果。</span></p>
<p>
<blockquote></p>
<p>
</p>
<table>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote><span>参数</span></p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote><span>说明</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote><span>querycode</span></p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote><span>查询码 </span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote><span>cache</span></p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote><span>是否使用缓存，默认为false</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</p>
<p>
</p>
<p>
</p>
<table>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote><span>返回值</span></p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote><span>说明</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote><span>applyopen</span></p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote><span>申请公开对象，数据类型为数据对象applyopen</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</p>
<p>
</blockquote><span>示例1</span></p></blockquote>

<p>
<pre><code><br>
　　&lt;@applyopenQuery querycode='${querycode!""}' cache='true';applyopen&gt;<br>
　　          &lt;#if (""!=(applyopen.id!""))&gt;<br>
　　          &lt;table width="710" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td height="7"&gt;&lt;/td&gt;<br>
　　          &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　        &lt;table width="710" border="0" cellspacing="1" cellpadding="0" bgcolor="#D4DBDF"&gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td height="25" align="left" valign="middle" bgcolor="#F2F4F5" style="padding-left:10px;"&gt;<br>
　　            ${applyopen.typeStr }&lt;/td&gt;<br>
　　          &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　        &lt;table width="710" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td height="7"&gt;&lt;/td&gt;<br>
　　          &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　        &lt;#if "0"==(applyopen.type!"")&gt;<br>
　　        &lt;table width="710" border="0" cellspacing="1" cellpadding="0"  bgcolor="#D4DBDF" id="table0"&gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td width="35" height="170" align="center" valign="middle" bgcolor="#F2F4F5" class="ysqgk_wz1"&gt;&lt;p&gt;申&lt;/p&gt;<br>
　　              &lt;p&gt;请&lt;/p&gt;<br>
　　              &lt;p&gt;人&lt;/p&gt;<br>
　　              &lt;p&gt;信&lt;/p&gt;<br>
　　              &lt;p&gt;息&lt;/p&gt;&lt;/td&gt;<br>
　　            &lt;td height="170" align="center" valign="middle" bgcolor="#FFFFFF"&gt;&lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　              &lt;tr&gt;<br>
　　                &lt;td height="7"&gt;&lt;/td&gt;<br>
　　              &lt;/tr&gt;<br>
　　            &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellpadding="0" cellspacing="1" bgcolor="#D8DEE5"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="28" rowspan="5" align="center" valign="middle" bgcolor="#EFF1F2" class="ysqgk_wz2" style="padding-left:6px;"&gt;&lt;p&gt;公&lt;/p&gt;<br>
　　                    &lt;p&gt;民&lt;/p&gt;&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;姓名&lt;/td&gt;<br>
　　                  &lt;td width="200" height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.name}&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;工作单位&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.unit}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;证件名称&lt;/td&gt;<br>
　　                  &lt;td width="200" height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.cardtype}&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;证件号码&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.cardid}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;联系地址&lt;/td&gt;<br>
　　                  &lt;td width="200" height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.address}&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;邮政编码&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.postcode}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;联系电话&lt;/td&gt;<br>
　　                  &lt;td width="200" height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.tel}&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;传真&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.fax}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;电子信箱&lt;/td&gt;<br>
　　                  &lt;td height="30" colspan="3" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.email}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="7"&gt;&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;&lt;/td&gt;<br>
　　          &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　        &lt;#else&gt;<br>
　　        &lt;table width="710" border="0" cellspacing="1" cellpadding="0"  bgcolor="#D4DBDF" id="table1" &gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td width="35" height="170" align="center" valign="middle" bgcolor="#F2F4F5" class="ysqgk_wz1"&gt;&lt;p&gt;申&lt;/p&gt;<br>
　　              &lt;p&gt;请&lt;/p&gt;<br>
　　              &lt;p&gt;人&lt;/p&gt;<br>
　　              &lt;p&gt;信&lt;/p&gt;<br>
　　              &lt;p&gt;息&lt;/p&gt;&lt;/td&gt;<br>
　　            &lt;td height="170" align="center" valign="middle" bgcolor="#FFFFFF"&gt;&lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　              &lt;tr&gt;<br>
　　                &lt;td height="7"&gt;&lt;/td&gt;<br>
　　              &lt;/tr&gt;<br>
　　            &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellpadding="0" cellspacing="1" bgcolor="#D8DEE5"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="28" rowspan="8" align="center" valign="middle" bgcolor="#EFF1F2" class="ysqgk_wz2" style="padding-left:6px;"&gt;&lt;p&gt;法&lt;/p&gt;<br>
　　                    &lt;p&gt;人&lt;/p&gt;<br>
　　                    &lt;p&gt;/&lt;/p&gt;<br>
　　                    &lt;p&gt;其&lt;/p&gt;<br>
　　                    &lt;p&gt;他&lt;/p&gt;<br>
　　                    &lt;p&gt;组&lt;/p&gt;<br>
　　                    &lt;p&gt;织&lt;/p&gt;&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;名称&lt;/td&gt;<br>
　　                  &lt;td width="200" height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.lpname}&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;组织机构代码&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.unitcode}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;法人代表&lt;/td&gt;<br>
　　                  &lt;td width="200" height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.legalperson}&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;联系人姓名&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.linkman}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;联系人电话&lt;/td&gt;<br>
　　                  &lt;td width="200" height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.linkmantel}&lt;/td&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;传真&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.lpfax}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="110" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;营业执照信息&lt;/td&gt;<br>
　　                  &lt;td height="30" colspan="3" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.buslicense}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;联系地址&lt;/td&gt;<br>
　　                  &lt;td height="30" colspan="3" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.lpaddress}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;邮政编码&lt;/td&gt;<br>
　　                  &lt;td height="30" colspan="3" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.lppostcode}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;电子信箱&lt;/td&gt;<br>
　　                  &lt;td height="30" colspan="3" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.lpemail}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="7"&gt;&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;&lt;/td&gt;<br>
　　          &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　        &lt;/#if&gt;<br>
　　        <br>
　　        <br>
　　        &lt;table width="710" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td height="7"&gt;&lt;/td&gt;<br>
　　            &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　        &lt;table width="710" border="0" cellspacing="1" cellpadding="0"  bgcolor="#D4DBDF"&gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td width="35" height="170" align="center" valign="middle" bgcolor="#F2F4F5" class="ysqgk_wz1"&gt;&lt;p&gt;所&lt;/p&gt;<br>
　　              &lt;p&gt;需&lt;/p&gt;<br>
　　              &lt;p&gt;信&lt;/p&gt;<br>
　　              &lt;p&gt;息&lt;/p&gt;<br>
　　              &lt;p&gt;情&lt;/p&gt;<br>
　　              &lt;p&gt;况&lt;/p&gt;&lt;/td&gt;<br>
　　            &lt;td height="170" align="center" valign="middle" bgcolor="#FFFFFF"&gt;&lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　              &lt;tr&gt;<br>
　　                &lt;td height="7"&gt;&lt;/td&gt;<br>
　　              &lt;/tr&gt;<br>
　　            &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="1" cellpadding="0" bgcolor="#D8DEE5"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="142" height="60" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;所需信息的内容描述&lt;/td&gt;<br>
　　                  &lt;td height="60" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.detail}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="142" height="60" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;所需信息的用途&lt;/td&gt;<br>
　　                  &lt;td height="60" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.touse}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="7"&gt;&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="1" cellpadding="0"  bgcolor="#D8DEE5"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="220" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;所需信息的指定提供方式(单选)&lt;/td&gt;<br>
　　                  &lt;td width="220" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;获取信息的方式(单选)&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;是否申请减免费用&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="220"  align="center" valign="top" bgcolor="#FFFFFF"&gt;&lt;table width="210" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                    &lt;tr&gt;<br>
　　                      &lt;td height="4"&gt;&lt;/td&gt;<br>
　　                    &lt;/tr&gt;<br>
　　                  &lt;/table&gt;<br>
　　                    &lt;table border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                      &lt;tr&gt;<br>
　　                        &lt;td width="210" height="24" align="left" valign="middle"&gt;<br>
　　                        ${applyopen.pubtypeStr}&lt;/td&gt;<br>
　　                      &lt;/tr&gt;<br>
　　                    &lt;/table&gt;&lt;/td&gt;<br>
　　                  &lt;td width="220"  align="center" valign="top" bgcolor="#FFFFFF"&gt;&lt;table width="210" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                    &lt;tr&gt;<br>
　　                      &lt;td height="4"&gt;&lt;/td&gt;<br>
　　                    &lt;/tr&gt;<br>
　　                  &lt;/table&gt;<br>
　　                    &lt;table border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                      &lt;tr&gt;<br>
　　                        &lt;td width="210" height="24" align="left" valign="middle"&gt;<br>
　　                        ${applyopen.gettypeStr}<br>
　　                       &lt;/td&gt;<br>
　　                      &lt;/tr&gt;<br>
　　                    &lt;/table&gt;&lt;/td&gt;<br>
　　                  &lt;td  align="center" valign="top" bgcolor="#FFFFFF"&gt;&lt;table width="210" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                    &lt;tr&gt;<br>
　　                      &lt;td height="4"&gt;&lt;/td&gt;<br>
　　                    &lt;/tr&gt;<br>
　　                  &lt;/table&gt;<br>
　　                    &lt;table border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                      &lt;tr&gt;<br>
　　                        &lt;td width="210" height="24" align="left" valign="middle"&gt;<br>
　　                        ${applyopen.applyfreeStr}<br>
　　                        &lt;/td&gt;<br>
　　                      &lt;/tr&gt;<br>
　　                    &lt;/table&gt;&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="30" colspan="3" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;<br>
　　                 若受理机关无法按指定方式提供所需信息，也可接受其他方式: ${applyopen.othertypeStr}<br>
　　                  &lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="7"&gt;&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="1" cellpadding="0" bgcolor="#D8DEE5"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="142" height="30" align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;所需信息的编号&lt;/td&gt;<br>
　　                  &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;<br>
　　                  ${applyopen.infonum}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="7"&gt;&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;&lt;/td&gt;<br>
　　          &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　        <br>
　　        &lt;table width="710" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td height="7"&gt;&lt;/td&gt;<br>
　　            &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　        &lt;table width="710" border="0" cellspacing="1" cellpadding="0"  bgcolor="#D4DBDF"&gt;<br>
　　          &lt;tr&gt;<br>
　　            &lt;td width="35" align="center" valign="middle" bgcolor="#F2F4F5" class="ysqgk_wz1"&gt;&lt;p&gt;办&lt;/p&gt;<br>
　　              &lt;p&gt;理&lt;/p&gt;<br>
　　              &lt;p&gt;情&lt;/p&gt;<br>
　　              &lt;p&gt;况&lt;/p&gt;&lt;/td&gt;<br>
　　            &lt;td align="center" valign="middle" bgcolor="#FFFFFF"&gt;&lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　              &lt;tr&gt;<br>
　　                &lt;td height="7"&gt;&lt;/td&gt;<br>
　　              &lt;/tr&gt;<br>
　　            &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="1" cellpadding="0" bgcolor="#D8DEE5"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="142" height="30"  align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;办理状态&lt;/td&gt;<br>
　　                  &lt;td  align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.stateStr}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="142" height="30"  align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;转办流程&lt;/td&gt;<br>
　　                  &lt;td  align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.proflow!""}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="142" height="30"  align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;办理结果&lt;/td&gt;<br>
　　                  &lt;td  align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.recontent!""}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td width="142" height="30"  align="left" valign="middle" bgcolor="#F4F5F6" style="padding-left:6px;"&gt;办理时间&lt;/td&gt;<br>
　　                  &lt;td  align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;${applyopen.retimeStr!""}&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;<br>
　　              &lt;table width="660" border="0" cellspacing="0" cellpadding="0"&gt;<br>
　　                &lt;tr&gt;<br>
　　                  &lt;td height="7"&gt;&lt;/td&gt;<br>
　　                &lt;/tr&gt;<br>
　　              &lt;/table&gt;&lt;/td&gt;<br>
　　          &lt;/tr&gt;<br>
　　        &lt;/table&gt;<br>
　　          &lt;#else&gt;<br>
　　          &lt;table width="710" border="0" cellpadding="0" cellspacing="1" bgcolor="#E6E6E6"&gt;<br>
　　            &lt;tr&gt;<br>
　　              &lt;td  height="30" align="left" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;<br>
　　&lt;font color="red"&gt;&lt;b&gt;没有找到相关数据!&lt;/b&gt;&lt;/font&gt;<br>
　　&lt;/td&gt;<br>
　　            &lt;/tr&gt;<br>
　　          &lt;/table&gt;<br>
　　          &lt;/#if&gt;<br>
          &lt;/@applyopenQuery&gt;<br>
<br>
</code></pre>
</p>





<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Fwww.tmall.com' title='点击有惊喜哦!'><img src='http://static.oschina.net/uploads/space/2013/0514/113712_xltW_916014.jpg' alt='' /></a>

<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Fwww.tmall.com'>天猫</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGKas1PIKp0U37pZuBotzOg7OjeU9mIWS5%2B5UROBz6sq4fiHePnGhf6UrWuOtfD2G6QGcAHIXpjhEtESpuqsRo0a&pid=mm_13244061_0_0'>聚划算</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGKas1PIKp0U37pZuBotzOg7OjY%2F2R0Ke3HHzv2kJZUH%2FehqodvBvxouiCPW7UkqmIn4pk08catp7aU2wpqfONSeQJM%3D&pid=mm_13244061_0_0'>淘宝旅行</a>
<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Fchaoshi.tmall.com'>天猫超市</a>
<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Fgame.taobao.com%2F'>淘宝游戏</a>
<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Flist.tmall.com%2Fsearch_product.htm%3Fcat%3D50023647%26style%3Dg'>天猫母婴</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql7yXxt68u47A97attNG%2FWfaHAPFpIyLuDglIlZZIzTDC7kWPGdJOlnPB8PjDzLnUOgayyAdAcPsDvP'>品牌街</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql7yXimOFVcUGdonSL8IVYI7uAMyAmtUl8PQxAKNX82jX4I3FP%2Bzblfw9nYDL8Ccgo2EVn%2F5mhrLeJHk3xnHUdE9EA4vrhH0%2BG0tfgwfC0AN%2BOfYJxXhxy84PjPziJOrv3eTJ1I87IzG7s1SFQz9EE73EBVMmrueMgsmq4m'>天猫原创</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql7xi5u%2BU%2FFo%2FKIXMYsxVmyG31s2eG1vpA9myZsBa54gE2ob9ljOn%2FegW292cVm0zr1Z9zr2qHDvwWehQ%3D%3D'>天猫预售</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql7xirjzithZf5kbM1fC812QEwcSPDdeboAGSL1jXlIeC%2BRPAtfpj2TuQ9KXXR7N0hzmMgh98lacdopjw%3D%3D'>医药</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql0HOxqkjIO3w%2FbE4RZj1WFYOd%2B7tcBlZ4F3Rb9x0GlNkOh4lYZSlAgMSIGBMfqK5dZegLK4TiYRg%3D%3D'>家装</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql0HaQs3EX%2F0TysdI0JVzYmcDgx2%2B2S1AG7XRLWvzwUhooGmwl1bAKcImHchnXHMYvC4jmNs78%3D'>书城</a>
<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2F3c.tmall.com'>电器城</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql0H7I0lWj1cuGzphXkEAKfwW8AgqQMOfXSocNQXMbLzdHrvJoGNCLKHKbfkaeX9cFrN4YCd0N2'>充值中心</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql0GstRwRA3NozKTDBI1h0QDSDuxyEb%2BoqiTI8Wfvs%2B%2Fo%2B9weMfivsQjBN9qdfuPjYif%2BAz85G%2FdJrhuhz9N2Z%2BwBGSosJOr6iNDzfkqZCEBXaRWK1q%2F27DqU7K%2Fln9hWjzl1NbQf0JUSg%2FYY8k%2FDCHBAp9FlkVSWiXQfwf6lg%2FIcuA%2Fw%3D%3D'>网店/网络服务/软件</a>
