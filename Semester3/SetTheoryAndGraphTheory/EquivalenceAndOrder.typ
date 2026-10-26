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
  #text(size: 16pt)[_等价关系与偏序 · 手写笔记补充_]
]

= 等价关系与等价类

补充来源：《集图笔记(1)》PDF 第 14—15 页。

$A$ 上自反、对称且传递的关系称为等价关系，常记作 $~$。例如整数上的模 $m$ 同余关系（$m in NN^+$）：
$ a ~ b <=> m divides (a-b). $

$a$ 的等价类与商集定义为
$ [a]={x in A | x ~ a}, quad A\/~ = {[a] | a in A}. $

自反性保证 $a in [a]$，所以等价类非空且覆盖 $A$。对任意 $a,b in A$，
$ a ~ b <=> [a]=[b] <=> [a] inter [b] != emptyset. $

*证明*

若 $a ~ b$，任取 $x in [a]$，由 $x ~ a$、$a ~ b$ 传递得到 $x ~ b$，故 $[a] subset.eq [b]$；对称交换 $a,b$ 可得反向包含。

若两类有公共元素 $x$，则 $x ~ a$ 且 $x ~ b$，由对称性和传递性得 $a ~ b$。因此两个等价类要么相同，要么不相交。

= 划分及其对应

$A$ 的划分是一个集族 $cal(P)$，满足：

+ 每个块 $B in cal(P)$ 均非空；
+ 不同块两两不交；
+ $union.big cal(P)=A$。

等价关系的所有等价类构成划分。反之，给定划分，定义
$ x ~_cal(P) y <=> exists B in cal(P), x in B and y in B. $
同块关系自反、对称、传递，其等价类恰为原划分的各块。这两种构造互逆，故 $A$ 上的等价关系与 $A$ 的划分一一对应。

== 划分的加细

若 $cal(P)$ 的每个块都包含于 $cal(Q)$ 的某个块，则称 $cal(P)$ 比 $cal(Q)$ 更细，即 $cal(P)$ 是 $cal(Q)$ 的加细。

例如 ${{1},{2},{3,4}}$ 比 ${{1,2},{3,4}}$ 更细。对应的等价关系满足
$ cal(P) "比" cal(Q) "更细" <=> R_cal(P) subset.eq R_cal(Q). $
块切得越细，被视为等价的元素对越少。手写稿中“加细”的方向按这一定义统一。

= 第二类 Stirling 数

将 $n$ 个不同元素划分为 $r$ 个非空、无标号块的方案数记为 $S(n,r)$。因此 $n$ 元集上等价关系的个数是 $sum_(r=0)^n S(n,r)$。

边界值为
$ S(0,0)=1, quad S(n,0)=0 quad (n>=1), quad S(n,r)=0 quad (r>n), $
$ S(n,1)=1, quad S(n,n)=1 quad (n>=1). $

固定一个元素 $a$，分两类计数：

+ $a$ 单独成块：其余 $n-1$ 个元素分成 $r-1$ 块，有 $S(n-1,r-1)$ 种。
+ $a$ 不单独成块：先把其余元素分成 $r$ 块，再选择一个块放入 $a$，有 $r S(n-1,r)$ 种。

故
$ S(n,r)=r S(n-1,r)+S(n-1,r-1) quad (n>=1, 1<=r<=n). $

特别地，$n>=2$ 时
$ S(n,2)=2^(n-1)-1, quad S(n,n-1)=binom(n,2). $
第一式将每个元素分配到两个有标号块，去掉两个空块情形后除以 $2$；第二式中恰有一块含两个元素，其余均为单元素块。

例如 $S(4,2)=7$，$S(4,3)=6$，因此四元集共有 $1+7+6+1=15$ 个划分，也就有 $15$ 个等价关系。

= 偏序关系

自反、反对称且传递的关系称为偏序，偏序集记作 $chevron.l A,prec.eq chevron.r$。例如 $RR$ 上的 $<=$、$NN^+$ 上的整除，以及 $cal(P)(X)$ 上的包含关系。

若 $prec.eq$ 为偏序，其逆关系也是偏序，称为对偶序。真包含、严格小于属于严格序；把自身也计入的祖先关系可作为非严格偏序的例子。

由偏序定义严格关系
$ x prec y <=> x prec.eq y and x!=y. $
它反自反且传递。反之，反自反且传递的严格关系加上 $I_A$ 后得到偏序。

若 $x prec.eq y$ 或 $y prec.eq x$，则 $x,y$ 可比；否则不可比。任意两元素都可比的偏序称为全序。

$x$ 被 $y$ 覆盖，是指 $x prec y$ 且不存在 $z$ 满足 $x prec z prec y$。例如整除偏序中 $2$ 被 $6$ 覆盖，而 $2$ 不被 $12$ 覆盖，因为中间有 $6$（也有 $4$）。

有限偏序集的 Hasse 图只画覆盖边，较小元素放在下方，省略自环、箭头以及可由传递性推出的边。覆盖关系本身一般不传递；从图中恢复偏序时需补自反和传递关系。

链、反链及其分解接续见 Lesson9.typ。
