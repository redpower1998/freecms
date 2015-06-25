# channelList #

<p>
<blockquote><span>根据参数提取栏目对象列表。</span></p>
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
<blockquote><span>parid</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>空字符<span>:</span>查询所有栏目<span>;</span></span></p>
</blockquote><p>
<blockquote><span>"par":</span><span>查询一级栏目<span>;</span></span></p>
</blockquote><p>
<blockquote><span>"parid":</span><span>查询此<span>id</span>下栏目<span>;</span></span></p>
</blockquote></blockquote></td>
</blockquote></tr><tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote>navigation</p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote>从FreeCMS 1.3 开始支持</p>
</blockquote><p>
<blockquote>是否导航 空字符串:所有;"1":是;"0":否;</p>
</blockquote></blockquote></td>
</blockquote><blockquote></tr>
<tr>
<blockquote><td valign='top'>
<blockquote><p>
<blockquote>state</p>
</blockquote></blockquote></td>
<td valign='top'>
<blockquote><p>
<blockquote>从FreeCMS 1.3 开始支持</p>
</blockquote><p>
<blockquote>是否有效 空字符串:所有;"1":是;"0":否;</p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></blockquote></tbody>
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
<blockquote><tr>
</blockquote><blockquote><td>
<blockquote><p>
<blockquote><span>index</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>索引<br>
从FreeCMS 1.2 开始支持<span></span></span></p>
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</blockquote><b><span>示例<span>1</span></span></b></p>
<p>
<span>根据站点<span>id</span>提取所有栏目。</span></p>
<p>
<pre><code><br>
&lt;@channelList siteid="${site.id}" parid="" ;channel&gt; <br>
    &lt;H1 &gt;${channel.name}&lt;/H1&gt;<br>
&lt;/@channelList&gt;<br>
<br>
</code></pre>
</p>
<p>
<blockquote></p>
<p>
</blockquote><b><a href='http://static.oschina.net/uploads/space/2012/1230/190011_A0Hy_916014.jpg'><img src='http://static.oschina.net/uploads/space/2012/1230/190011_A0Hy_916014.jpg' alt='' /></a></b></p>
<p>
<b><span>示例</span></b><b><span>2</span></b></p>
<p>
<span>根据站点<span>id</span>提取所有一级栏目。</span></p>
<p>
<pre><code>&lt;@channelList siteid="${site.id}" parid="par" ;channel&gt; <br>
    &lt;H1 &gt;${channel.name}&lt;/H1&gt;<br>
&lt;/@channelList&gt; <br>
<br>
<br>
</code></pre>
</p>
<p>
<a href='http://static.oschina.net/uploads/space/2012/1230/190101_Wq9N_916014.png'><img src='http://static.oschina.net/uploads/space/2012/1230/190101_Wq9N_916014.png' alt='' /></a></p>
<p>
<blockquote></p>
<p>
</blockquote><b><span>示例</span></b><b><span>3</span></b></p>
<p>
<span>根据站点<span>id</span>和<span>parid</span>提取指定栏目的下级栏目。</span></p>
<p>
<pre><code>&lt;@channelList siteid="${site.id}" parid="c60bebab-cf84-4ba9-8c79-3dff5c2dc427" ;channel&gt; <br>
    &lt;H1 &gt;${channel.name}&lt;/H1&gt;<br>
&lt;/@channelList&gt;<br>
<br>
</code></pre></blockquote>

</p>
<p>
<blockquote><a href='http://static.oschina.net/uploads/space/2012/1230/190137_g37l_916014.png'><img src='http://static.oschina.net/uploads/space/2012/1230/190137_g37l_916014.png' alt='' /></a></p>
<p>
<blockquote></p>
<p>
</blockquote><b><span>示例</span></b><b><span>4</span></b></p>
<p>
<span>根据站点<span>id</span>和<span>parid</span>递归提取栏目。</span></p>
<p>
<pre><code>&lt;@channelList siteid="${site.id}" parid="par" ;channel&gt; <br>
    &lt;H1 &gt;${channel.name}&lt;/H1&gt;<br>
    &lt;UL&gt;<br>
    &lt;@channelList siteid="${site.id}" parid="${channel.id}" ;sonChannel&gt; <br>
        &lt;LI&gt;&lt;A href="${sonChannel.pageurl}"&gt;${sonChannel.name}&lt;/A&gt; <br>
    &lt;/@channelList&gt;<br>
    &lt;/UL&gt;<br>
&lt;/@channelList&gt;<br>
<br>
</code></pre>
<blockquote></p>
<p>
<a href='http://static.oschina.net/uploads/space/2012/1230/190158_zP8D_916014.png'><img src='http://static.oschina.net/uploads/space/2012/1230/190158_zP8D_916014.png' alt='' /></a></p>