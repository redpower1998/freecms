# reportQuery #
<p>
<blockquote>从FreeCMS 1.3 开始支持</p>
<p>
根据查询码查询申报处理结果。</p>
<p>
<blockquote></p>
<table>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote>参数</p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote>说明</p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote>querycode</p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote>查询码 </p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote>cache</p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote>是否使用缓存，默认为false</p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</p>
<table>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote>返回值</p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote>说明</p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote>report</p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote>申报对象，数据类型为数据对象report</p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
示例1</p></blockquote>


<p>
<pre><code>&lt;@reportQuery querycode='${querycode!""}' cache='true';report&gt;<br>
<br>
          &lt;#if (""!=(report.id!""))&gt;<br>
<br>
          &lt;table width="710" border="0" cellpadding="0" cellspacing="1" bgcolor="#E6E6E6"&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;项目名称：&lt;/td&gt;<br>
<br>
              &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:10px"&gt;<br>
<br>
              ${report.name}&lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;申报单位：&lt;/td&gt;<br>
<br>
              &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:10px"&gt;<br>
<br>
              ${report.unit}&lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;申报文件名称：&lt;/td&gt;<br>
<br>
              &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:10px"&gt;<br>
<br>
              ${report.filename}&lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;申报文件文号：&lt;/td&gt;<br>
<br>
              &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:10px"&gt;<br>
<br>
              ${report.filenum}&lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;申报文件附件：&lt;/td&gt;<br>
<br>
              &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:10px"&gt;<br>
<br>
              &lt;#if (report.attch!"")!=""&gt;<br>
<br>
              &lt;a href="${report.attch }" target="_blank"&gt;附件下载&lt;/a&gt;<br>
<br>
              &lt;/#if&gt;<br>
<br>
              &lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
            <br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;联系人：&lt;/td&gt;<br>
<br>
              &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:10px"&gt;<br>
<br>
              ${report.linkman}&lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;签发人：&lt;/td&gt;<br>
<br>
              &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:10px"&gt;<br>
<br>
              ${report.issuer}&lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;联系电话：&lt;/td&gt;<br>
<br>
              &lt;td height="30" align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:10px"&gt;<br>
<br>
              ${report.tel}&lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
                &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;办理状态&lt;/td&gt;<br>
<br>
                &lt;td height="30"  align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;<br>
<br>
                &lt;#if ((report.state!"") == "1")&gt;已办结&lt;/#if&gt;<br>
<br>
&lt;#if ((report.state!"") != "1")&gt;处理中&lt;/#if&gt;&lt;/td&gt;<br>
<br>
              &lt;/tr&gt;<br>
<br>
              &lt;tr&gt;<br>
<br>
                &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;转办流程&lt;/td&gt;<br>
<br>
                &lt;td height="30"  align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;<br>
<br>
                ${report.proflow!"" }&lt;/td&gt;<br>
<br>
              &lt;/tr&gt;<br>
<br>
              &lt;tr&gt;<br>
<br>
                &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;办理结果&lt;/td&gt;<br>
<br>
                &lt;td height="120"  align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;<br>
<br>
                &lt;textarea name="content" cols="45" rows="5" class="jzxx_d_box" readonly&gt;${report.recontent!"" }&lt;/textarea&gt;&lt;/td&gt;<br>
<br>
              &lt;/tr&gt;<br>
<br>
              &lt;tr&gt;<br>
<br>
                &lt;td width="150" height="30" align="right" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;办理时间&lt;/td&gt;<br>
<br>
                &lt;td height="30"  align="left" valign="middle" bgcolor="#FFFFFF" style="padding-left:6px;"&gt;<br>
<br>
                ${report.retimeStr!""}&lt;/td&gt;<br>
<br>
              &lt;/tr&gt;<br>
<br>
          &lt;/table&gt;<br>
<br>
          &lt;#else&gt;<br>
<br>
          &lt;table width="710" border="0" cellpadding="0" cellspacing="1" bgcolor="#E6E6E6"&gt;<br>
<br>
            &lt;tr&gt;<br>
<br>
              &lt;td  height="30" align="left" valign="middle" bgcolor="#FFFFFF" class="lan_bwz" style="padding-right:10px"&gt;<br>
<br>
&lt;font color="red"&gt;&lt;b&gt;没有找到相关数据!&lt;/b&gt;&lt;/font&gt;<br>
<br>
&lt;/td&gt;<br>
<br>
            &lt;/tr&gt;<br>
<br>
          &lt;/table&gt;<br>
<br>
          &lt;/#if&gt;<br>
<br>
          &lt;/@reportQuery&gt;<br>
<br>
<br>
<br>
<br>
<br>
</code></pre>
<blockquote></p></blockquote>




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