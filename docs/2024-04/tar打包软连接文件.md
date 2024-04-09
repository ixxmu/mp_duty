---
title: "tar打包软连接文件"
date: 2024-04-09T01:30:08Z
draft: ["false"]
tags: [
  "fetched",
  "生信小知识"
]
categories: ["Acdemic"]
---
tar打包软连接文件 by 生信小知识
------
<div><section><h2><span>tar打包软连接文件</span></h2><blockquote><p>微信公众号：<strong>生信小知识</strong><br>关注可了解更多的生物信息学教程及知识。问题或建议，请公众号留言;</p></blockquote><h3><span>目录</span></h3><p><span><span>前言</span></span><span><span>后记</span></span></p><h3><span>前言</span></h3><p>在Linux中，我们可能为了节省空间，常常会使用软链接来代替复制文件，关于软链接原理可以参考之前写过的推文：</p><ul><li><p><a href="https://mp.weixin.qq.com/s?__biz=MjM5NTk0Mzg2Nw==&amp;mid=2247487641&amp;idx=1&amp;sn=a061b23a329cc2c9fa5248d0aa016c63&amp;scene=21#wechat_redirect" data-linktype="2">linux软连接和硬连接</a></p></li></ul><p>软链接虽然方便，但是当我们打包文件时可能会出现问题。<strong>因为软链接本质记录的是原始文件的地址，而非文件本身数据。</strong></p><p>在使用 <code>tar</code> 命令进行打包时，如果有软链接文件，我们想要的其实是链接原始文件内容，而非原始文件地址，所以在打包处理带有软链接文件时，我们需要加上参数 <code>-h</code>：</p><pre><code><span>$</span><span> man tar</span><br>TAR(1)                                                                                            User Commands                                                                                            TAR(1)<br><br>NAME<br>       tar - manual page for tar 1.26<br><br>SYNOPSIS<br>       tar [OPTION...] [FILE]...<br><br>...<br><br>       -h, --dereference<br>              follow symlinks; archive and dump the files they point to<br><br>       --hard-dereference<br>              follow hard links; archive and dump the files they refer to<br>...<br></code></pre><p>所以，对于有软链接文件存在时，我们的打包格式应该是：</p><pre><code><span>$</span><span> tar czhf dat.tar.gz /PATH/TO/TARGET</span><br></code></pre><h3><span>后记</span></h3><p>有需求后续再做补充~</p></section><p><br></p><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/QTb7JY7N7Z8nT_5CQTB-iQ",target="_blank" rel="noopener noreferrer">原文链接</a>
