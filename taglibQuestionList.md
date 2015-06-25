# questionList #


<p>
<blockquote><strong>从FreeCMS 1.2 开始支持</strong></p>
<p>
根据参数提取网上调查对象列表。</p>
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
<blockquote><span>id</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>网上调查id</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>siteid</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>从FreeCMS 1.</span><span>4</span><span>开始支持</span></p>
</blockquote><p>
<blockquote><span>所属站点</span><span>id</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>name</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>名称</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>nameLen</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>从FreeCMS 1.3 开始支持</span></p>
</blockquote><p>
<blockquote><span>名称显示长度</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>selecttype</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>选择类型</span><span> </span><span>空字符串表示所有</span><span>(</span><span>默认</span><span>) 0</span><span>单选</span><span> 1</span><span>多选</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>order</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>排序</span><span> </span></p>
</blockquote><p>
<blockquote><span>1</span><span>时间倒序</span><span>(</span><span>默认</span><span>) </span></p>
</blockquote><p>
<blockquote><span>2</span><span>时间正序</span></p>
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>isok</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>有效</span><span> </span><span>空字符串表示所有</span><span>(</span><span>默认</span><span>) 0</span><span>无效</span><span> 1</span><span>有效</span></p>
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
</blockquote></blockquote></td>
</blockquote></tr>
<tr>
<blockquote><td>
<blockquote><p>
<blockquote><span>cache</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>是否使用缓存，默认为</span><span>false</span></p>
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
<blockquote><span>question</span></p>
</blockquote></blockquote></td>
<td>
<blockquote><p>
<blockquote><span>网上调查对象，类型为数据对象question</span></p>
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
</blockquote></blockquote></td>
</blockquote></tr>
</blockquote></tbody>
</table>
<p>
<blockquote></p>
<p>
</blockquote>示例1</p>
<p>
提取前两个网上调查。</p>
<p></blockquote>

<pre><code>&lt;@questionList num="2";question,index&gt;<br>
<br>
${index} : ${question.name}&lt;br&gt;<br>
<br>
&lt;/@questionList&gt;<br>
</code></pre>

</p>




<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Fwww.tmall.com' title='点击有惊喜哦!'><img src='http://static.oschina.net/uploads/space/2013/0514/113712_xltW_916014.jpg' alt='' /></a>

<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Fwww.tmall.com'>天猫</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGKas1PIKp0U37pZuBotzOg7OjeU9mIWS5%2B5UROBz6sq4fiHePnGhf6UrWuOtfD2G6QGcAHIXpjhEtESpuqsRo0a&pid=mm_13244061_0_0'>聚划算</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGKas1PIKp0U37pZuBotzOg7OjY%2F2R0Ke3HHzv2kJZUH%2FehqodvBvxouiCPW7UkqmIn4pk08catp7aU2wpqfONSeQJM%3D&pid=mm_13244061_0_0'>淘宝旅行</a>
<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Fchaoshi.tmall.com'>天猫超市</a>
<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Fgame.taobao.com%2F'>淘宝游戏</a>
<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2Flist.tmall.com%2Fsearch_product.htm%3Fcat%3D50023647%26style%3Dg'>天猫母婴</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql7yXxt68u47A97attNG%2FWfaHAPFpIyLuDglIlZZIzTDC7kWPGdJOlnPB8PjDzLnUOgayyAdAcPsDvP'>品牌街</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql7yXimOFVcUGdonSL8IVYI7uAMyAmtUl8PQxAKNX82jX4I3FP%2Bzblfw9nYDL8Ccgo2EVn%2F5mhrLeJHk3xnHUdE9EA4vrhH0%2BG0tfgwfC0AN%2BOfYJxXhxy84PjPziJOrv3eTJ1I87IzG7s1SFQz9EE73EBVMmrueMgsmq4m'>天猫原创</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql7xi5u%2BU%2FFo%2FKIXMYsxVmyG31s2eG1vpA9myZsBa54gE2ob9ljOn%2FegW292cVm0zr1Z9zr2qHDvwWehQ%3D%3D'>天猫预售</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql7xirjzithZf5kbM1fC812QEwcSPDdeboAGSL1jXlIeC%2BRPAtfpj2TuQ9KXXR7N0hzmMgh98lacdopjw%3D%3D'>医药</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql0HOxqkjIO3w%2FbE4RZj1WFYOd%2B7tcBlZ4F3Rb9x0GlNkOh4lYZSlAgMSIGBMfqK5dZegLK4TiYRg%3D%3D'>家装</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql0HaQs3EX%2F0TysdI0JVzYmcDgx2%2B2S1AG7XRLWvzwUhooGmwl1bAKcImHchnXHMYvC4jmNs78%3D'>书城</a>
<a href='http://s.click.taobao.com/t_9?p=mm_13244061_0_0&l=http%3A%2F%2F3c.tmall.com'>电器城</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql0H7I0lWj1cuGzphXkEAKfwW8AgqQMOfXSocNQXMbLzdHrvJoGNCLKHKbfkaeX9cFrN4YCd0N2'>充值中心</a>
<a href='http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB05%2Bm7rfGGjlY60oHcc7bkKOQiQwql0GstRwRA3NozKTDBI1h0QDSDuxyEb%2BoqiTI8Wfvs%2B%2Fo%2B9weMfivsQjBN9qdfuPjYif%2BAz85G%2FdJrhuhz9N2Z%2BwBGSosJOr6iNDzfkqZCEBXaRWK1q%2F27DqU7K%2Fln9hWjzl1NbQf0JUSg%2FYY8k%2FDCHBAp9FlkVSWiXQfwf6lg%2FIcuA%2Fw%3D%3D'>网店/网络服务/软件</a>