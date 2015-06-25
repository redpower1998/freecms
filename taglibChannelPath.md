# channelPath #


&lt;FONT SIZE="" COLOR=""&gt;



&lt;/FONT&gt;

<p>
<blockquote><b><i><span>从<span>FreeCMS 1.3 </span>开始支持</span></i></b></p>
<p>
<span>按上下级顺序提取指定栏目的所属栏目路径。</span></p>
<p>
<blockquote></p>
<table cellpadding='0' border='1' cellspacing='0'>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td>
<blockquote><p>
<blockquote><b><span>参数</span></b></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><b><span>说明</span></b></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>id</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>栏目<span>id</span></span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>siteid</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>栏目所属站点<span>id</span></span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>pagemark</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>栏目页面标识</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</p>
<table cellpadding='0' border='1' cellspacing='0'>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td>
<blockquote><p>
<blockquote><b><span>返回值</span></b></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><b><span>说明</span></b></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>channel</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>栏目对象，类型为数据对象<span>channel</span></span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>index</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>索引</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</blockquote><b><span>示例<span>1</span></span></b></p>
<p>
<pre><code><br>
您的位置： <br>
<br>
&lt;a href="${contextPath}site/${site.sourcepath}/index.html"&gt;首页&lt;/a&gt; <br>
<br>
&lt;@channelPath siteid="${site.id}" id="${currChannel.id}" ;channel&gt; <br>
<br>
- &lt;a href="${channel.pageurl}"&gt;${channel.name}&lt;/a&gt; <br>
<br>
&lt;/@channelPath&gt; <br>
<br>
<br>
</code></pre>
<blockquote></p>
<p>
</blockquote><a href='http://static.oschina.net/uploads/space/2013/0510/135552_LX5r_916014.png'><img src='http://static.oschina.net/uploads/space/2013/0510/135552_LX5r_916014.png' alt='' /></a></p>
<p>
<blockquote></p>