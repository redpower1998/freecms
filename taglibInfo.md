# info #
<p>
<blockquote><span>从FreeCMS 1.3 开始支持</span></p>
<p>
<span>根据</span><span>id</span><span>提取信息。</span></p>
<p>
<blockquote></p>
<table>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td width='146' valign='top'>
<blockquote><p>
<blockquote><span>参数</span></p>
</blockquote></blockquote></td>
<td width='390' valign='top'>
<blockquote><p>
<blockquote><span>说明</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td width='146' valign='top'>
<blockquote><p>
<blockquote><span>id</span></p>
</blockquote></blockquote></td>
<td width='390' valign='top'>
<blockquote><p>
<blockquote><span>信息id</span></p>
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
<blockquote><td width='132' valign='top'>
<blockquote><p>
<blockquote><span>返回值</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>说明</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td width='132' valign='top'>
<blockquote><p>
<blockquote><span>info</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>信息对象，类型为数据对象info</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</blockquote><span>示例1</span></p>
<p>
<span>根据信息id提取信息。</span></p>
<p></blockquote>

<pre><code><br>
&lt;@info id="1c5c3311-62c3-4548-8573-51ba6cd6eb66";info&gt;<br>
${info.title}<br>
&lt;/@info&gt;<br>
<br>
</code></pre>
</p>