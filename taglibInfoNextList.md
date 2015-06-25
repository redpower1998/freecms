# infoNextList #

<p>
<span>从FreeCMS 1.</span><span>5 </span><span>开始支持</span><span></span>
</p>
<p>
<span>根据参数提取下几条信息对象列表。</span><span></span>
</p>
<table>
<tbody>
<tr>
<td width='146' valign='top'>
<p>
<span>参数</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>说明</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>siteid</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>信息所属站点id</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>channelid</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>信息所属栏目id</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>channelParid</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>栏目parid</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>infoid</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>信息</span><span>id  </span><span>必填</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>num</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>数量</span><span> </span><span>默认为</span><span>1</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>order</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>排序类型  </span><span></span>
</p>
<p>
<span>1 固顶有效并降序,发布时间降序(默认)</span><span></span>
</p>
<p>
<span>2 固顶有效并降序,发布时间升序</span><span></span>
</p>
<p>
<span>3 发布时间降序</span><span></span>
</p>
<p>
<span>4 发布时间升序</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>titleLen</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>标题显示长度</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>hot</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>是否按点击热度倒序，1是</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>dateFormat</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>日期格式</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>channelPagemark</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>栏目页面标识</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>channelParPagemark</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>父栏目页面标识</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>img</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>是否只提取带图片的新闻</span><span> </span><span>1是</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='146' valign='top'>
<p>
<span>checkOpenendtime</span><span></span>
</p>
</td>
<td width='390' valign='top'>
<p>
<span>检查公开时限</span><span> </span><span>默认不检查，</span><span>1</span><span>检查</span><span></span>
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
<td width='132' valign='top'>
<p>
<span>返回值</span><span></span>
</p>
</td>
<td width='404' valign='top'>
<p>
<span>说明</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='132' valign='top'>
<p>
<span>info</span><span></span>
</p>
</td>
<td width='404' valign='top'>
<p>
<span>信息对象，类型为数据对象info</span><span></span>
</p>
</td>
</tr>
<tr>
<td width='132' valign='top'>
<p>
<span>index</span><span></span>
</p>
</td>
<td width='404' valign='top'>
<p>
<span>索引</span><span></span>
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
<@infoNextList infoid="${currInfo.id}"  channelid="${currChannel.id}" titleLen="23" ; info,index>
<li><a href="${info.pageurl}">${info.showtitle}</a></li>
</@infoNextList>
```