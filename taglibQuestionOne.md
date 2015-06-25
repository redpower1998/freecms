# questionOne #

<p><strong><em>从<span>FreeCMS 1.2<span> </span></span>开始支持</em></strong></p>
<p>提取指定<span>id</span>的网上调查。</p>
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
<p><span>id</span></p>
</td>
<td>
<p><span>网上调查<span>id</span></span></p>
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
<p> </p>
<p> </p>
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
<p><span>question</span></p>
</td>
<td>
<p><span>网上调查对象</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>answerList</span></p>
</td>
<td>
<p><span>选项对象列表</span></p>
</td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p> </p>
<p>网上调查提交表单，可参见模板管理中模板示例库<span>/</span>网上调查<span>/questionOne.html</span></p>
<p> </p>
<p><strong>示例<span>1</span></strong></p>
<p>提取指定<span>id</span>网上调查，并显示网上调查选项。</p>
<p>
<pre><code>&lt;@questionOne id="03d86aaa-0b64-44a4-a1ff-e154591a8379" ; question,answerList&gt;<br>
<br>
${question.name!""}<br>
<br>
&lt;table&gt;<br>
<br>
&lt;tr&gt;&lt;td&gt;选项&lt;/td&gt;&lt;td&gt;选择次数&lt;/td&gt;&lt;td&gt;占比&lt;/td&gt;&lt;/tr&gt;<br>
<br>
    &lt;#list answerList as answer&gt;<br>
<br>
&lt;tr&gt;&lt;td&gt;${answer.name!""}&lt;/td&gt;&lt;td&gt;${answer.selectnum!0}&lt;/td&gt;&lt;td&gt;${((answer.selectnum!0)/(question.selectnum!1))?string.percent}&lt;/td&gt;<br>
<br>
    &lt;/tr&gt;<br>
<br>
    &lt;/#list&gt;<br>
<br>
&lt;/table&gt;<br>
<br>
&lt;/@questionOne&gt; <br>
<br>
</code></pre>
</p>