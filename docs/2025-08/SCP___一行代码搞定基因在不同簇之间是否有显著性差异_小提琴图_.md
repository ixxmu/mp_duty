---
title: "SCP | 一行代码搞定基因在不同簇之间是否有显著性差异（小提琴图）"
date: 2025-08-05T08:20:40Z
draft: ["false"]
tags: [
  "fetched",
  "生信GoL"
]
categories: ["Acdemic"]
---
SCP | 一行代码搞定基因在不同簇之间是否有显著性差异（小提琴图） by 生信GoL
------
<div><section><ul><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li><li></ul><pre data-lang="css"><code><span leaf="">#安装包，有点难装，但SCP这个包真的物超所值，功能很多</span></code><code><span leaf=""><br></span></code><code><span leaf="">library(devtools)</span></code><code><span leaf="">devtools::<span>install_github</span>(<span>"zhanghao-njmu/SCP"</span>)</span></code><code><span leaf=""><span>library</span>(SCP)</span></code><code><span leaf=""><span>library</span>(Seurat)</span></code><code><span leaf=""><br></span></code><code><span leaf=""><br></span></code><code><span leaf="">#读取数据</span></code><code><span leaf="">scRNA&lt;<span>-readRDS</span>(<span>"./output/rds/scRNA_Anno_samples.rds"</span>)</span></code><code><span leaf=""><br></span></code><code><span leaf="">#Seurat V5 更改数据格式，要不然会报错</span></code><code><span leaf=""># 将默认 Assay 转换为 v4 兼容格式，</span></code><code><span leaf=""><span>DefaultAssay</span>(scRNA) &lt;- <span>"RNA"</span>  </span></code><code><span leaf="">scRNA[[<span>"RNA"</span>]] &lt;- <span>as</span>(scRNA[[<span>"RNA"</span>]], <span>"Assay"</span>)</span></code><code><span leaf=""><br></span></code><code><span leaf=""># 一行代码搞定目的基因在不同簇之间是否有显著性差异</span></code><code><span leaf=""><span>FeatureStatPlot</span>(</span></code><code><span leaf="">  scRNA,</span></code><code><span leaf="">  stat.by = <span>c</span>(<span>"CD3D"</span>, <span>"S100A8"</span>), #目的基因</span></code><code><span leaf="">  pairwise_method = <span>"wilcox.test"</span>, #检验方法</span></code><code><span leaf="">  group.by = <span>"celltype"</span>, </span></code><code><span leaf="">  comparisons = <span>list</span>(<span>c</span>(<span>"T/NK"</span>, <span>"B"</span>), <span>c</span>(<span>"Neutrophil"</span>, <span>"Mon_Mac"</span>)) <a topic-id="mdq62bq5-m8btee" data-topic="1">#选择比较的细胞簇</a></span></code><code><span leaf="">)</span></code><code><span leaf=""><br></span></code></pre></section><section nodeleaf=""><img data-imgfileid="100000114" data-s="300,640" data-src="https://mmbiz.qpic.cn/sz_mmbiz_png/07lZfaTQ7oexPc2w29JF4CLul6wLQAoib1DLGBm048XqI1nCpgia5bQ6GRYVfic87kgUNXicRJDgucUtmD3RRqrkJg/640?wx_fmt=png&amp;from=appmsg" data-type="png" type="block" src="https://mmbiz.qpic.cn/sz_mmbiz_png/07lZfaTQ7oexPc2w29JF4CLul6wLQAoib1DLGBm048XqI1nCpgia5bQ6GRYVfic87kgUNXicRJDgucUtmD3RRqrkJg/640?wx_fmt=png&amp;from=appmsg"></section><section><span leaf=""><br></span></section><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/C0uuNbvEWKY9sv3lGnsWtg",target="_blank" rel="noopener noreferrer">原文链接</a>
