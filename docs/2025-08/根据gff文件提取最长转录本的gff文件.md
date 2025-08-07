---
title: "根据gff文件提取最长转录本的gff文件"
date: 2025-08-07T01:31:36Z
draft: ["false"]
tags: [
  "fetched",
  "小明的数据分析笔记本"
]
categories: ["Acdemic"]
---
根据gff文件提取最长转录本的gff文件 by 小明的数据分析笔记本
------
<div><section data-tool="mdnice编辑器" data-website="https://www.mdnice.com" data-pm-slice="0 0 []"><p data-tool="mdnice编辑器"><span leaf="">之前有这个需求，我的做法是用R语言的rtracklayer读取gff格式文件，然后计算每个转录本的长度，然后根据基因分组获取最长转录本的id，然后判断gff格式文件里是否包含这个id,输出包含id的行，这个方法很麻烦。最近看到一个工具AGAT，号称是可以对gff文件干任何你想干的事</span></p><p data-tool="mdnice编辑器"><span leaf="">直接用conda就可以安装</span></p><p data-tool="mdnice编辑器"><span leaf="">之前写了一篇推文简单介绍</span></p><p data-tool="mdnice编辑器"><span leaf=""><a target="_blank" href="https://mp.weixin.qq.com/s?__biz=MzI3NzQ3MTcxMg==&amp;mid=2247498344&amp;idx=1&amp;sn=2f9490224e81c8991d0248cc7c6f6f61&amp;scene=21#wechat_redirect" textvalue="处理gff/gtf格式注释文件的工具-AGAT" data-itemshowtype="0" linktype="text" data-linktype="2">处理gff/gtf格式注释文件的工具-AGAT</a></span></p><p data-tool="mdnice编辑器"><span leaf="">这里有一个脚本</span></p><pre data-tool="mdnice编辑器"><span data-cacheurl="" data-remoteid=""></span><code><span leaf="">agat_sp_keep_longest_isoform.pl -gff input.gff -o output.gff</span><br></code></pre><p data-tool="mdnice编辑器"><span leaf="">还有一个功能是在gff文件里生成外显子的坐标</span></p><pre data-tool="mdnice编辑器"><span data-cacheurl="" data-remoteid=""></span><code><span leaf="">agat_sp_add_introns.pl --gff gene.gff --out gene.intron.gff</span><br></code></pre><p data-tool="mdnice编辑器"><span leaf="">这样提取外显子坐标就方便了很多</span></p></section><section><span leaf=""><br></span></section><section data-tool="mdnice编辑器" data-website="https://www.mdnice.com" data-pm-slice="0 0 []"><p data-tool="mdnice编辑器"><strong><span leaf="">欢迎大家关注我的公众号</span></strong></p><p data-tool="mdnice编辑器"><strong><span leaf="">小明的数据分析笔记本</span></strong></p><section nodeleaf=""><mp-common-profile data-pluginname="mpprofile" data-nickname="小明的数据分析笔记本" data-from="0" data-headimg="http://mmbiz.qpic.cn/mmbiz_png/t1wZDoUyFk5t1sOnM0iabvBhnfIj5YpyqrMib0E1MGCd9ibcYxaOPZd0GWhQBDvK2BPEwsicQxd6y5MHLfphnwHnow/0?wx_fmt=png" data-signature="分享R语言和python在生物信息领域做数据分析和数据可视化的简单小例子；偶尔会分享一些组学数据处理相关的内容" data-id="MzI3NzQ3MTcxMg==" data-is_biz_ban="0" data-service_type="1" data-verify_status="1"></mp-common-profile></section><p data-tool="mdnice编辑器"><strong><span leaf=""><br></span></strong></p><blockquote><span></span><p><span leaf="">小明的数据分析笔记本 公众号 主要分享：1、R语言和python做数据分析和数据可视化的简单小例子；2、园艺植物相关转录组学、基因组学、群体遗传学文献阅读笔记；3、生物信息学入门学习资料及自己的学习笔记！</span></p></blockquote></section><section><span leaf=""><br></span></section><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/bInV-xxO4QbVc07sEw9s3A",target="_blank" rel="noopener noreferrer">原文链接</a>
