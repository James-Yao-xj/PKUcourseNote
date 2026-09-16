#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[信息学中的概率统计]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[信息学中的概率统计\ 第二讲]\

  #text(size: 16pt)[_2026年9月16日 笔记_]
]

= 复习

概率的定义：

- 频率的定义：在足够多次试验之后，我们会认为一件事情发生的频率接近于这件事情的概率
- 古典概率模型：样本点数量是有限的，每个样本点发生的可能性是一样的
  - 球与桶模型、随机图模型
- 几何概率模型：连续空间中度量样本空间的方法，例如一维空间中是长度，二维空间中是面积。某个事件的度量值与整个空间的度量值之比就是概率。

= 几何概率模型的例子

- 在一根长度为1的木棍上随机选取两个点将这个棍子分成三段，求他们可以构成三角形的概率

解：设两个切点倒端点的距离分别是a和b，则三段长度可以写成

#align(center)[
  #image("TriangleEx.png", width: 80%)
]

= 概率公理化

- 将样本空间的那些子集看作事件？
  - 对集合操作封闭
  - 全部自己？
- *事件域*：对于样本空间$S$，事件的集合$F$满足
  - $S in F$
  - 若$A in F$，则$overline(A) in F$
  - 若$A_1, A_2, ... in F$，则$union.big_(i = 1) ^ oo A_n in F$
*$F$为一个事件域，又称为$sigma -$代数*

我的理解：事件域的作用就是，把所有我们希望讨论的事情给包住，也就是当我们讨论事件$A$的时候，那必然就会涉及到$overline(A)$这样的事件，所以这个事件也必须属于事件域。

*概率：*设$S$为样本空间，$F$为事件域，如果定义在$F$上的函数$P$满足以下三个公理：
- 对于任意$A in F, P(A) >= 0$
- $P(S) = 1$
- 对于互不相容的事件$A_1, A_2, ...$，有$P(union.big_(i = 1) ^ oo A_n) = sum_(i = 1) ^ oo P(A_i)$

#pagebreak()

一些性质：（可以通过概率公理推导出来）
- 空集是事件：$P(emptyset) = 0$
- 有限可加性：对于互不相容的事件$A_1, A_2, ..., A_n$，有$P(union.big_(i = 1) ^ n A_i) = sum_(i = 1) ^ n P(A_i)$
- 补集：$P(overline(A)) = 1 - P(A)$
- 单调性：如果$A subset B$，则$P(A) <= P(B)$
- 可减性：$P(A - B) = P(A) - P(A B)$
- 加法公式：$P(A union B) = P(A) + P(B) - P(A B)$
- 一般加法公式:
$
P(union.big_(i = 1) ^ n A_i) = sum_(i = 1) ^ n P(A_i) - sum_(1 <= i < j <= n) P(A_i A_j) + sum_(1 <= i < j < k <= n) P(A_i A_j A_k) - ...
$

- Union Bound: $P(union.big_(i = 1) ^ n A_i) <= sum_(i = 1) ^ n P(A_i)$

这是一个非常强大的东西！

球与桶模型，使用Union Bound估计：
$
P(union.big_(i != j) A_(i j)) <= C_n^2 times 1 / m \

P_(n, m) = 1 - P(union.big_(i != j) A_(i j)) >= 1 - C_n^2 / m = 1 - n(n - 1) / (2m)
$

对比：
$
P_(n,m) >= exp(-((n - 1) n) / (2m)) dot (1 - O(n ^ 3 / m ^ 2))
$

证明：对于任意正整数$k$，存在一个$n = abs(2 ^(k / 2 - 1))$个人组成的关系网络，使得对于任意$k$个人，既非两两均认识，，也非两两均不认识。

考虑$n$个人组成的随机图。事件$A$为存在$k$个人两两均认识，事件$B$为存在$k$个人两两均不认识。

$
P(A) <= C_n^k dot 2^(-k(k -1)/2), " "P(B) <= C_n^k dot 2^(-k(k -1)/2) \
$
$
P(A union B) <= 2 C_n^k dot 2^(-k(k -1)/2) < 1 "reason:" C_n^k <= n^k<= 2^(k(k -1)/2 )
$


= 条件概率

对于概率空间$(S, F, P)$事件$B$满足$P(B) > 0$，则事件$B$发生的条件下事件$A$发生的概率为$P(A|B) = P(A B) / P(B)$

全概率公式等等，我这是在复读嘿嘿





























