# 模板标签 #

FreeCMS提供了丰富易用的标签来方便大家制作模板,FreeCMS模板标签使用freemarker自定义标签功能实现，如果您会使用freemarker自定义标签功能，您可以开发属于自己的标签。

如果您不熟悉freemarker,FreeTeam建议您先学习一下，您可以在通过下载地址
http://code.google.com/p/freecms/downloads/detail?name=FreeMarker_Manual_zh_CN.pdf
下载freemarker的中文手册进行学习。

FreeCMS模板标签主要分为数据对象和标签，数据对象是标签提取数据的封装对象。

如:channel标签会根据栏目id查询出此栏目的数据，并把数据封装成对象供页面调用。

<@channel id="b7a761e6-8308-472a-9758-1d1d5142a609" ;channel>

${channel.name}

</@channel>

其中id="b7a761e6-8308-472a-9758-1d1d5142a609"是参数，";"号后面封装对象。

提示：对象名字可以自定义，推荐使用通俗易懂的名字，如"channel"。

${channel.name}是对象的调用方法。