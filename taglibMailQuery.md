# mailQuery #
<p><strong><em>从<span>FreeCMS 1.2<span> </span></span>开始支持</em></strong></p>
<p>根据查询码查询信件处理结果。</p>
<p>
<table cellpadding='0' cellspacing='0' border='1'>
<blockquote><tbody>
<blockquote><tr>
<blockquote><td>
<p><strong><span>参数</span></strong></p>
</td>
<td>
<p><strong><span>说明</span></strong></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>querycode</span></p>
</td>
<td>
<p><span>查询码</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>cache</span></p>
</td>
<td>
<p><span>是否使用缓存，默认为<span>false</span></span></p>
</td>
</blockquote></tr>
</blockquote></tbody>
</table>
</p>
<p> </p>
<p>
<table cellpadding='0' cellspacing='0' border='1'>
<tbody>
<blockquote><tr>
<blockquote><td>
<p><strong><span>返回值</span></strong></p>
</td>
<td>
<p><strong><span>说明</span></strong></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>mail</span></p>
</td>
<td>
<p><span>信件对象，类型为数据对象<span>mail</span></span></p>
</td>
</blockquote></tr>
</blockquote></tbody>
</table>
</p>
<p> </p>
<p><strong>示例<span>1</span></strong></p>
<p>查询指定查询码信件的回复内容。</p>
<p></blockquote>

<pre><code>&lt;@mailQuery querycode="201301010101011234" ;mail&gt;<br>
<br>
${mail.recontent! ""}<br>
<br>
&lt;/@mailQuery&gt;<br>
<br>
</code></pre>
</p>