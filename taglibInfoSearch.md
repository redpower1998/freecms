# infoSearch #

<p>
<span>根据参数和搜索关键词提取信息分页对象。</span><span></span>
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
<span>siteid</span><span></span>
</p>
</td>
<td>
<p>
<span>信息所属站点id</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>channelid</span><span></span>
</p>
</td>
<td>
<p>
<span>信息所属栏目id</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>num</span><span></span>
</p>
</td>
<td>
<p>
<span>每页显示数量</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>order</span><span></span>
</p>
</td>
<td>
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
<td>
<p>
<span>titleLen</span><span></span>
</p>
</td>
<td>
<p>
<span>标题显示长度</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>hot</span><span></span>
</p>
</td>
<td>
<p>
<span>是否按点击热度倒序，1是</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>dateFormat</span><span></span>
</p>
</td>
<td>
<p>
<span>日期格式</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>img</span><span></span>
</p>
</td>
<td>
<p>
<span>是否只提取带图片的新闻</span><span> </span><span>1是</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>page</span><span></span>
</p>
</td>
<td>
<p>
<span>当前第几页，默认是1</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>key</span><span></span>
</p>
</td>
<td>
<p>
<span>搜索关键词</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>newdays</span><span></span>
</p>
</td>
<td>
<p>
<span>从FreeCMS 1.</span><span>5</span><span>开始支持</span><span></span>
</p>
<p>
<span>几天内为最新</span><span></span>
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
<span>infoList</span><span></span>
</p>
</td>
<td>
<p>
<span>信息对象列表，类型为List&lt;数据对象info&gt;</span><span></span>
</p>
</td>
</tr>
<tr>
<td>
<p>
<span>pager</span><span></span>
</p>
</td>
<td>
<p>
<span>分页对象</span><span></span>
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
<p>
<span>编写搜索表单</span><span></span>
</p>
```
　　<form action="${contextPath}templet_pro.do">
　　	<input type="hidden" name="siteid" value="${site.id}"/>
　　	<input type="hidden" name="templetPath" value="搜索页面.html"/>
　　	关键字：
　　	<input name="key" type="text" />
　　	<input type="submit" value="搜索" />
　　</form>
```
<p>
<span>templet_pro.do会把参数转换为freemarker数据模型并使用参数templetPath值所对应的页面进行处理并返回处理结果。</span><span></span>
</p>
<p>
<img src='http://static.oschina.net/uploads/space/2013/1109/082817_YQI0_916014.png' alt='' /><span></span>
</p>
<p>
<span>显示搜索结果</span><span></span>
</p>
```
　　　　<@infoSearch siteid="${site.id}" num="1" action="${contextPath}templet_pro.do"
　　					titleLen="48" dateFormat="yyyy-MM-dd" key="${key}" page="${page!1}"; infoList,pager>
　　       <table border="0" cellspacing="0" cellpadding="0">
　　			<#list infoList as info>
　　	        <tr>
　　	          <td class="p_list_dot"><img src="images/dot1.gif" width="3" height="3" /></td>
　　	          <td class="p_list_bt"><a href="${info.pageurl}" target="_blank">${info.showtitle}</a></td>
　　	          <td class="p_list_sj">${info.addtimeStr}</td>
　　	        </tr>
　　			</#list>
　　		     
　　    </table>
　　      <table border="0" cellspacing="0" cellpadding="0">
　　        <tr>
　　          <td class="p_list_tiaoz">
　　		${pager.formPageStr}</td>
　　        </tr>
　　    </table>
　　					</@infoSearch>
```
<p>
<img src='http://static.oschina.net/uploads/space/2013/1109/082835_WO9S_916014.png' alt='' /><span></span>
</p>