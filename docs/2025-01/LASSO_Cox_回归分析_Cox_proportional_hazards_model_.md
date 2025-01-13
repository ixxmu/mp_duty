---
title: "LASSO-Cox 回归分析（Cox proportional hazards model）"
date: 2025-01-13T09:33:16Z
draft: ["false"]
tags: [
  "fetched",
  "生信小博士"
]
categories: ["Acdemic"]
---
LASSO-Cox 回归分析（Cox proportional hazards model） by 生信小博士
------
<div><p><span><strong><span>初始提出</span></strong></span></p><p><span><span>1972年</span>：David Cox在《Journal of the Royal Statistical Society》上发表了关于Cox回归模型的论文<span data-testid="msh-ref-entrance"><svg width="1em" height="1em" fill="currentColor" aria-hidden="true" focusable="false"><use></use></svg></span>。该模型的主要特点是它是一种半参数模型，不需要对生存时间的分布做出具体假设，只需假设协变量对生存风险的影响是比例性的</span></p><hr><p><span><strong>Cox 回归分析</strong><span>（Cox proportional hazards model）本质上是用来研究</span><strong>时间到事件（time-to-event）数据</strong><span>与协变量之间关系的。如果没有时间变量，Cox 回归分析无法进行，因为它依赖于生存时间（时间变量）来定义风险（hazard）和构建比例风险模型。</span></span></p><p><span><strong><span>前言</span></strong></span></p><p><span>一般我们在筛选影响患者预后的变量时，通常先进行单因素Cox分析筛选出关联的变量，然后构建多因素模型进一步确认变量与生存的关联是否独立。<span>但这种做法没有考虑到变量之间多重共线性的影响，<span><strong>有时候我们甚至会发现单因素和多因素Cox回归得到的风险比是矛盾的，这是变量之间多重共线性导致模型 失真的结果。</strong></span></span><strong><span>并且，当变量个数大于样本量时（例如筛选影响预后的基因或突变位点，候选的变量数可能远超样本个数），此时传统的Cox回归的逐步回归、前 进法、后退法等变量筛选方法都不再适用。</span></strong></span></p><p><mp-pay-preview-filter data-offset="6"></mp-pay-preview-filter></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/trh4b7pxszBwI2lOJ5v6rA",target="_blank" rel="noopener noreferrer">原文链接</a>
