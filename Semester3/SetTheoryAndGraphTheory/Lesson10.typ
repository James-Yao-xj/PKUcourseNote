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
  #text(size: 16pt)[_2026年 10月20日 笔记_]
]
补充来源：《集图笔记(1)》PDF 第 18 页：函数下的封闭、后继、归纳集、自然数与 Peano 系统。

= 复习

1. 封闭的概念： $A "在" F"下封闭": A subset.eq "dom"(F), forall x in A, F(x) in A $
2. 后继的概念

$A^+$表示$A$的后继, $A^+ = A union {A}$
3. 归纳集
$A$是归纳集是指$emptyset in A, forall a in A, a^+ in A$

若 $a$ 为正整数，则后继尾集 ${a,a^+,a^(++),dots}$ 在后继下封闭，但不包含 $0$，所以不是归纳集。

= 自然数
def 自然数是属于每个归纳集的集合

$emptyset = 0, emptyset^+ = {0} = 1, emptyset^(++) = 2, ...$

$
  &  0 = emptyset, \
  &  1 = 0^+ = {0}, \
  &  2 = 1^+ = {0, 1}, \
  &  3 = 2^+ = {0, 1, 2}, \
  &  4 = 3^+ = {0, 1, 2, 3}, \
  &  dots.v \
  & n = (n - 1)^+ = {0, 1, 2, ..., n - 1}, \
$


从而广义交、广义并运算就有更新了：$union.big 6$可以计算。

*自然数集*

取一个归纳集 $I$（无穷公理保证存在），以分离公理定义
$ N={x in I | forall J, J "为归纳集" => x in J}. $
这避免把所有归纳集组成的真类当成集合取广义交。$N$ 不依赖所选的 $I$。

$0$ 属于每个归纳集，所以 $0 in N$。若 $a in N$，则对每个归纳集 $J$ 有 $a in J$，由封闭性得 $a^+ in J$；同时 $a^+ in I$，故 $a^+ in N$。因此 $N$ 是归纳集，且包含于每个归纳集。

Peano系统是指：满足以下五条的有序三元组$chevron.l M, F, e chevron.r$，其中$M$为一个集合，$F$是$M$到$M$的函数，$e$是首元素：
+ $e in M$
+ $forall x in M, F(x) in M$
+ $e in.not "ran"(F)$
+ $F$是单射，即$forall x, y in M, F(x) = F(y) arrow.r.double x = y$
+ 对任意$A subset.eq M$，若$e in A$，且$forall x in A, F(x) in A$，则$A = M$

举例：$chevron.l N, sigma, 0 chevron.r$是一个Peano系统，其中
$
  sigma: N arrow N, quad sigma(n) = n^+ = n union {n}.
$

下面逐条验证：

1. *首元素属于$N$。*

   由于$N$是归纳集，故$0 = emptyset in N$。

2. *$N$对$sigma$封闭。*

   任取$n in N$。由于$N$是归纳集，$n^+ in N$，所以$sigma(n) in N$。

3. *$0$不在$sigma$的值域中。*

   对任意$n in N$，都有$n in n union {n} = sigma(n)$，所以$sigma(n) != emptyset = 0$。因此$0 in.not "ran"(sigma)$。

4. *$sigma$是单射。*

   任取$m, n in N$并设$sigma(m) = sigma(n)$。若$m != n$，不妨设$m < n$。由自然数的冯·诺依曼表示，
   $m^+ = {0, 1, ..., m}$，而$n in n^+ = {0, 1, ..., n}$，但$n in.not m^+$，故$m^+ != n^+$，矛盾。
   因此$m = n$，所以$sigma$是单射。

5. *归纳原理成立。*

   任取$A subset.eq N$。若$0 in A$，且$forall n in A, sigma(n) in A$，则$A$本身是归纳集。
   由于$N$包含于每个归纳集，故$N subset.eq A$；又因$A subset.eq N$，所以$A = N$。

综上，$chevron.l N, sigma, 0 chevron.r$满足Peano系统的全部五条条件。$square$

*自然数集上的递归定理*

设A是一个集合，$a in A, F: A -> A$是一个函数，则存在唯一的函数$g: N -> A$，使得：
1. $g(0) = a$
2. $g(n^+) = F(g(n))$，对所有$n in N$成立。


*自然数的加法*

Def. $N times N -> N$，对于任意的$chevron.l m, n chevron.r in N times N$，定义$m + n$为：
$
  m + n = A(m, n)
$
其中$A: N times N -> N$是满足以下条件的唯一函数：
1. $A(m, 0) = m$
2. $A(m, n^+) = A(m, n)^+$，对所有$m, n in N$成立。

= 递归定义与运算

递归定理说明初值与后继规则唯一确定函数。对两个满足同一规则的函数作归纳：初值相同，每步相同，则全部值相同。

加法：$m+0=m$，$m+n^+=(m+n)^+$。乘法：$m dot 0=0$，$m dot n^+=m dot n+m$。幂：$m^0=1$，$m^(n^+)=m^n dot m$。

归纳法证明的是性质，递归定义构造的是对象。证明加法交换律需先归纳得到 $0+n=n$ 与 $m^++n=(m+n)^+$，再对第二变量归纳。
