#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[集合论与图论]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[集合论与图论]\
  #v(10pt)
  #text(size: 16pt)[_2026年9月17日 笔记_]
]

= 复习

集合列的上下极限：

$
overline(lim_(n -> oo) A_n) = inter.big_(n = 1) ^ oo union.big_(k = n) ^ oo A_k \

underline(lim_(n -> oo) A_n) = union.big_(n = 1) ^ oo inter.big_(k = n) ^ oo A_k  #h(2em)^#footnote[上下极限那个横线画在哪里参考教材，笔记中的内容不准确规范。]
$

*我们将集合中的元素都看作集合，那么就可以正常进行广义交并*

= 

== 二元组和多元组：

$chevron.l a, b chevron.r => {{a}, {a, b}} "当"a = b, => {{a}}$

有序$n$元组：
$chevron.l a_1, a_2, ..., a_n chevron.r => {{a_1}, {a_1, a_2}, ..., {a_1, a_2, ..., a_n}}$

== 卡氏积

$A times B => A_1 times A_2 times ... times A_n, "当"A_1 = A_2 = ... = A_n, => A^n$

== $n$元关系

有序$n$元组构成的集合定义一个$n$元关系。

二元关系就是有序对的集合。

从集合$A$到集合$B$的二元关系，用$R$表示。#footnote[没有特殊说明，默认集合$A$和$B$是非空的。]
$
R subset.eq A times B
$

读作“$R$是从$A$到$B$的二元关系”。

特别地，当$A = B$，那么称之为$A$上的二元关系，称为“基集”。
$
R subset.eq A times A
$

如果$abs(A) = m, abs(B) = n$，那么定义在$A -> B$上的二元关系的个数为$2^(m n)$。

$emptyset$称为“空关系”，全集上的关系称为“全关系”，一般记作$E_A$, $I_A$表示恒等关系。

$R subset.eq A times B$，我们称$A$是前域，$B$是陪域。

$R$的定义域：$"dom" R = {x | x in A and exists y in B, s.t. chevron.l x, y chevron.r in R}$

$R$的值域：$"ran" R = {y | y in B and exists x in A, s.t. chevron.l x, y chevron.r in R}, chevron.l x, y chevron.r in R <=> x R y.$

$
f(d(R)) = "dom"(R) union "ran"(R)
$


如果$R$满足：

$
forall x in "dom"(R), exists! y in "ran"(R), s.t. chevron.l x, y chevron.r in R
$
称$R$为单值的。

如果$R$满足：

$
forall y in "ran"(R), exists! x in "dom"(R), s.t. chevron.l x, y chevron.r in R
$
称$R$为单根的。


$
R ^(-1) = { chevron.l y, x chevron.r | chevron.l x, y chevron.r in R }
$

$
F bullet.stroked G = { chevron.l x, z chevron.r | exists y in B, s.t. chevron.l x, y chevron.r in F and chevron.l y, z chevron.r in G }
$

R是限制在$A_1$上的关系，记作$ R harpoon.tr A_1, A_1 subset.eq A$

*命题*

$
(R bullet.stroked G) ^(-1) = G ^(-1) bullet.stroked R ^(-1)
$

我的理解：可以类比一下矩阵。证明按照定义展开即可。


顺序：设$R subset A times B, S subset B times C$
定义：
$
R bullet.stroked S = { chevron.l a, c chevron.r | exists b in B, s.t. chevron.l a, b chevron.r in R and chevron.l b, c chevron.r in S }
$

逆序：设$R subset A times B, S subset B times C$

$
R bullet.stroked S = {chevron.l x, y chevron.r | exists z in B, s.t. chevron.l x, z chevron.r in S and chevron.l z, y chevron.r in R }
$

== 幂运算

Def 设$R subset.eq A times A, (A != emptyset), n in NN$

定义$R^n$如下：
+ $R^0 = I_A, R^1 = R$ question: 为什么这个一次幂需要单独拿出来定义?
+ $R^n = R^(n-1) bullet.stroked R, n >= 1$

*Theorem*

$R in A times A, forall m,n in NN$
+ $R^m bullet.stroked R^n = R^(m+n)$
+ $(R^m)^n = R^(m n)$

$
union.big_(n = 0) ^ oo R^n = I_A union R union R^2 union ... union R^n union ...
$

*Theorem* 

设$R subset.eq A times A$若存在$s, t in NN,  s.t. s < t and R^s = R^t$，则
+ $R^(s + k) = R^(t + k)$
+ $R ^ (s+k(t - s)) = R^s$
+ $R^oo = union.big_(n = 1) ^ oo R ^ n = union.big_(i = 1) ^ (t - 1) R ^ i$

这几条性质理解可以类比矩阵的循环分解与一个循环基。







