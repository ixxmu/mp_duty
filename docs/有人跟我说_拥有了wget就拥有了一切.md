---
title: "有人跟我说，拥有了wget就拥有了一切"
date: 2022-09-13T01:31:53Z
draft: ["false"]
tags: [
  "fetched",
  "果子学生信"
]
categories: ["Acdemic"]
---
有人跟我说，拥有了wget就拥有了一切 by 果子学生信
------
<div><p><span>之前写了个帖子，我以为我理解了是wget，但是真的没有。</span></p><p><span>我想要下载Lab8里面的数据，而且下载后文件夹的名字就是Lab8，而且Lab8里面还包括了文件夹，里面的数据需要一并下载</span></p><blockquote><p><span>http://xyz.org/~shanghai/Training2018/Lulala/Lab8/</span></p></blockquote><p><span>这时候满足要求的方法是这个样子的：</span></p><pre><ol><li><p><code><span><span>wget -c -r -np -nH -R index.html --cut-dirs </span><span>3</span><span>  http:</span><span>//xyz.org/~shanghai/Training2018/Lulala/Lab8/</span></span></code></p></li></ol></pre><p><code><span>-c</span></code><span>是断点续传：</span></p><p><code><span>-r</span></code><span>是递归下载：因为Lab8里面还有很多文件夹，所以要把他们一起下载下来。</span></p><p><code><span>-np</span></code><span> 是不要向上下载父目录：不设置他会把Lulala里面的所有数据都下载下来，然后还要往上再下载</span></p><p><code><span>-nH</span></code><span> 是不要创建主目录：不设置下载的数据会保存在/xyz.org/Lab8/中。</span></p><p><code><span>--cut-dirs 3</span></code><span> 主目录后面不需要创建目录的层级 3 就是后面三个层级都不要，如果不常见本例中最终的目录会是</span></p><blockquote><p><span>~shanghai/Training2018/Lulala/Lab8/</span></p></blockquote><p><span>设置了3以后，前面三个目录都会被删除，只剩下Lab8</span></p><p><code><span>-R index.html</span></code><span>不要下载index.html 文件</span></p><p><span>还有一个参数是nd </span><code><span>-nd</span></code><span> 不创建层级，统统下载到一个文件夹，在本例中，如果加上，他会把所有的Lab8里面的文件，无论层级，都会在Lab8里面</span></p><p><span>还可以加上的函数，-r时很有必要。 </span><code><span>-L</span></code><span>递归时不进入其他主机，这个递归下载时最好加上，如果不加碰到链接他就回去下载</span></p><p><span>本来wget把别人的网站给盘下来就已经够可怕了，最近听熊是这么说的，</span></p><blockquote><p><span>如果递归下载，wget 碰到下载数据中的链接也会相应地把人家也给下载下来， 在人家那里再碰到链接他又会开始下载，子子孙孙无穷尽，只要硬盘足够大，世界就在你的手中。</span></p></blockquote><p><span>这种局面有人用了了一个特别贴切的词形容：大火烧山。</span></p><p><img data-croporisrc="https://mmbiz.qpic.cn/mmbiz_jpg/NDy5aEnReX3EINvtpHMpwC7jiaahzFJJovxYQUibbibrb8ViaiaznY4q6ljWxDUN6ujMDkSKVic8EkzPwYEdIpuSwvIg/?wx_fmt=jpeg" data-cropx1="0" data-cropx2="1280" data-cropy1="0" data-cropy2="642.2939068100358" data-ratio="0.50234375" data-s="300,640" data-src="https://mmbiz.qpic.cn/mmbiz_jpg/NDy5aEnReX3EINvtpHMpwC7jiaahzFJJohg8EajayLZax9dKWPVtGpDNYmia2ibE5yyiaYnaHueIia4bQq9nB3PJyIQ/640?wx_fmt=jpeg" data-type="jpeg" data-w="1280" src="https://mmbiz.qpic.cn/mmbiz_jpg/NDy5aEnReX3EINvtpHMpwC7jiaahzFJJohg8EajayLZax9dKWPVtGpDNYmia2ibE5yyiaYnaHueIia4bQq9nB3PJyIQ/640?wx_fmt=jpeg"></p><p><br></p></div>  
<hr>
<a href="https://mp.weixin.qq.com/s/bfFYUlSo0QU6aPjGjmpDlQ",target="_blank" rel="noopener noreferrer">原文链接</a>
