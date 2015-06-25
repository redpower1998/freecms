# 常见问题解答 #

## FreeCMS公开所有源码么? ##
FreeCMS遵守Apache License 2.0开源协议，并公开所有源码，您可以随意下载并传播源码，并可根据自己的需求进行二次开发，但FreeTeam保留对FreeCMS的所有权。

## FreeCMS可以免费商用么? ##
免费是FreeCMS的宗旨，您可以使用FreeCMS建设自己的个人站点，也可以应用于商业项目而无需商业授权。

## FreeCMS部署到子目录首页乱了怎么办? ##
FreeCMS可以放在子目录中，首页乱主要是因为发布时是以根目录下生成的首页，您只需要重新生成一下静态页面就可以了。

## FreeCMS有些功能出现乱码怎么办? ##
FreeCMS的项目编码为UTF-8,在部署到tomcat后，设置参数URIEncoding=”UTF-8”后，就不会出现乱码问题了。



&lt;Connector port="8080" protocol="HTTP/1.1" connectionTimeout="20000" URIEncoding="UTF-8" redirectPort="8443" /&gt;

