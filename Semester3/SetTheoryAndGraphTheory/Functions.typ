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
  #text(size: 16pt)[_函数的基本概念 · 手写笔记补充_]
]

= 函数、偏函数与全函数

补充来源：《集图笔记(1)》PDF 第 16 页。

单值关系称为函数：对任意 $x in "dom" F$，恰有一个 $y$ 满足 $(x,y) in F$，记为 $F(x)=y$。空关系也是函数，称为空函数。

设 $A,B$ 为集合。若 $F$ 是函数且
$ "dom" F subset.eq A, quad "ran" F subset.eq B, $
则称 $F$ 为从 $A$ 到 $B$ 的偏函数。若进一步 $"dom" F=A$，则称为从 $A$ 到 $B$ 的全函数，通常直接说“函数”，记为 $F:A -> B$。

$B$ 是陪域，不要求每个元素都被取到。

从 $A$ 到 $B$ 的所有全函数组成的集合记为
$ B^A={F | F:A -> B}. $
所有偏函数组成的集合包含于 $cal(P)(A times B)$。

== 有限函数的计数

若 $abs(A)=n$、$abs(B)=m$，每个输入有 $m$ 种输出可选，故
$ abs(B^A)=m^n. $
每个输入还允许“未定义”一种选择，因此偏函数共有 $(m+1)^n$ 个。

空集情形：从 $emptyset$ 到任意 $B$ 恰有一个全函数，即空函数；若 $A!=emptyset$，则不存在 $A -> emptyset$ 的全函数。当 $A=B=emptyset$ 时仍恰有一个函数，故这里的组合计数约定为 $0^0=1$。

== 从关系性质理解函数

单值性只约束同一输入的输出，单根性约束同一输出的输入。对全函数 $F:A -> B$：

+ 单射：$F$ 单根，即 $F(x)=F(y) => x=y$。
+ 满射：$"ran" F=B$。
+ 双射：同时单射且满射。

关系逆 $F^(-1)$ 总有定义；它是函数当且仅当 $F$ 单射，而它是 $B -> A$ 的全函数当且仅当 $F$ 双射。若 $F:A -> B$、$G:B -> C$，则
$ (G compose F)(x)=G(F(x)), $
与本课先作用右侧关系的约定一致。

函数下的封闭性、后继与 Peano 系统见 Lesson10.typ。

= 把原稿的函数定义代入有限例子

原稿第 16 页以“单值关系”定义函数。取 $A={a,b}$、$B={0,1}$，四个全函数的图分别是
$ {(a,0),(b,0)}, quad {(a,0),(b,1)}, quad {(a,1),(b,0)}, quad {(a,1),(b,1)}. $
它们的定义域均为 A；常函数的值域只有一个元素，仍是到 B 的全函数。中间两个函数的逆关系也是 B 到 A 的全函数，首尾两个的逆关系不单值。

偏函数还允许 a、b 各自没有定义，因此共有 $3^2=9$ 个：按定义域大小分类为空函数一个、单点定义域四个、双点定义域四个。关系 `{(a,0),(a,1)}` 虽属于 $cal(P)(A times B)$，却不单值，因而连偏函数也不是。幂集中的任意点对集合与函数集合在这里明确区分。

= 补充例：像、原像与可逆性

取 $f:RR -> RR$、$f(x)=x^2$。对 $X={-1},Y={1}$，有 $f[X inter Y]=emptyset$，却有 $f[X] inter f[Y]={1}$；非单射把不同输入压到同一输出，所以像一般不保持交。

原像则按条件逐点筛选：$f^(-1)[[1,4]]=[-2,-1] union [1,2]$。这里 $f^(-1)[B]$ 表示关系逆作用于集合 B，不要求存在反函数。原像满足
$ f^(-1)[B inter C]=f^(-1)[B] inter f^(-1)[C], $
因为两侧都等价于“f(x) 同时属于 B、C”。f 在全体实数上没有反函数；把定义域、陪域改为 $[0,oo)$ 后，它成为双射，反函数才是单值的平方根。
