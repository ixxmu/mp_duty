---
title: "compareCluster过于超前了"
date: 2022-12-19T22:10:04Z
draft: ["false"]
tags: [
  "fetched",
  "YuLabSMU"
]
categories: ["Acdemic"]
---
compareCluster过于超前了 by YuLabSMU
------
<div><p><img data-ratio="0.6502423263327949" data-s="300,640" data-type="png" data-w="1238" data-src="https://mmbiz.qpic.cn/mmbiz_png/MPBFtnFrw4m2sT3Mwa2zxdUZj2zfwKHsD2O6yniczeyJ7ZibzRlFQTASUqciarCVwrfKmTxeoVSy82nOl0NeypeoA/640?wx_fmt=png" src="https://mmbiz.qpic.cn/mmbiz_png/MPBFtnFrw4m2sT3Mwa2zxdUZj2zfwKHsD2O6yniczeyJ7ZibzRlFQTASUqciarCVwrfKmTxeoVSy82nOl0NeypeoA/640?wx_fmt=png"></p><p>看到一篇2022年12月刚出版的文章，说没有富集分析工具支持多个基因列表，作者也review了几个软件，当然里面没有clusterProfiler，因为如果有的话，这话他就不敢说了。</p><p><img data-ratio="0.6342925659472423" data-s="300,640" data-type="png" data-w="834" data-src="https://mmbiz.qpic.cn/mmbiz_png/MPBFtnFrw4m2sT3Mwa2zxdUZj2zfwKHsKnzVjctibOD7amiaDFKqGmjf571SsxJHpoo1xZ1nnPVt4m24Xb6B5zQQ/640?wx_fmt=png" src="https://mmbiz.qpic.cn/mmbiz_png/MPBFtnFrw4m2sT3Mwa2zxdUZj2zfwKHsKnzVjctibOD7amiaDFKqGmjf571SsxJHpoo1xZ1nnPVt4m24Xb6B5zQQ/640?wx_fmt=png"></p><p>早在2012年，clusterProfiler发表的时候，我们的标题就是比较gene clusters的生物学主题。也就是上面那篇文章所说的没有工具支持的这一方面，我们搞的就是这一方面，而且是十年前！</p><p>应该说这一方法是超前的，特别是当我看到它能够<a target="_blank" href="http://mp.weixin.qq.com/s?__biz=MzI5NjUyNzkxMg==&amp;mid=2247492516&amp;idx=1&amp;sn=fe017d3036dcd4c8e9b08f62eb8ab3d9&amp;chksm=ec4052e3db37dbf59309f9f9074d026636ff9229e10015374f6b70cbaf23105ab13c3f3b6f40&amp;scene=21#wechat_redirect" textvalue="无缝对接单细胞的分析" linktype="text" imgurl="" imgdata="null" data-itemshowtype="0" tab="innerlink" data-linktype="2">无缝对接单细胞的分析</a>之后，我更加觉得如此。</p><p>有很多人是自己单个单个地做富集分析，然后再自己拼起来画图。那么我劝你看一下这篇文章：《<a target="_blank" href="http://mp.weixin.qq.com/s?__biz=MzI5NjUyNzkxMg==&amp;mid=2247489324&amp;idx=1&amp;sn=30849169eb665e8e8487e8fb446da735&amp;chksm=ec43a66bdb342f7deb0fe09eef679382896ba29504d834f9b152482af15e685377baba01717b&amp;scene=21#wechat_redirect" textvalue="多出来的点是猴子变的吗？" linktype="text" imgurl="" imgdata="null" data-itemshowtype="0" tab="innerlink" data-linktype="2">多出来的点是猴子变的吗？</a>》，细节处理不到位，结果的解说差别就非常大。</p><p>你用compareCluster能干的事情太多了，啥都能拉出来遛一下，比如上游的分析，你改点参数，下游的功能富集，就能轻松对比一下有多大的差别啥的。比如说有一些卡值被大家诟病是硬卡值，你就可以比较一下卡不同值的对下游功能富集分析的影响啦。我们甚至于还支持你比较不同软件的分析结果，做为一个彩蛋，大家可以看一下，我们发表在<a target="_blank" href="http://mp.weixin.qq.com/s?__biz=MzI5NjUyNzkxMg==&amp;mid=2247491077&amp;idx=1&amp;sn=33379dcc1ef819042a73ba5416dd1c11&amp;chksm=ec43af42db34265434fc1fc1451b6b756cc69ed9acbbee65f0427a92e7b1df23a348826bb1ec&amp;scene=21#wechat_redirect" textvalue="The Innovation上的文章" linktype="text" imgurl="" imgdata="null" data-itemshowtype="0" tab="innerlink" data-linktype="2">The Innovation上的文章</a>，我们比较了两个版本的clusterProfiler和两个版本的DAVID的分析结果，到底哪个软件更稳健、更可靠？等你来发现！<br></p><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/gWQ28QE28prNa4DYfJL7Ug",target="_blank" rel="noopener noreferrer">原文链接</a>
