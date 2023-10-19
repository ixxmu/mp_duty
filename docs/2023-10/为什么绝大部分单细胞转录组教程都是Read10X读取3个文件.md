---
title: "为什么绝大部分单细胞转录组教程都是Read10X读取3个文件"
date: 2023-10-19T01:36:19Z
draft: ["false"]
tags: [
  "fetched",
  "单细胞天地"
]
categories: ["Acdemic"]
---
为什么绝大部分单细胞转录组教程都是Read10X读取3个文件 by 单细胞天地
------
<div><section data-tool="mdnice编辑器" data-website="https://www.mdnice.com"><p data-tool="mdnice编辑器">我们《生信菜鸟团》的单细胞周更专辑作者分享过好几次了基础文件读取技巧啦，详见：<a href="https://mp.weixin.qq.com/s?__biz=MzUzMTEwODk0Ng==&amp;mid=2247511915&amp;idx=1&amp;sn=6c63ddde0d992068b799dec51e302038&amp;scene=21#wechat_redirect" data-linktype="2">读取不同格式的单细胞转录组数据及遇到问题的解决办法</a>。</p><p data-tool="mdnice编辑器">其中最常见的就是使用Read10X读取3个文件，但是Read10X读取3个文件还得注意版本，而且必须保证3个文件名字完全一样，要么是</p><pre data-tool="mdnice编辑器"><span></span><code>barcodes.tsv.gz  features.tsv.gz  matrix.mtx.gz<br></code></pre><p data-tool="mdnice编辑器">3个文件的名字要么是：</p><pre data-tool="mdnice编辑器"><span></span><code>barcodes.tsv  genes.tsv  matrix.mtx<br></code></pre><p data-tool="mdnice编辑器">只有这样才能把表达量矩阵读入进去。</p><h3 data-tool="mdnice编辑器"><span></span>需要了解3个文件的规则<span></span></h3><pre data-tool="mdnice编辑器"><span></span><code>$ head *<br>==&gt; barcodes.tsv &lt;==<br>AAACATACAACCAC-1<br>AAACATTGAGCTAC-1<br>AAACATTGATCAGC-1<br>AAACCGTGCTTCCG-1<br>AAACCGTGTATGCG-1<br>AAACGCACTGGTAC-1<br>AAACGCTGACCAGT-1<br>AAACGCTGGTTCTT-1<br>AAACGCTGTAGCCA-1<br>AAACGCTGTTTCTG-1<br><br>==&gt; genes.tsv &lt;==<br>ENSG00000243485 MIR1302-10<br>ENSG00000237613 FAM138A<br>ENSG00000186092 OR4F5<br>ENSG00000238009 RP11-34P13.7<br>ENSG00000239945 RP11-34P13.8<br>ENSG00000237683 AL627309.1<br>ENSG00000239906 RP11-34P13.14<br>ENSG00000241599 RP11-34P13.9<br>ENSG00000228463 AP006222.2<br>ENSG00000237094 RP4-669L17.10<br><br>==&gt; matrix.mtx &lt;==<br>%%MatrixMarket matrix coordinate real general<br>%<br>32738 2700 2286884<br>32709 1 4<br>32707 1 1<br>32706 1 10<br>32704 1 1<br>32703 1 5<br>32702 1 6<br>32700 1 10<br></code></pre><p data-tool="mdnice编辑器">比较让大家困惑的可能是 matrix.mtx 文件里面的表达量矩阵，是32738个基因在 2700个细胞的表达量矩阵，但是仅仅是  2286884个值是大于0 的，所以会被记录在 matrix.mtx  文件里面，我们简单的一个计算就知道</p><pre data-tool="mdnice编辑器"><span></span><code>&gt; 32738 * 2700 <br>[1] 88392600<br>&gt; 2286884/(32738 * 2700)<br>[1] 0.02587189<br></code></pre><p data-tool="mdnice编辑器">表达量矩阵里面也就是说只有2.5%的值不是0 ，那么就没必要使用矩阵来记录了，太浪费空间了。</p><p data-tool="mdnice编辑器">那么，为什么绝大部分教程都是Read10X读取3个文件呢？</p><p data-tool="mdnice编辑器">我怀疑可能是以下两个原因：</p><p data-tool="mdnice编辑器">首先可能是历史遗留问题，第一个写教程的人使用了Read10X读取3个文件，后面就都懒得修改了。</p><p data-tool="mdnice编辑器">另外一个原因是，h5文件不方便肉眼看，起码上面的3个文件，我们可以打开看看内容形式。</p></section><p><br></p><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/Nyl8MZw3nCKyLoc7u2keqg",target="_blank" rel="noopener noreferrer">原文链接</a>
