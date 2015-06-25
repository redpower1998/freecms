# ajaxLoad #
<p>从FreeCMS 1.2 开始支持</p>
<p>根据参数通过ajax加载页面。</p>
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
<p><span>targetid</span></p>
</td>
<td>
<p><span>把页面加载到指定</span><span>id</span><span>元素下</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>url</span></p>
</td>
<td>
<p><span>页面地址</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>param</span></p>
</td>
<td>
<p><span>参数，使用</span><span>json</span><span>数据</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>method</span></p>
</td>
<td>
<p><span>获取方法，</span><span>get(</span><span>默认</span><span>)</span><span>或</span><span>post</span></p>
</td>
</blockquote></tr>
<tr>
<blockquote><td>
<p><span>loadjs</span></p>
</td>
<td>
<p><span>是否加载依赖的</span><span>js</span></p>
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
<p><span>code</span></p>
</td>
<td>
<p><span>生成的</span><span>ajax</span><span>代码</span></p>
</td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p> </p>
<p>此标签依赖的文件</p>
<p></blockquote>

<pre><code>&lt;script type="text/javascript" src="${contextPath}js/jquery-1.5.1.min.js"&gt;&lt;/script&gt;<br>
<br>
</code></pre>
</p>
<p>示例1</p>
<p>加载指定页面并传递参数。</p>
<p></p>
<p>

<pre><code>　　&lt;div id="ajaxLoadDiv"&gt;<br>
　　 &lt;@ajaxLoad targetid="ajaxLoadDiv" url="${contextPath}/test.jsp" param="id:'1',name:'姓名'" method="post";code&gt;<br>
　　 ${code}<br>
　　 &lt;/@ajaxLoad&gt;<br>
 &lt;/div&gt;<br>
</code></pre>
</p>