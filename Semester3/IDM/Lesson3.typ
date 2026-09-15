#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [#text(10pt, black)[#align(center)[离散数学基础]] #line(length: 100%, stroke: gray)],
  footer: context [#align(center)[#counter(page).display("1")]],
)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[离散数学基础\ 第三讲]\
  #v(10pt)
  #text(size: 16pt)[_2026年9月15日_]
]

= 有序对与笛卡尔积

有序对 $chevron.l x,y chevron.r$ 的两个位置不能随意交换；$chevron.l x,y chevron.r = chevron.l u,v chevron.r$ 当且仅当 $x=u$ 且 $y=v$。笛卡尔积定义为
$ A times B = {chevron.l x,y chevron.r | x in A and y in B}. $
若 $abs(A)=n$、$abs(B)=m$，则 $abs(A times B)=n m$。

== 基本性质

- $A times emptyset = emptyset times A = emptyset$。
- 一般没有交换律：$A times B$ 与 $B times A$ 的序偶位置不同。
- 一般没有结合律：$(A times B) times C$ 的元素是 $chevron.l chevron.l x,y chevron.r,z chevron.r$，而 $A times (B times C)$ 的元素是 $chevron.l x,chevron.l y,z chevron.r chevron.r$。
- 对并、交有分配律：
  $ A times (B union C) = (A times B) union (A times C), $
  $ A times (B inter C) = (A times B) inter (A times C). $
  左侧因子为并、交时也成立。
- 若 $A subset.eq C$ 且 $B subset.eq D$，则 $A times B subset.eq C times D$。反过来只有在 $A,B$ 均非空时，才可推出两个因子的包含关系；若某个因子为空，乘积为空，便无法由乘积判断另一因子。

*分配律的元素证明：* $chevron.l x,y chevron.r in A times (B union C)$ 当且仅当 $x in A$ 且 $(y in B "或" y in C)$，等价于 $chevron.l x,y chevron.r in (A times B) union (A times C)$。

== 课件例题：判断真伪

1. $A times B = A times C => B=C$：一般为假。取 $A=emptyset$、$B={1}$、$C={2}$，两边乘积均为空。若另加 $A != emptyset$，则命题为真。
2. $A - (B times C) = (A-B) times (A-C)$：一般为假。取 $A=B={1}$、$C={2}$，左边为 ${1}$，右边为空集。
3. $A=B$、$C=D => A times C = B times D$：真，由等量代入即可。
4. 存在 $A subset.eq A times A$：真，取 $A=emptyset$。

= 二元关系

*定义：* 非空且所有元素都是有序对的集合，以及空集，都称为二元关系。$chevron.l x,y chevron.r in R$ 记作 $x R y$；不成立时可写作 $chevron.l x,y chevron.r in.not R$，避免把带斜线的关系符号误读为另一个关系。

$R subset.eq A times B$ 称为从 $A$ 到 $B$ 的关系；$R subset.eq A times A$ 称为 $A$ 上的关系。若 $abs(A)=n$，则 $A$ 上共有 $2^(n^2)$ 个关系，因为 $A times A$ 有 $n^2$ 个序偶，每个序偶都可独立选择是否属于关系。

== 常见关系

- 空关系：$emptyset$；全域关系：$E_A=A times A$。
- 恒等关系：$I_A={chevron.l x,x chevron.r | x in A}$。
- 若 $A subset.eq RR$，小于等于关系为 $L_A={chevron.l x,y chevron.r | x,y in A, x <= y}$。
- 若 $A subset.eq ZZ-{0}$，整除关系为 $D_A={chevron.l x,y chevron.r | x,y in A, x | y}$，这里 $x | y$ 表示 $x$ 整除 $y$。
- 在集族 $cal(A)$ 上，包含关系由 $X subset.eq Y$ 定义。

== 关系矩阵与关系图

设 $A={x_1,dots,x_n}$，$R$ 为 $A$ 上的关系。按固定顺序排列行、列，定义
$ r_(i j) = cases(1 & "若" chevron.l x_i,x_j chevron.r in R, 0 & "否则"), quad M_R=(r_(i j))_(n times n). $
关系图以 $A$ 的元素为顶点，每个 $chevron.l x_i,x_j chevron.r in R$ 对应一条从 $x_i$ 指向 $x_j$ 的边；$chevron.l x_i,x_i chevron.r$ 对应自环。矩阵、图与关系本身一一对应。

例如 $A={1,2,3,4}$，$R={chevron.l 1,1 chevron.r,chevron.l 1,2 chevron.r,chevron.l 2,3 chevron.r,chevron.l 2,4 chevron.r,chevron.l 4,2 chevron.r}$，按 $1,2,3,4$ 排序，
$ M_R = mat(1,1,0,0; 0,0,1,1; 0,0,0,0; 0,1,0,0). $

= 关系的运算

== 定义域、值域与域

