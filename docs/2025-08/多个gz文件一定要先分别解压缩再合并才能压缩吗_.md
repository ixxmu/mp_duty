---
title: "多个gz文件一定要先分别解压缩再合并才能压缩吗？"
date: 2025-08-01T13:30:51Z
draft: ["false"]
tags: [
  "fetched",
  "生信媛"
]
categories: ["Acdemic"]
---
多个gz文件一定要先分别解压缩再合并才能压缩吗？ by 生信媛
------
<div><section data-tool="mdnice编辑器" data-website="https://www.mdnice.com" data-pm-slice="0 0 []"><blockquote><span></span><p><span leaf="">先说答案，</span><strong><span leaf="">并不一定</span></strong><span leaf="">。绝大多数场景里，你完全可以直接把几个 </span><code><span leaf="">.gz</span></code><span leaf=""> 文件用 </span><code><span leaf="">cat</span></code><span leaf=""> 拼在一起，生成一个合法的 </span><em><span leaf="">multi-member</span></em><span leaf=""> gzip 流，gunzip 等工具解压时会自动把它们当成一个整体顺序解出；既省时间，也省硬盘 I/O。</span></p></blockquote><p data-tool="mdnice编辑器"><span leaf="">首先，让我们知道什么叫 </span><em><span leaf="">multi-member</span></em><span leaf="">。 在 RFC 1952 的定义里，一个 gzip </span><strong><span leaf="">文件其实可以由若干个完整的 “member” 串联而成</span></strong><span leaf="">。每个 member 自带头、数据块和尾 CRC，因此把多个 member 直接按字节级拼接也依旧合法——解析器读完第一个尾部后，继续顺着流读下去就是下一段数据([rfc-editor.org][1])。</span></p><pre data-tool="mdnice编辑器"><span data-cacheurl="" data-remoteid=""></span><code><span><span leaf=""># demo</span></span><br><span><span leaf="">echo</span></span><span leaf=""> alpha | gzip &gt; a.gz      </span><span><span leaf=""># member 1</span></span><br><span><span leaf="">echo</span></span><span leaf=""> beta  | gzip &gt; b.gz      </span><span><span leaf=""># member 2</span></span><br><span leaf="">cat a.gz b.gz &gt; ab_multi.gz   </span><span><span leaf=""># 合并</span></span><br><span leaf="">gunzip -c ab_multi.gz         </span><span><span leaf=""># 输出 alpha 和 beta</span></span><br></code></pre><p data-tool="mdnice编辑器"><span leaf="">知道这个知识点后，当你有一个样本，加测好多次的时候后，就不需要用下面的操作</span></p><pre data-tool="mdnice编辑器"><span data-cacheurl="" data-remoteid=""></span><code><span leaf="">pigz -dc part1.gz part2.gz part3.gz | pigz &gt; all.gz</span><br></code></pre><p data-tool="mdnice编辑器"><span leaf="">而是直接用cat合并</span></p><pre data-tool="mdnice编辑器"><span data-cacheurl="" data-remoteid=""></span><code><span leaf="">cat part1.gz part2.gz part3.gz &gt; all.gz</span><br></code></pre><p data-tool="mdnice编辑器"><span leaf="">后续用gzip或者pigz都是可以顺利解压缩的。</span></p></section><section><span leaf=""><br></span></section><p><mp-style-type data-value="3"></mp-style-type></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/Uq6p-tWkxEG2A5O4332RBw",target="_blank" rel="noopener noreferrer">原文链接</a>
