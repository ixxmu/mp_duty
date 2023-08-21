---
title: "第一作者发表在Bioinformatics杂志上论文数top10"
date: 2023-08-21T00:10:23Z
draft: ["false"]
tags: [
  "fetched",
  "方圆之处"
]
categories: ["Acdemic"]
---
第一作者发表在Bioinformatics杂志上论文数top10 by 方圆之处
------
<div><p>再写几篇可以冲到前5</p><p><img data-galleryid="" data-ratio="1.2405405405405405" data-s="300,640" data-src="https://mmbiz.qpic.cn/mmbiz_png/8yoFdJolUibdabmvE78uJlLpfZ0JcfKnd3f0d9PVuUeZkL19sPFoNEib1LrV2iapWRguFKK3W5ULvxLOEF6vN4vpg/640?wx_fmt=png" data-type="png" data-w="740" src="https://mmbiz.qpic.cn/mmbiz_png/8yoFdJolUibdabmvE78uJlLpfZ0JcfKnd3f0d9PVuUeZkL19sPFoNEib1LrV2iapWRguFKK3W5ULvxLOEF6vN4vpg/640?wx_fmt=png"><span></span></p><p>使用代码如下:<br></p><section data-tool="mdnice编辑器" data-website="https://www.mdnice.com"><pre data-tool="mdnice编辑器"><code><span>library</span>(pubmedR)<br><br>api_key = <span>NULL</span><br><br><span># pubmed一次只能下载小于1万条记录，这里分成两份</span><br>query = <span>'("Bioinformatics (Oxford, England)"[Journal]) AND (("1998"[Date - Publication] : "2014"[Date - Publication]))'</span><br>res &lt;- pmQueryTotalCount(query = query, api_key = api_key)<br>D1 &lt;- pmApiRequest(query = query, limit = res$total_count, api_key = <span>NULL</span>)<br><br>query = <span>'("Bioinformatics (Oxford, England)"[Journal]) AND (("2015"[Date - Publication] : "2023"[Date - Publication]))'</span><br>res &lt;- pmQueryTotalCount(query = query, api_key = api_key)<br>D2 &lt;- pmApiRequest(query = query, limit = res$total_count, api_key = <span>NULL</span>)<br><br>m1 = pmApi2df(D1)<br>m2 = pmApi2df(D2)<br>m = rbind(m1, m2)<br><br>df = df[df$DT == <span>"JOURNAL ARTICLE"</span>, ]<br>fa = gsub(<span>";.*$"</span>, <span>""</span>, df$AF)<br>sort(table(fa))<br></code></pre></section><p><br></p><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/HdPE7U5jRqbxI9CE3crRdw",target="_blank" rel="noopener noreferrer">原文链接</a>
