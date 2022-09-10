---
title: "R语言ggplot2画个月饼送给你，祝你中秋节快乐！"
date: 2022-09-10T09:30:40Z
draft: ["false"]
tags: [
  "fetched",
  "小明的数据分析笔记本"
]
categories: ["Acdemic"]
---
R语言ggplot2画个月饼送给你，祝你中秋节快乐！ by 小明的数据分析笔记本
------
<div><section data-tool="mdnice编辑器" data-website="https://www.mdnice.com" data-mpa-powered-by="yiban.io"><blockquote data-tool="mdnice编辑器"><p>祝福关注公众号的老师 <strong>教师节/中秋节快乐</strong>！，祝福关注公众号的同学们 <strong>中秋节快乐！</strong></p></blockquote><p data-tool="mdnice编辑器">今天的推文就简单画一个月饼（简称 画饼 ）吧，没有想到太好的办法，基本的逻辑就是用ggplot2添加已经做好的图片</p><h2 data-tool="mdnice编辑器"><span></span><span>实现代码</span><span> </span></h2><pre data-tool="mdnice编辑器"><span></span><code>library(ggimage)<br>library(ggplot2)<br>library(patchwork)<br>ggplot()+<br>  geom_image(aes(x=1,y=1),<br>             image=<span>"https://www.emojiall.com/en/header-svg/%F0%9F%A5%AE.png"</span>,<br>             size=1)+<br>  theme_void()+<br>  geom_text(aes(x=1,y=0.2),<br>            label=<span>"中秋节快乐！"</span>,<br>            size=10,hjust=0.7,vjust=1,<br>            family=<span>"STKaiti"</span>)+<br>  ylim(0,2) -&gt; p1<br><br>ggplot()+<br>  geom_image(aes(x=1,y=1),<br>             image=<span>"https://www.emojiall.com/en/header-svg/%F0%9F%A5%AE.png"</span>,<br>             size=1)+<br>  theme_void()+<br>  geom_text(aes(x=1,y=0.2),<br>            label=<span>"教师节快乐！"</span>,<br>            size=10,hjust=0.7,vjust=1,<br>            family=<span>"STKaiti"</span>)+<br>  ylim(0,2) -&gt; p2<br><br><br>p1+p2<br></code></pre><figure data-tool="mdnice编辑器"><img data-ratio="0.4266129032258065" data-src="https://mmbiz.qpic.cn/mmbiz_png/t1wZDoUyFk6M6uD1OUS5abP91z7ic9Rz3niay3WQaTF7VE17mweC1B2kxeavNm108hMGbdLsL3bialUudAS9YAXmA/640?wx_fmt=png" data-type="png" data-w="1240" src="https://mmbiz.qpic.cn/mmbiz_png/t1wZDoUyFk6M6uD1OUS5abP91z7ic9Rz3niay3WQaTF7VE17mweC1B2kxeavNm108hMGbdLsL3bialUudAS9YAXmA/640?wx_fmt=png"><figcaption>image.png</figcaption></figure><blockquote data-tool="mdnice编辑器"><p>这次推文没有示例数据，数据是和代码写到一起了，代码直接在推文中复制就行</p></blockquote><p data-tool="mdnice编辑器">欢迎大家关注我的公众号</p><p data-tool="mdnice编辑器"><strong>小明的数据分析笔记本</strong></p><section><mp-common-profile data-pluginname="mpprofile" data-id="MzI3NzQ3MTcxMg==" data-headimg="http://mmbiz.qpic.cn/mmbiz_png/t1wZDoUyFk5t1sOnM0iabvBhnfIj5YpyqrMib0E1MGCd9ibcYxaOPZd0GWhQBDvK2BPEwsicQxd6y5MHLfphnwHnow/0?wx_fmt=png" data-nickname="小明的数据分析笔记本" data-alias="" data-signature="数据分析和数据可视化有意思的简单小例子~石榴研究生的笔记本" data-from="0" data-is_biz_ban="0"></mp-common-profile></section><p data-tool="mdnice编辑器"><br></p><blockquote data-tool="mdnice编辑器"><p>小明的数据分析笔记本 公众号 主要分享：1、R语言和python做数据分析和数据可视化的简单小例子；2、园艺植物相关转录组学、基因组学、群体遗传学文献阅读笔记；3、生物信息学入门学习资料及自己的学习笔记！</p></blockquote></section><p><br></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/K2cL67pfhwNgupbejH_sEA",target="_blank" rel="noopener noreferrer">原文链接</a>
