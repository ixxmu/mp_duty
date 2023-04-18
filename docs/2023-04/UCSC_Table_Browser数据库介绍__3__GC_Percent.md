---
title: "UCSC Table Browser数据库介绍——3. GC Percent"
date: 2023-04-18T23:32:48Z
draft: ["false"]
tags: [
  "fetched",
  "生信小知识"
]
categories: ["Acdemic"]
---
UCSC Table Browser数据库介绍——3. GC Percent by 生信小知识
------
<div><section><h2><span>UCSC Table Browser数据库介绍——3. GC Percent</span></h2><blockquote><p>微信公众号：<strong>生信小知识</strong><br>关注可了解更多的生物信息学教程及知识。问题或建议，请公众号留言;</p></blockquote><h3><span>目录</span></h3><p><span><span>前言</span></span><span><span>1. 生物学背景知识</span></span><span><span>2. 数据来源及下载方式</span></span><span><span>3. 文件格式说明</span></span><span><span>后记</span></span></p><h3><span>前言</span></h3><p>最近来系统性探索下UCSC Table Browser数据库，争取对其中重要的数据库进行一个探索。</p><p>UCSC Table Browser数据库地址：https://genome-asia.ucsc.edu/cgi-bin/hgTables</p><p>过去已经探索过的数据库包括：</p><ul><li><p><a href="https://mp.weixin.qq.com/s?__biz=MjM5NTk0Mzg2Nw==&amp;mid=2247488974&amp;idx=1&amp;sn=90f92b0ca58393e210565d612c2ebacc&amp;scene=21#wechat_redirect" data-linktype="2">UCSC Table Browser数据库介绍——1. Centromeres</a></p></li><li><p><a href="https://mp.weixin.qq.com/s?__biz=MjM5NTk0Mzg2Nw==&amp;mid=2247488981&amp;idx=1&amp;sn=5f6c7e8a4e46644f106a4c7038a3b0f4&amp;scene=21#wechat_redirect" data-linktype="2">UCSC Table Browser数据库介绍——2. Gap</a></p></li></ul><p>今天探索的数据库是UCSC Table Browser数据库介绍——GC Percent：</p><p><img data-ratio="0.5935185185185186" data-src="https://mmbiz.qpic.cn/mmbiz_png/fOo3cmIWvJoHmLKMvlUQV1CA9ACTdRRQq6M7DFicrkAurbu11ziavX4WdkB3gQV64xBdDAEg8o5atmeXPK2p1LNA/640?wx_fmt=png" data-type="png" data-w="1080" src="https://mmbiz.qpic.cn/mmbiz_png/fOo3cmIWvJoHmLKMvlUQV1CA9ACTdRRQq6M7DFicrkAurbu11ziavX4WdkB3gQV64xBdDAEg8o5atmeXPK2p1LNA/640?wx_fmt=png"></p><h3><span>1. 生物学背景知识</span></h3><p>一般来说，对于GC比例较高的区域，多会伴随是gene富集的区域。</p><h3><span>2. 数据来源及下载方式</span></h3><blockquote><p>数据来自：</p><ul><li><p><span>UCSC Table Browser数据库</span></p></li></ul></blockquote><p>这里我们需要从数据库中进行下载，不能直接在UCSC Table Browser里下载</p><pre><code>$ wget -c https://hgdownload.soe.ucsc.edu/gbdb/hg38/bbi/gc5BaseBw/gc5Base.bw<br>$ mv gc5Base.bw gc5Base.hg38.bw<br></code></pre><p>下载后我们可以将其转为bedgraph进行查看：</p><pre><code>$ bigWigToBedGraph gc5Base.hg38.bw gc5Base.hg38.bedgraph<br></code></pre><h3><span>3. 文件格式说明</span></h3><p>该文件是一个标准的bigwig文件格式，我简单以转换后的bedgraph数据简单展示：</p><pre><code>$ head gc5Base.hg38.bedgraph<br>chr1    10000   10015   40<br>chr1    10015   10030   60<br>chr1    10030   10045   40<br>chr1    10045   10060   60<br>chr1    10060   10075   40<br>chr1    10075   10090   60<br>chr1    10090   10105   40<br>chr1    10105   10125   60<br>chr1    10125   10140   40<br>chr1    10140   10145   60<br></code></pre><p>可以看到，该文件将整个基因组切分为<strong>15bp</strong>大小的bin，并统计其中每个bin中GC的比例。</p><h3><span>后记</span></h3><p>后续再做补充~</p></section><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/mZi7uXTalAftSoqpKbat3A",target="_blank" rel="noopener noreferrer">原文链接</a>
