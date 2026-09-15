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
  #text(size: 16pt)[_2026年9月15日 笔记_]
]
= 复习

朴素集合论：

$a in bold(A), a in.not bold(A)$
$bold(A) subset.eq bold(B), bold(A) subset bold(B), bold(A) = bold(B)$

$bold(A) union B, A inter B$初级并运算、初级交运算。

集族：

$cal(F)$中的元素也是集合，广义交运算、广义并运算（大并、大交）

$
"写作：" union.big cal(A), inter.big cal(A)
$

集合列：

$
{A_alpha}_(alpha in cal(S)), "特别地，"{A_n}_(n in NN^*)
$

= 集合列的极限问题

== 数列的极限

$
  {a_n}, exists a in RR, forall epsilon > 0, exists N in NN, forall n >= N, |a_n - a| < epsilon, lim_(n -> +oo) a_n = a
$

*等价定义：*

若${a_n}$是一个单调递增（减）序列，则称${a_n}$的上确界（下确界）为其极限。

对一般${a_n}$，定义$b_n = sup{a_j}_(j >= n)$，则${b_n}$递减。定义$c_n = inf{a_j}_(j >= n)$，则${c_n}$递增。

$
overline(lim_(n -> oo))a_n = lim_(n -> oo) b_n \

underline(lim)_(n -> oo) a_n = lim_(n -> oo) c_n
$

== 集合列的极限

递减集合列与递增集合列
$
  {A_n}_n in NN^*, A_1 supset.eq A_2 supset.eq A_3 supset.eq ... supset.eq A_n supset.eq ... , A = inter.big{A_n}_(n in NN^*) \
$

$
  A_1 subset.eq A_2 subset.eq A_3 subset.eq ... subset.eq A_n subset.eq ... , A = union.big{A_n}_(n in NN^*)

$

若${A_n}$是集合列，类比数列极限，我们需要定义两个单调集合列：

定义
$
{B_n} := B_n = union.big_(k>=n)^(+oo){A_k}\

{C_n} := C_n = inter.big_(k>=n)^(+oo){A_k}
$

$
inter.big_(n = 1) ^ oo B_n = inter.big_(n = 1) ^ oo union.big_(k = n) ^ oo A_k
$

称为${A_n}$的上极限。

来理解一下这个概念：首先，我们考虑

$

union.big_(k = n) ^ oo A_k

$

表示的是所有从$n$开始，在其之后的集合中出现的元素。

那么再把这些集合全部交在一起，意味着不管$n$从多少开始取，这个元素都在之后出现过。我们称这样的集合为${A_n}$的*上极限*。



类似地，

$
union.big_(n = 1) ^ oo C_n = union.big_(n = 1) ^ oo inter.big_(k = n) ^ oo A_k
$

称为${A_n}$的下极限。
下极限中的元素，满足从某一个$n$开始，这个元素在之后所有的集合中都出现。

*命题*

若$x in overline(lim_(n -> oo)) A_n$，则$x$属于${A_n}$中无限个集合。

*证明*


假设$x$仅仅在有限个集合中存在，不妨假设最后一个含有$x$元素的集合是$A_t, t in NN^*.$

那么有$x in.not inter.big_(n = t + 1) ^ oo union.big_ (k = n) ^ oo A_k$，这与已知条件矛盾，故假设不成立。

*命题*

若$x in underline(lim)_(n -> oo) A_n$，则$x$属于${A_n}$靠后的所有集合。

*证明*

$
x in underline(lim)_(n -> oo) A_n <=> x in union.big_(n = 1) ^ oo inter.big_(k = n) ^ oo A_k
$

$
=> exists n_0 in NN^*, s.t. forall n >= n_0, x in A_n
$


若集合列收敛，则上下极限相等。

*命题* 

${A_n}$是${B_n}, {C_n}$的并，那么

$
overline(lim_(n -> oo )) A_n = overline(lim_(n -> oo)) B_n union.big overline(lim_(n -> oo)) C_n \

underline(lim_(n -> oo)) A_n = underline(lim_(n -> oo)) B_n inter.big underline(lim_(n -> oo)) C_n
$

*命题*

上极限的补等于补的下极限，下极限的补等于补的上极限。



= 集合的特征函数

设$E$是全集，$A subset.eq E$，定义：

$
X_A (x) = 1, x in A \
X_A (x) =  0, x in.not A
$

$forall x in E$
+ $X_A (x) = 0, "iff" A = emptyset$
+ $X_A (x) = 1, "iff" A = E$
+ $X_A (x) <= X_B (x), "iff" A subset.eq B$
+ $X_(A inter B) (x) = X_A (x) dot X_B (x)$
+ $X_(A union B) (x) = X_A (x) + X_B (x) - X_(A inter B) (x)$

note:（5）&（6）可以很容易用且运算、或运算表示。



= 二元关系

有序对、有序三元组、有序$n$元组

$chevron.l a,b chevron.r$

这一部分参考离散数学第二讲笔记。



笛卡尔积、卡斯基运算

$
A times B = { chevron.l a, b chevron.r | a in A, b in B } \

Pi_(i = 1) ^ n A_i = { chevron.l a_1, a_2, ..., a_n chevron.r | a_i in A_i, i = 1, 2, ..., n } \
$





题目：设$cal(B) = {{1,2}, {2,3}, {1,3},{emptyset}}$

第三小问：计算$inter.big union.big cal(B)$

首先计算$union.big cal(B) = {1,2,3, emptyset}$

那么此时的$union.big cal(B)$不是一个集族，为什么可以计算$inter.big union.big cal(B)$呢？

（矛盾点在于广义交只能针对集族进行运算，但是我认为$union.big cal(B)$不是集族）
















