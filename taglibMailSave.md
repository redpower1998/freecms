# mailSave #
<p><strong><em>从<span>FreeCMS 1.2<span> </span></span>开始支持</em></strong></p>
<p>信件保存处理。</p>
<p>
<table cellpadding='0' cellspacing='0' border='1'>
<blockquote><tbody>
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
<p><span>msg</span></p>
</td>
<td>
<p><span>处理结果</span></p>
</td>
</blockquote></tr>
</blockquote></tbody>
</table>
</p>
<p> </p>
<p>信件提交表单，可参见模板管理中模板示例库<span>/</span>信件<span>/</span>给个人写信<span>.html</span></p>
<p><strong>示例<span>1</span></strong></p>
<p>
<pre><code>&lt;@mailSave ;msg&gt;<br>
<br>
${msg}<br>
<br>
&lt;/@mailSave&gt;<br>
<br>
</code></pre>
</p>