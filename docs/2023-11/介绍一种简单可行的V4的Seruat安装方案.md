---
title: "介绍一种简单可行的V4的Seruat安装方案"
date: 2023-11-19T00:15:54Z
draft: ["false"]
tags: [
  "fetched",
  "果子学生信"
]
categories: ["Acdemic"]
---
介绍一种简单可行的V4的Seruat安装方案 by 果子学生信
------
<div><section data-tool="mdnice编辑器" data-website="https://www.mdnice.com"><p data-tool="mdnice编辑器">目前Seurat的版本从V4升级到了V5，由于一些变化，导致当年取巧，使用<code>@</code>获取数据的方法都无法在V5中使用。</p><p data-tool="mdnice编辑器"><strong>建议在操作前重启下Rstudio（或更确切的说是R）！！！</strong></p><p data-tool="mdnice编辑器"><strong><span>建议在操作前重启下Rstudio（或更确切的说是R）</span><span>！！！</span></strong></p><p data-tool="mdnice编辑器"><strong><span>建议在操作前重启下Rstudio（或更确切的说是R）</span><span>！！！</span></strong><span></span></p><p data-tool="mdnice编辑器">那么如何确保自己能够安装V4的Seurat呢？</p><p data-tool="mdnice编辑器">首先，我们需要先安装V5版本，让他帮我把一系列的依赖问题都给解决掉</p><pre data-tool="mdnice编辑器"><span></span><code>install.packages(<span>'Seurat'</span>)<br><span># 检查版本</span><br><span># packageVersion("Seurat")</span><br><span># [1] ‘5.0.0’</span><br><br></code></pre><p data-tool="mdnice编辑器">接着，过河拆桥，把V5版本的Seurat和SeuratObject卸载掉</p><pre data-tool="mdnice编辑器"><span></span><code>remove.packages(c(<span>"Seurat"</span>,<span>"SeuratObject"</span>))<br><br></code></pre><p data-tool="mdnice编辑器">然后，我们去安装V4的Seurat，这里要指定repos。</p><pre data-tool="mdnice编辑器"><span></span><code>install.packages(<span>'Seurat'</span>, repos = c(<span>'https://satijalab.r-universe.dev'</span>))<br><span># 检查版本</span><br><span># packageVersion("Seurat")</span><br><span># [1] ‘4.4.0’</span><br><br></code></pre><p data-tool="mdnice编辑器">该方法在Windows，Linux服务器，M芯片的Mac中中都测试过（其中Linux的Seurat需要编译）。</p><figure data-tool="mdnice编辑器"><img data-imgfileid="503253292" data-ratio="0.7833806818181818" data-src="https://mmbiz.qpic.cn/sz_mmbiz_png/NDy5aEnReX38JnWQJZWETSMYJjuVW2py0icMyU3cJ0Z0hNjte5sTC8cp2A45QZSbLqB0sRE6HPLxtXs7YRsmSWw/640?wx_fmt=png&amp;from=appmsg" data-type="png" data-w="1408" src="https://mmbiz.qpic.cn/sz_mmbiz_png/NDy5aEnReX38JnWQJZWETSMYJjuVW2py0icMyU3cJ0Z0hNjte5sTC8cp2A45QZSbLqB0sRE6HPLxtXs7YRsmSWw/640?wx_fmt=png&amp;from=appmsg"></figure><p data-tool="mdnice编辑器">稍微进阶一些，我们也不需要卸载V5，也可以做到使用V4，只需要在安装的时候，指定一个新的安装路径</p><pre data-tool="mdnice编辑器"><span></span><code>dir.create(<span>"~/SeuratV4"</span>)<br><span># 然后安装的时候，指定安装目录</span><br>install.packages(<span>'Seurat'</span>, repos = c(<span>'https://satijalab.r-universe.dev'</span>), lib = <span>"~/SeuratV4"</span>)<br></code></pre><p data-tool="mdnice编辑器">在使用的时候，<code>.libPaths</code>配置好路径，使得library加载的时候，能够先加载到V4。</p><pre data-tool="mdnice编辑器"><span></span><code>.libPaths(c(<span>"~/SeuratV4"</span>, .libPaths()))<br><span>library</span>(Seurat)<br><br>&gt; packageVersion(<span>"Seurat"</span>)<br>[<span>1</span>] ‘<span>4.3</span><span>.0</span>’<br></code></pre></section><p><br></p><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/NJ5lIeJ9qUVWaz_tXZtk1A",target="_blank" rel="noopener noreferrer">原文链接</a>
