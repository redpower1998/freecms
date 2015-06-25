# linkClass #
<p>
<blockquote></p>
<p>
</blockquote><blockquote>根据参数提取链接分类对象。</p>
<table>
<tbody>
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
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<table>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>返回值</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>说明</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>linkClass</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>链接分类对象</span></p>
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
<blockquote><span>从FreeCMS 1.2 开始支持</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</blockquote>示例1</p>
<p>
提取下拉链接分类</p>
<p>
<pre><code>&lt;@linkClass siteid="${site.id}" type="1";linkClass&gt;<br>
<br>
&lt;select &gt;<br>
<br>
  &lt;option&gt;${linkClass.name}&lt;/option&gt;<br>
<br>
&lt;/select&gt;<br>
<br>
&lt;/@linkClass&gt;<br>
</code></pre></blockquote>

</p>
<p>
<blockquote><a href='http://static.oschina.net/uploads/space/2013/0311/155739_668T_916014.png'><img src='http://static.oschina.net/uploads/space/2013/0311/155739_668T_916014.png' alt='' /></a></p>