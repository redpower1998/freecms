# 安装手册 #

<h1>
<span>前提条件</span>
</h1>
<p>
<span>在安装</span><span>FreeCMS</span><span>前，您需要安装以下软件。</span>
</p>
<p>
<span><span>1.<span> </span></span></span><b><span>java</span></b><b><span>环境</span></b><span>：</span><span>FreeCMS</span><span>采用</span><span>java</span><span>语言开发，所以</span><span>java</span><span>环境是必须的，</span><span>FreeCMS</span><span>要求</span><span>java</span><span>版本在</span><span>1.5</span><span>以上。安装方法参见</span><span><a href='http://my.oschina.net/u/916014/blog/95074'><a href='http://my.oschina.net/u/916014/blog/95074'>http://my.oschina.net/u/916014/blog/95074</a></a></span><span>。</span>
</p>
<p>
<span><span>2.<span> </span></span></span><b><span>数据库软件</span></b><span>:FreeCMS</span><span>支持两种数据库：</span><span>Mysql</span><span>和</span><span>Mssql</span><span>。请根据您的需要进行安装。</span>
</p>
<p>
<b><span>Mysql</span></b><span>推荐版本在</span><span>5.1</span><span>以上，安装方法参见</span>
</p>
<p>
<span><a href='http://my.oschina.net/u/916014/blog/95082'><a href='http://my.oschina.net/u/916014/blog/95082'>http://my.oschina.net/u/916014/blog/95082</a></a></span>
</p>
<p>
<span>为了方便使用可以安装</span><span>mysql</span><span>图形管理软件，如</span><span>SQLyog</span><span>。</span>
</p>
<p>
<b><span>Mssql</span></b><span>推荐版本在</span><span>Sql server 2000</span><span>以上，安装方法参见</span>
</p>
<p>
<span><a href='http://my.oschina.net/u/916014/blog/95087'><a href='http://my.oschina.net/u/916014/blog/95087'>http://my.oschina.net/u/916014/blog/95087</a></a></span>
</p>
<p>
<b><span>注意</span></b><span>：</span><span>sql server 2000 </span><span>需要安装</span><span>SQL2KSP4</span><span>补丁。</span>
</p>
<p>
<span><span>3.<span> </span></span></span><b><span>服务器中间件</span></b><span>：</span><span>FreeCMS</span><span>属于</span><span>J2EE</span><span>项目，需要服务器中间件来运行，</span><span>FreeCMS</span><span>可以在</span><span>Tomcat/Jboss/WAS/WebLogic</span><span>等主流服务器上面运行，本手册以</span><span>Tomcat</span><span>为例，</span><span>Tomcat</span><span>推荐版本在</span><span>6.0</span><span>以上，</span><span>Tomcat</span><span>安装方法参见</span><span><a href='http://my.oschina.net/u/916014/blog/95085'><a href='http://my.oschina.net/u/916014/blog/95085'>http://my.oschina.net/u/916014/blog/95085</a></a></span><span>。</span>
</p>
<h1>
<span>安装</span><span>FreeCMS</span>
</h1>
<p>
<span><span>1.<span> </span></span></span><b><span>安装数据库</span></b>
</p>
<p>
<span>FreeCMS</span><span>支持两种数据库：</span><span>Mysql</span><span>和</span><span>Mssql</span><span>。请根据您的需要进行安装。</span>
</p>
<p>
<b><span>Mysql</span></b><span>:</span><span>在安装包中找到</span><span>DB/mysql</span><span>文件夹</span><span>,</span><span>这里存放着</span><span>FreeCMS</span><span>数据库的</span><span>mysql</span><span>备份文件。</span>
</p>
<p>
<span>打开</span><span>mysql</span><span>命令行窗口</span>
</p>
<p>
<span><img src='http://static.oschina.net/uploads/space/2012/1211/134527_WAeZ_916014.gif' alt='' /></span>
</p>
<p>
<span></span>
</p>
<p>
<span></span>
</p>
<p>
<span><span><span></span><img src='http://static.oschina.net/uploads/space/2012/1211/134600_vDEC_916014.gif' alt='' /><span></span></span></span>
</p>
<p>
<span>输入密码进入数据库</span>
</p>
<p>
<span></span><img src='http://static.oschina.net/uploads/space/2012/1211/134653_RRFK_916014.gif' alt='' /><span></span>
</p>
<p>
<span></span>
</p>
<p>
<span>运行命令：</span><span>source D:\freecms-1.0\web\DB\mysql\freecms.sql</span>
</p>
<p>
<img src='http://static.oschina.net/uploads/space/2012/1211/134726_BFh4_916014.gif' alt='' /><span></span>
</p>
<p>
<span></span>
</p>
<p>
<span></span>
</p>
<p>
<img src='http://static.oschina.net/uploads/space/2012/1211/134754_hU7Q_916014.gif' alt='' /><span></span>
</p>
<p>
<span>运行无错误则完成数据库安装。</span><span></span>
</p>
<p>
<b><span>Mssql</span></b><span>:</span><span> </span><span>在安装包中找到</span><span>DB/mssql</span><span>文件夹</span><span>,</span><span>这里存放着</span><span>FreeCMS</span><span>数据库的</span><span>mssql</span><span>备份文件和数据库文件。您可以使用数据库还原或数据库附加功能完成</span><span>mssql</span><span>数据库的安装。</span>
</p>
<p>
<span>打开企业管理</span>
</p>
<p>
<span><span> <img src='http://static.oschina.net/uploads/space/2012/1211/134838_cDgh_916014.gif' alt='' /></span></span>
</p>
<p>
<span><span></span></span>
</p>
<p>
<b><span>数据库还原</span></b><span>: </span><span>点击数据库》所有任务》还原数据库</span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/134902_7eXD_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span>从设备中选择到备份文件</span><span>:DB/mssql/freecms.bak,</span><span>并设置还原为数据库为</span><span>freecms.</span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/134929_4cTL_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span>点击“选项”选项卡，“移至物理文件名”设置为自己机器的位置。</span><span></span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/134959_f8qf_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span>点击确定</span><span></span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/135029_uo8X_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<b><span>数据库附加</span></b><span>: </span><span>点击数据库》所有任务》附加数据库</span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/135050_9fOb_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span>选择</span><span>DB/mssql/</span><span> <span>FreeCMS.mdf</span></span><span>文件</span><span></span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/135112_LNML_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span>点击确定</span><span></span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/135137_KJZu_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span>点击是</span><span></span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/135201_Xzig_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span></span>
</p>
<p>
<span><span>2.<span> </span></span></span><b><span>部署到</span><span>Tomcat</span></b>
</p>
<p>
<span>复制安装包中</span><span>ROOT</span><span>文件夹至</span><span>Tomcat</span><span>目录下</span><span>webapps</span><span>文件夹下。可删除原来的</span><span>ROOT</span><span>文件夹。</span><span>FreeCMS</span><span>同时支持虚拟目录部署，如果您不想让</span><span>FreeCMS</span><span>作为</span><span>ROOT</span><span>部署，可以把</span><span>ROOT</span><span>文件夹名称改为</span><span>freecms</span><span>或您想要的名称。<br>注意:tomcat需要设置URIEncoding=”UTF-8”。<br>
<p>
<b><span><span>3.<span> </span></span></span></b><b><span>配置</span><span>FreeCMS</span></b>
</p>
<p>
<span>打开</span><span>ROOT\WEB-INF\classes\db.properties</span><span>文件。</span>
</p>
<p>
<span>environment </span><span>设置当前使用那种数据库，</span><span>mysql</span><span>或</span><span>mssql</span><span>。</span>
</p>
<p>
<b><span>Mysql</span></b><b><span>数据库配置</span></b><span>：</span>
</p>
<p>
<span>mysql.driver=org.gjt.mm.mysql.Driver<span> </span></span><span>使用的数据库驱动程序</span>
</p>
<p>
<span>mysql.url=jdbc:mysql://localhost:3306/freecms<span> </span></span><span>数据库</span><span>ip</span><span>地址和数据库名称</span>
</p>
<p>
<span>mysql.username=root<span> </span></span><span>数据库用户名</span>
</p>
<p>
<span>mysql.password=root<span> </span></span><span>数据库密码</span>
</p>
<p>
<b><span>Mssql</span></b><b><span>数据库配置</span></b><span>：</span>
</p>
<p>
<span>mssql.driver=net.sourceforge.jtds.jdbc.Driver<span> </span></span><span>使用的数据库驱动程序</span>
</p>
<p>
<span>mssql.url=jdbc\:jtds\:sqlserver\://localhost\:1433/FreeCMS;SelectMethod\=cursor<span> </span></span><span>数据库</span><span>ip</span><span>地址和数据库名称</span>
</p>
<p>
<span>mssql.username=sa<span> </span></span><span>数据库用户名</span>
</p>
<p>
<span>mssql.password=sa<span> </span></span><span>数据库密码</span>
</p>
<p>
<b><span><span>4.<span> </span></span></span></b><b><span>启动</span><span>Tomcat</span></b>
</p>
<p>
<span>运行</span><span>Tomcat</span><span>目录</span><span>\bin\ startup.bat</span><span>文件。</span>
</p>
<p>
<img src='http://static.oschina.net/uploads/space/2012/1211/135451_1CsP_916014.gif' alt='' />
</p>
<p>
<span></span>
</p>
<p>
<b><span><span>5.<span> </span></span></span></b><b><span>测试页面</span><span></span></b>
</p>
<p>
<span>打开浏览器，输入</span><span><a href='http://localhost:8080/login.jsp'><a href='http://localhost:8080/login.jsp'>http://localhost:8080/login.jsp</a></a></span><span>。</span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/135513_95ae_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span>用户名</span><span>admin,</span><span>密码</span><span>ad</span><span>，登录测试</span><span></span>
</p>
<img src='http://static.oschina.net/uploads/space/2012/1211/135538_vw54_916014.gif' alt='' />
<p>

</p>
<p>
<span></span>
</p>
<p>
<span>安装成功！</span>
</p>