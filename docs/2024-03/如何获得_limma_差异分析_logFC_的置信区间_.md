---
title: "如何获得 limma 差异分析 logFC 的置信区间？"
date: 2024-03-25T14:19:10Z
draft: ["false"]
tags: [
  "fetched",
  "生信碱移"
]
categories: ["Acdemic"]
---
如何获得 limma 差异分析 logFC 的置信区间？ by 生信碱移
------
<div><p><span><strong>对接这篇文章的输入（点击查看）：</strong></span></p><p><a target="_blank" href="http://mp.weixin.qq.com/s?__biz=MzkyNTIzMzYyMA==&amp;mid=2247492270&amp;idx=1&amp;sn=69e4ce54de536d0e46ff1a47cd66015d&amp;chksm=c1cb1a15f6bc93038cb0f85204cd13dc6c41ddc358e81a981d7d1d1333086c9a823a948c0c19&amp;scene=21#wechat_redirect" textvalue="MetaVolcanoR 包：对基因差异表达结果进行 meta 分析" linktype="text" imgurl="" imgdata="null" data-itemshowtype="0" tab="innerlink" data-linktype="2"><span>《<strong>MetaVolcanoR 包：对基因差异表达结果进行 meta 分析</strong></span></a><span>》</span></p><p><span><strong>添加 topTable 函数的 confint 参数就行：</strong></span></p><section><img data-galleryid="" data-imgfileid="100008761" data-ratio="0.10328638497652583" data-s="300,640" data-src="https://mmbiz.qpic.cn/sz_mmbiz_png/LvUIqvYKCeUBba6UvoCxVKFPQqGKBCDfCiaBabKg0EiaOSjeIISGYvLok77IHPiajfKpNEm21ibxa9Mhx6FBDcic66A/640?wx_fmt=png&amp;from=appmsg" data-type="png" data-w="639" src="https://mmbiz.qpic.cn/sz_mmbiz_png/LvUIqvYKCeUBba6UvoCxVKFPQqGKBCDfCiaBabKg0EiaOSjeIISGYvLok77IHPiajfKpNEm21ibxa9Mhx6FBDcic66A/640?wx_fmt=png&amp;from=appmsg"></section><section><strong><span><span>感谢“长安”老铁的提问</span> <img data-ratio="1" data-src="https://res.wx.qq.com/t/wx_fed/we-emoji/res/v1.3.10/assets/newemoji/Yellowdog.png" data-w="128" src="https://res.wx.qq.com/t/wx_fed/we-emoji/res/v1.3.10/assets/newemoji/Yellowdog.png"></span></strong></section><p><strong><span><br></span></strong></p><section><mp-common-profile data-pluginname="mpprofile" data-id="MzkyNTIzMzYyMA==" data-headimg="http://mmbiz.qpic.cn/mmbiz_png/LvUIqvYKCeXYZNMxRMnjiaicO2a27jDZ2FgQga8TdeQcsGRJRIn2IInkKtfcbbMXOBSViaPXpTOBulUlNzd11pzow/0?wx_fmt=png" data-nickname="生信碱移" data-alias="liudoufu307" data-signature="生信算法工程师，多组学分析与深度学习领域" data-from="0" data-is_biz_ban="0"></mp-common-profile></section><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/l-vzPLTSB14z5Ztz-qb-rQ",target="_blank" rel="noopener noreferrer">原文链接</a>