$ "dom" R={x | exists y, chevron.l x,y chevron.r in R}, $
$ "ran" R={y | exists x, chevron.l x,y chevron.r in R}, $
$ "fld" R="dom" R union "ran" R. $
例如 $R={chevron.l 1,2 chevron.r,chevron.l 1,3 chevron.r,chevron.l 2,4 chevron.r,chevron.l 4,3 chevron.r}$，则定义域为 ${1,2,4}$，值域为 ${2,3,4}$，域为 ${1,2,3,4}$。

== 逆关系与复合

逆关系交换每个序偶的两个位置：
$ R^(-1)={chevron.l y,x chevron.r | chevron.l x,y chevron.r in R}. $
所以 $(R^(-1))^(-1)=R$，$"dom" R^(-1)="ran" R$，$"ran" R^(-1)="dom" R$。

本课程采用*右复合*：$F circle G$ 表示先经过 $F$，再经过 $G$，
$ F circle G={chevron.l x,z chevron.r | exists y, chevron.l x,y chevron.r in F and chevron.l y,z chevron.r in G}. $
例如 $F={chevron.l 3,3 chevron.r,chevron.l 6,2 chevron.r}$、$G={chevron.l 2,3 chevron.r}$，则 $F circle G={chevron.l 6,3 chevron.r}$，而 $G circle F={chevron.l 2,3 chevron.r}$；复合一般不交换。

复合满足结合律 $(F circle G) circle H=F circle (G circle H)$，并有 $(F circle G)^(-1)=G^(-1) circle F^(-1)$。若 $R$ 是 $A$ 上的关系，则 $R circle I_A=I_A circle R=R$。

对并有分配律，对交一般只有包含关系：
$ F circle (G union H)=(F circle G) union (F circle H), $
$ F circle (G inter H) subset.eq (F circle G) inter (F circle H). $
第二式可能严格包含，因为右侧两种复合可以分别使用不同的中间元素。

== 限制与像

关系 $R$ 在集合 $A$ 上的限制只保留第一元素位于 $A$ 的序偶：
$ R |_ A={chevron.l x,y chevron.r in R | x in A}, quad R[A]="ran" (R |_ A). $
这里 $R[A]$ 称为 $A$ 在 $R$ 下的像。对于集合 $A,B$，
$ R |_ (A union B)=(R |_ A) union (R |_ B), quad R[A union B]=R[A] union R[B], $
$ R |_ (A inter B)=(R |_ A) inter (R |_ B), quad R[A inter B] subset.eq R[A] inter R[B]. $
像的交式未必取等号：同一个像元素可分别由 $A$、$B$ 中不同的原像得到。

== 关系的幂与布尔矩阵

若 $R$ 是 $A$ 上的关系，定义 $R^0=I_A$，$R^(n+1)=R^n circle R$。由结合律得
$ R^m circle R^n=R^(m+n), quad (R^m)^n=R^(m n). $
图中 $chevron.l x,y chevron.r in R^n$ 当且仅当存在从 $x$ 到 $y$ 的恰好 $n$ 步有向走法。

若 $M_R$ 为关系矩阵，则 $M_(R^n)$ 是 $M_R$ 的 $n$ 次*布尔矩阵乘积*；其中乘法为“且”，加法为“或”：
$ (M_(F circle G))_(i j)=( (M_F)_(i 1) and (M_G)_(1 j) ) or dots or ( (M_F)_(i n) and (M_G)_(n j) ). $
例如课件关系 $A={a,b,c,d}$、$R={chevron.l a,b chevron.r,chevron.l b,a chevron.r,chevron.l b,c chevron.r,chevron.l c,d chevron.r}$ 有
$ M_R=mat(0,1,0,0; 1,0,1,0; 0,0,0,1; 0,0,0,0), quad M_(R^2)=mat(1,0,1,0; 0,1,0,1; 0,0,0,0; 0,0,0,0). $
于是 $chevron.l a,c chevron.r in R^2$（路径 $a arrow b arrow c$），但 $chevron.l a,d chevron.r in.not R^2$；此例还满足 $R^4=R^2$。

== 有穷集上关系幂的最终周期性

*定理：* 若 $abs(A)=n$ 且 $R subset.eq A times A$，则存在自然数 $s<t$ 使 $R^s=R^t$。

*证明：* $A$ 上只有 $2^(n^2)$ 个不同关系，而 $R^0,R^1,dots,R^(2^(n^2))$ 共列出 $2^(n^2)+1$ 个关系。由鸽巢原理，至少两个相等。

令 $p=t-s$。由幂的加法公式，对任意 $k >= 0$，
$ R^(s+k)=R^s circle R^k=R^t circle R^k=R^(t+k). $
因此从 $s$ 开始，幂序列以 $p$ 为一个周期；对 $k,i >= 0$，$R^(s+k p+i)=R^(s+i)$。所有高次幂都等于 $R^0,dots,R^(t-1)$ 中的某一个。

*课件例：* 若关系图由一个长度为 2 的环和一个长度为 3 的环组成，两部分周期的最小公倍数为 6，所以 $R^6=R^0$，之后每隔 6 次幂重复。对一般关系，周期可能从某个正指数才开始，未必从 $R^0$ 开始。
