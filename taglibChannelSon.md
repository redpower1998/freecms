# channelSon #
<p>
<blockquote><span>从FreeCMS 1.3 开始支持</span></p>
<p>
<span>提取所有子栏目。</span></p>
<p>
<blockquote></p>
<p>
</p>
<table>
</blockquote><tbody>
<blockquote><tr>
<blockquote><td width='132' valign='top'>
<blockquote><p>
<blockquote><span>参数</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>说明</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td width='132' valign='top'>
<blockquote><p>
<blockquote><span>parid</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>空字符</span><span>:</span><span>所有</span><span>;"par":</span><span>一级栏目</span><span>;"parid":</span><span>此</span><span>id</span><span>下栏目</span><span>;</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td width='132' valign='top'>
<blockquote><p>
<blockquote><span>siteid</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>栏目所属站点id</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td width='132' valign='top'>
<blockquote><p>
<blockquote><span>navigation</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>是否导航</span><span> </span><span>空字符串</span><span>:</span><span>所有</span><span>;"1":</span><span>是</span><span>;"0":</span><span>否</span><span>;</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td width='132' valign='top'>
<blockquote><p>
<blockquote><span>state</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>是否有效</span><span> </span><span>空字符串</span><span>:</span><span>所有</span><span>;"1":</span><span>是</span><span>;"0":</span><span>否</span><span>;</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</p>
<p>
</p>
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
<blockquote><span>channel</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>栏目对象，类型为数据对象channel</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td width='132' valign='top'>
<blockquote><p>
<blockquote><span>index</span></p>
</blockquote></blockquote></td>
<td width='404' valign='top'>
<blockquote><p>
<blockquote><span>索引</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</p>
<p>
</blockquote><span>示例1</span></p>
<p>
<span>提取所有一级栏目</span></p>
<p>
<pre><code>&lt;@channelSon siteid="${site.id}" parid="par" ;channel&gt; <br>
${channel.name}<br>
&lt;/@channelSon&gt;<br>
<br>
<br>
</code></pre></blockquote>


<blockquote></p>