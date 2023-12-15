---
title: "课题组最新工作！新型空间转录组分析算法SPACEL"
date: 2023-12-15T01:07:42Z
draft: ["false"]
tags: [
  "fetched",
  "生信编程自修室"
]
categories: ["Acdemic"]
---
课题组最新工作！新型空间转录组分析算法SPACEL by 生信编程自修室
------
<div><blockquote><p><span>小编语：</span><span>多切片联合分析值得关注！</span><span>祝贺！</span></p></blockquote><p>中国科学技术大学瞿昆教授课题组成功开发了一种基于深度学习的空间转录组数据分析算法，命名为SPACEL。该算法能够快速高效地处理多个空间转录组切片数据，包括准确预测单个空间点内的细胞类型组成、精准识别跨切片的功能性空间域，以及有效重构复杂组织的三维结构。研究成果以《SPACEL: deep learning-based characterization of spatial transcriptome architectures》为题，发表于2023年11月22日的《自然-通讯》(Nature Communications)杂志。</p><p><img data-galleryid="" data-imgfileid="100002107" data-ratio="0.43373493975903615" data-s="300,640" data-src="https://mmbiz.qpic.cn/mmbiz_png/rWiaFvFngFbTmOWwL3lbmrkNL40L75bMcfZZUkeCspxic3dDU6MTJSiaoLLJ87hrsGNFyC6THPXuICqV3ib6pk6KPQ/640?wx_fmt=png&amp;from=appmsg" data-type="png" data-w="830" src="https://mmbiz.qpic.cn/mmbiz_png/rWiaFvFngFbTmOWwL3lbmrkNL40L75bMcfZZUkeCspxic3dDU6MTJSiaoLLJ87hrsGNFyC6THPXuICqV3ib6pk6KPQ/640?wx_fmt=png&amp;from=appmsg"></p><p>空间转录组技术具备同时获取基因表达水平和其空间位置信息的能力，目前被广泛应用于生物医学研究的各个领域。然而，有效分析由空间转录组技术产生的大量数据仍然面临着巨大挑战，例如如何准确识别在基因表达和空间位置上相互关联的细胞或点的集群，即所谓的空间域，以描绘组织切片内的全转录组空间结构。此外，如何精确鉴定类似于肿瘤微环境这样复杂系统中的功能性空间域，以及如何整合多个切片的数据进行上述分析也是挑战之一。</p><p>SPACEL算法包括三个核心模块：<strong>Spoint</strong>、<strong>Splane</strong>和<strong>Scube</strong>，分别对应空间转录组数据分析的三个关键任务：</p><p>1）Spoint模块用于预测基于测序的空间转录组数据（如10X Visium）中空间点的细胞类型组成。Spoint采用了单细胞数据模拟的空间点、神经网络模型和统计模型的组合，为估算真实空间转录组数据中的细胞类型比例提供了更稳健和准确的框架。</p><p>2）Splane模块则使用细胞类型组成和空间坐标信息，引入了对抗训练到图卷积神经模型中，显著减少了批次效应，从而实现更稳健和高效的空间域识别。</p><p>3）对于包含连续切片的空间转录组数据集，Scube模块使用Splane识别的空间域坐标进行对齐，以构建组织的三维结构。Scube采用全局优化策略来实现三维对齐，同时保持整体结构的完整性，使其能够实现更精确的对齐。</p><p>研究人员将SPACEL应用于11个包括10X Visium、STARmap、MERFISH、Stereo-seq和Spatial Transcriptomics技术的空间转录组数据集，总计156个切片。SPACEL在细胞类型组成预测、空间域识别以及组织三维结构重构等三个核心分析任务上表现出色，明显优于其他同类算法。</p><p><img data-galleryid="" data-imgfileid="100002108" data-ratio="0.8168674698795181" data-s="300,640" data-src="https://mmbiz.qpic.cn/mmbiz_png/rWiaFvFngFbTmOWwL3lbmrkNL40L75bMcJs51tUG2l1CCj4A2DbhaUAnKJfiafye3OwOruFnScHAF640TgecqwqA/640?wx_fmt=png&amp;from=appmsg" data-type="png" data-w="830" src="https://mmbiz.qpic.cn/mmbiz_png/rWiaFvFngFbTmOWwL3lbmrkNL40L75bMcJs51tUG2l1CCj4A2DbhaUAnKJfiafye3OwOruFnScHAF640TgecqwqA/640?wx_fmt=png&amp;from=appmsg"></p><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/AbWHcfHKmxjacvgYz0FSJQ",target="_blank" rel="noopener noreferrer">原文链接</a>
