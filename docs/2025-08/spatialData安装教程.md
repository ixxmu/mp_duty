---
title: "spatialData安装教程"
date: 2025-08-02T15:15:18Z
draft: ["false"]
tags: [
  "fetched",
  "生信小博士"
]
categories: ["Acdemic"]
---
spatialData安装教程 by 生信小博士
------
<div><section><span leaf=""><br></span></section><section><ul><li><li><li><li><li><li><li><li><li><li><li><li></ul><pre data-lang="javascript"><code><span leaf="">conda create -n spatial -y python=<span>3.12</span></span></code><code><span leaf="">conda activate spatial </span></code><code><span leaf=""><br></span></code><code><span leaf=""><br></span></code><code><span leaf=""><br></span></code><code><span leaf="">pip install spatialdata -i <span>https</span>:<span>//mirrors.aliyun.com/pypi/simple</span></span></code><code><span leaf="">pip install <span>"spatialdata[extra]"</span> -i <span>https</span>:<span>//mirrors.bfsu.edu.cn/pypi/web/simple</span></span></code><code><span leaf="">pip install <span>"spatialdata[torch]"</span> -i <span>https</span>:<span>//mirrors.bfsu.edu.cn/pypi/web/simple</span></span></code><code><span leaf=""><br></span></code><code><span leaf="">换不同的镜像：</span></code><code><span leaf="">pip install spatialdata -i  <span>https</span>:<span>//pypi.douban.com/simple/</span></span></code><code><span leaf="">    <span>https</span>:<span>//mirrors.cloud.tencent.com/pypi/simple</span></span></code></pre></section><section nodeleaf=""><img data-imgfileid="100005774" data-s="300,640" data-src="https://mmbiz.qpic.cn/sz_mmbiz_png/xVhD7345Skvl7Lu2qyrWsN6fE1PDgdLkj1GnFs8WpxUH63urznBC2vnqjOslZJs1czxPulwJMMdPn8a5x7gOtQ/640?wx_fmt=png&amp;from=appmsg" data-type="png" type="block" src="https://mmbiz.qpic.cn/sz_mmbiz_png/xVhD7345Skvl7Lu2qyrWsN6fE1PDgdLkj1GnFs8WpxUH63urznBC2vnqjOslZJs1czxPulwJMMdPn8a5x7gOtQ/640?wx_fmt=png&amp;from=appmsg"></section><section><span leaf="">成功安装之后，就可以使用jupyter notebook加载啦</span></section><section nodeleaf=""><img data-imgfileid="100005775" data-s="300,640" data-src="https://mmbiz.qpic.cn/sz_mmbiz_png/xVhD7345Skvl7Lu2qyrWsN6fE1PDgdLkHF0A4rpVnlg420QDoxXuAIb2sA8eEQgok8gKovGn9Aic29icW8B1rhrg/640?wx_fmt=png&amp;from=appmsg" data-type="png" type="block" src="https://mmbiz.qpic.cn/sz_mmbiz_png/xVhD7345Skvl7Lu2qyrWsN6fE1PDgdLkHF0A4rpVnlg420QDoxXuAIb2sA8eEQgok8gKovGn9Aic29icW8B1rhrg/640?wx_fmt=png&amp;from=appmsg"></section><section><span leaf=""><br></span></section><section><ul><li></ul><pre data-lang="ruby"><code><span leaf=""><span>https:</span>/<span>/spatialdata.scverse.org/en/latest/installation</span>.html</span></code></pre></section><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/uZix3OiAL8yHXSFDC5S3bg",target="_blank" rel="noopener noreferrer">原文链接</a>
