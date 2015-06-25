# unitList #

<p>从FreeCMS 1.2 开始支持</p>
<p>根据参数提取单位对象列表。</p>
<table>
<blockquote><tbody>
<blockquote><tr>
<blockquote><td>
<p><span>参数</span></p>
</td>
<td>
<p><span>说明</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>parid</span></p>
</td>
<td>
<p><span>空字符</span><span>:</span><span>所有</span><span>;"par":</span><span>一级单位</span><span>;"parid":</span><span>此</span><span>id</span><span>下单位</span><span>;</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>filter</span></p>
</td>
<td>
<p><span>空字符</span><span>:</span><span>所有</span><span>;"mail":</span><span>可以接收互动信件的单位</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>cache</span></p>
</td>
<td>
<p><span>是否使用缓存，默认为</span><span>false</span></p>
</td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p> </p>
<table>
<tbody>
<blockquote><tr>
<blockquote><td>
<p><span>返回值</span></p>
</td>
<td>
<p><span>说明</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>unit</span></p>
</td>
<td>
<p><span>单位对象，类型为数据对象unit</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>index</span></p>
</td>
<td>
<p><span>索引</span></p>
</td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p> </p>
<p>示例1</p>
<p>提取所有可以接收信件的单位。</p>
<p></blockquote>

<pre><code><br>
&lt;@unitList parid="" filter="mail";unit,index&gt;<br>
<br>
${index+1} ${unit.name}<br>
<br>
&lt;/@unitList&gt;<br>
<br>
<br>
</code></pre>
</p>