---
title: "过滤掉比对到rRNA、tRNA的reads"
date: 2025-08-31T00:35:32Z
draft: ["false"]
tags: [
  "fetched",
  "东林的扯淡小屋"
]
categories: ["Acdemic"]
---
过滤掉比对到rRNA、tRNA的reads by 东林的扯淡小屋
------
<div><section><span leaf=""><br></span></section><section nodeleaf=""><img data-imgfileid="100029596" data-ratio="0.5555555555555556" data-s="300,640" data-type="png" data-w="1080" type="block" data-src="https://mmbiz.qpic.cn/mmbiz_png/kZ1wdgAscBqcmgP2HDXj7vrZtibThAhQSKeGZcrhwxmakflJYkExPMqVW1yTCwJV7Hwb1b8k9C12p4Y0j4ibkNaA/640?wx_fmt=png&amp;from=appmsg" src="https://mmbiz.qpic.cn/mmbiz_png/kZ1wdgAscBqcmgP2HDXj7vrZtibThAhQSKeGZcrhwxmakflJYkExPMqVW1yTCwJV7Hwb1b8k9C12p4Y0j4ibkNaA/640?wx_fmt=png&amp;from=appmsg"></section><section nodeleaf=""><img data-ratio="0.5555555555555556" data-s="300,640" data-type="png" data-w="1080" type="block" data-imgfileid="100029594" data-src="https://mmbiz.qpic.cn/mmbiz_png/kZ1wdgAscBqcmgP2HDXj7vrZtibThAhQSOFZHJlavIxu5hRNeuYQQDhnbP1IUibBnonXOuGdRThN5u3hBzzMuY3A/640?wx_fmt=png&amp;from=appmsg" src="https://mmbiz.qpic.cn/mmbiz_png/kZ1wdgAscBqcmgP2HDXj7vrZtibThAhQSOFZHJlavIxu5hRNeuYQQDhnbP1IUibBnonXOuGdRThN5u3hBzzMuY3A/640?wx_fmt=png&amp;from=appmsg"></section><section nodeleaf=""><img data-ratio="1.1150793650793651" data-s="300,640" data-type="png" data-w="504" type="block" data-imgfileid="100029595" data-src="https://mmbiz.qpic.cn/mmbiz_png/kZ1wdgAscBqcmgP2HDXj7vrZtibThAhQSzibQGeEHZGg94fwo9mPbJtANYpYesAuw3g3tKjfILiaoZ9dKX7Cbmm4w/640?wx_fmt=png&amp;from=appmsg" src="https://mmbiz.qpic.cn/mmbiz_png/kZ1wdgAscBqcmgP2HDXj7vrZtibThAhQSzibQGeEHZGg94fwo9mPbJtANYpYesAuw3g3tKjfILiaoZ9dKX7Cbmm4w/640?wx_fmt=png&amp;from=appmsg"></section><p><span leaf="">https://www.ncbi.nlm.nih.gov/nucleotide</span></p><section><span leaf="">人类是</span><span leaf="">txid9606[Organism] ，小鼠是</span><span leaf="">txid10090[Organism] .</span></section><section><section><ul><li><li><li><li></ul><pre data-lang="bash"><code><span leaf=""><span>mkdir</span> /data/yudonglin/reference/human/rRNA-tRNA</span></code><code><span leaf=""><span>cd</span> /data/yudonglin/reference/human/rRNA-tRNA</span></code><code><span leaf=""><span>cat</span> tRNA_human.fasta rRNA_human.fasta &gt;rRNA-tRNA.fa</span></code><code><span leaf="">bowtie2-build  rRNA-tRNA.fa   rRNA-tRNA</span></code></pre></section></section><section><span leaf=""><br></span></section><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/ksFdXIzL-AqTvN0FJmUzZw",target="_blank" rel="noopener noreferrer">原文链接</a>
