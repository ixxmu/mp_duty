---
title: "R语言中的表达式expression"
date: 2022-11-25T04:51:44Z
draft: ["false"]
tags: [
  "fetched",
  "生信小知识"
]
categories: ["Acdemic"]
---
R语言中的表达式expression by 生信小知识
------
<div><section><span></span><h2><span>R语言中的表达式expression</span></h2><blockquote><p>微信公众号：<strong>生信小知识</strong><br>关注可了解更多的生物信息学教程及知识。问题或建议，请公众号留言;</p></blockquote><h3><span>目录</span></h3><p><span><span>前言</span></span><span><span>1. 字符串转为表达式</span></span><span><span>2. 表达式求解</span></span><span><span>3. 表达式的拓展应用</span></span><span><span>后记</span></span></p><h3><span>前言</span></h3><p>今天在做分析的时候，突然遇到一个问题，就是我们对于做出的GO富集分析结果中，我们会有如下图所示的结果：</p><p><img data-galleryid="" data-ratio="0.4533551554828151" data-s="300,640" data-src="https://mmbiz.qpic.cn/mmbiz_png/fOo3cmIWvJoYzqYVPHeSF4ibOB8QF9g3sPP2XBULBrJe8JZZqzfZp9cqFfrgIGBMgyY1gucEQdkdyPD430d8vDw/640?wx_fmt=png" data-type="png" data-w="611" src="https://mmbiz.qpic.cn/mmbiz_png/fOo3cmIWvJoYzqYVPHeSF4ibOB8QF9g3sPP2XBULBrJe8JZZqzfZp9cqFfrgIGBMgyY1gucEQdkdyPD430d8vDw/640?wx_fmt=png"></p><p>对于 <code>GeneRatio</code> 和 <code>BgRatio</code> 中，我们可能希望得到的是具体的值，而非具体的字符，例如 “<code>1/581</code>”</p><p>那么在R语言中，如何将这种字符串转化为可以计算的表达式呢？</p><p>今天简单介绍下具体的解决方案。</p><blockquote><p>参考：<a href="https://mp.weixin.qq.com/s?__biz=MjM5NTc3NDk4OQ==&amp;mid=2453316093&amp;idx=1&amp;sn=c0ed859bbcd1ef006fbe6467809f6b5b&amp;scene=21#wechat_redirect" data-linktype="2">R语言中的表达式expression</a></p></blockquote><h3><span>1. 字符串转为表达式</span></h3><p>为了解决前面我们提到的问题，首先我们需要将字符串 “<code>1/581</code>” 转变为可以计算的表达式，这就涉及到一个函数—— <code>parse</code> 函数</p><p>具体用法如下：</p><pre><code>&gt; parse(text = <span>"1/581"</span>)<br>expression(<span>1</span>/<span>581</span>)<br></code></pre><p>可以看到，使用 <code>parse</code> 函数，我们成功将字符转变为了表达式—— <code>expression(1/581)</code></p><p>那么接下来就是对表达式进行求解。</p><h3><span>2. 表达式求解</span></h3><p>对表达式进行求解，我们可以利用另外一个函数—— <code>eval</code> 函数</p><p><code>eval</code> 函数主要是帮助我们执行相应的表达式，因为在本案例中，具体的表达式就是一个计算结果，所以相对简单，我们直接调用 <code>eval</code> 函数就可以了：</p><pre><code>&gt; eval(parse(text = <span>"1/581"</span>))<br>[<span>1</span>] <span>0.00172117</span><br></code></pre><p>我们可以检验一下，如果直接计算的话，结果是不是一样的：</p><pre><code>&gt; <span>1</span>/<span>581</span><br>[<span>1</span>] <span>0.00172117</span><br></code></pre><p>可以看到，到此就完美的解决了上述问题。</p><h3><span>3. 表达式的拓展应用</span></h3><p>在前面的案例中，我们只用到了表达式最简单的用法，这里对表达式做一定的拓展。</p><p>在R基本包中，我们可以使用 <code>expression</code> 函数生成一个表达式：</p><pre><code>&gt; ex1 &lt;- expression(y &lt;- x + <span>1</span>)<br>&gt; ex1<br>expression(y &lt;- x + <span>1</span>)<br></code></pre><p>然后我们可以使用 <code>eval</code> 函数执行相应的表达式。例如：</p><pre><code>&gt; x &lt;- <span>3</span> <br>&gt; eval(ex1)<br>&gt; print(y)<br>[<span>1</span>] <span>4</span><br></code></pre><h3><span>后记</span></h3><p>表达式的应用在R中的确相对较少，不过有时候，灵活使用表达式可以让我们的代码更加简单易读<span></span></p><span></span></section><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/nYOAHRIaNsfSw7B5DFX68Q",target="_blank" rel="noopener noreferrer">原文链接</a>
