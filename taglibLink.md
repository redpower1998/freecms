# link #
<p>
<blockquote><span>根据参数提取链接对象。</span></p>
<p>
<blockquote></p>
<table>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>参数</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>说明</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>siteid</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>链接分类所属站点id</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>classId</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>链接分类id</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>classPagemark</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>链接分类页面标识，多个之间用,分隔</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>pagemark</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>链接页面标识，多个之间用,分隔</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>type</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>类型  </span></p>
</blockquote><p>
<blockquote><span>1 </span><span>下拉</span></p>
</blockquote><p>
<blockquote><span>2 </span><span>图片</span></p>
</blockquote><p>
<blockquote><span>3 </span><span>文字</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>num</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>数量</span></p>
</blockquote><p>
<blockquote><span>从FreeCMS 1.</span><span>4</span><span>开始支持</span></p>
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
<blockquote><td>
<blockquote><p>
<blockquote><span><strong>返回值</strong></span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span><strong>说明</strong></span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>link</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>链接对象</span></p>
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
</blockquote><p>
<blockquote><span><strong><em>从FreeCMS 1.2 开始支持</em></strong></span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</blockquote>示例1</p>
<p>
提取下拉链接</p>
<p></blockquote>

<pre><code>&lt;@linkClass siteid="${site.id}" type="1";linkClass&gt;<br>
<br>
&lt;select  onchange="if(this.value!=''){window.open(this.value);}" &gt;<br>
<br>
  &lt;option&gt;${linkClass.name}&lt;/option&gt;<br>
<br>
  &lt;@link classId="${linkClass.id}" ; link&gt;<br>
<br>
&lt;option value="${link.url}"&gt;${link.name}&lt;/option&gt;<br>
<br>
  &lt;/@link&gt;<br>
<br>
&lt;/select&gt;<br>
<br>
&lt;/@linkClass&gt; <br>
</code></pre>

</p>
<p>
<blockquote><a href='http://static.oschina.net/uploads/space/2013/0312/144437_HwWk_916014.png'><img src='http://static.oschina.net/uploads/space/2013/0312/144437_HwWk_916014.png' alt='' /></a></p>