---
title: "sigc｜适用于scanpy的单细胞signature打分"
date: 2022-12-13T13:51:23Z
draft: ["false"]
tags: [
  "fetched",
  "seqyuan"
]
categories: ["Acdemic"]
---
sigc｜适用于scanpy的单细胞signature打分 by seqyuan
------
<div><p>    在分析单细胞数据时经常会对基因的组合进行打分，seurat中有原生的<strong>AddModuleScore</strong>，我们前面也介绍过UCell方法。最近分析项目遇到要对单细胞的代谢pathway活性进行分析，这本质上其实还是signature打分，只是打分对象变成了不同的pathway。</p><p>    scMetabolism是一种常用单细胞代谢活性分析的方法，其除原创的VISION外还集成了AUCell、ssGSEA和GSVA等基因集合打分方法，并且自带了来自KEGG和Reactom的代谢pathway基因集合。我在使用过程中因为细胞数太多报错运行不下去，尝试改过其中的as.matrix为其他方法，效果也欠佳。因为不想抽样做，于是用大数据执行效率相对友好的python重写一个自用，为方便后续使用，对函数进行了简单打包（其实就是加个壳，附带一套使用说明）。</p><p>python版的命名为<strong>sigc</strong>，可以直接执行<code>pip install sigc</code>来安装。</p><ul><li><p>目前只集成了AUCell方法</p></li><li><p>提供了scMetabolism中KEGG和Reactom代谢pathway基因集合的直接函数调用方式</p></li><li><p>可自定义signature集合</p></li><li><p>ssGSEA方法在有gseapy包装的很好，未集成，只提供简易引导在使用方法中</p></li><li><p><strong>sigc</strong>结果的可视化方法并未单独开发，可直接调用scanpy中的函数即可</p><p><br></p></li></ul><p><img data-galleryid="" data-ratio="0.6641221374045801" data-s="300,640" data-src="https://mmbiz.qpic.cn/mmbiz_png/SiacuSjV1nDy74jyLOMJDh7AG2jq3aJfKdebIoC3XuFIQbgFdBzlMXZuFWYL2QRaAONRcibrSl6NVC2mFKbmVsug/640?wx_fmt=png" data-type="png" data-w="393" src="https://mmbiz.qpic.cn/mmbiz_png/SiacuSjV1nDy74jyLOMJDh7AG2jq3aJfKdebIoC3XuFIQbgFdBzlMXZuFWYL2QRaAONRcibrSl6NVC2mFKbmVsug/640?wx_fmt=png"></p><p><span>详细使用说明文档见下面链接：</span><br></p><p>https://sigc.readthedocs.io</p><p><br></p><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/F71ai9VuQoOmbrTyDFD8dw",target="_blank" rel="noopener noreferrer">原文链接</a>
