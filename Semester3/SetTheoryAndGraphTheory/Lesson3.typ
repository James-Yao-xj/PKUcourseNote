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

= 有序组与笛卡尔积

补充来源：《集图笔记(1)》PDF 第 6—11 页。

Kuratowski 有序对定义为
$ chevron.l a,b chevron.r={{a},{a,b}}. $
当 $a=b$ 时，右侧为 ${{a}}$。这个编码满足
$ chevron.l a,b chevron.r=chevron.l c,d chevron.r <=> a=c and b=d. $
可由 $inter.big chevron.l a,b chevron.r={a}$ 先恢复第一坐标，再由 $union.big chevron.l a,b chevron.r={a,b}$ 恢复第二坐标（分别考虑 $b=a$ 与 $b!=a$）。

有序 $n$ 元组递归定义为
$ chevron.l a_1,dots,a_n chevron.r=chevron.l chevron.l a_1,dots,a_(n-1) chevron.r,a_n chevron.r. $
两个同长度元组相等，当且仅当各坐标对应相等。仅记录逐步累计集合会丢失重复元素的次序，不能代替有序元组。

$ A times B={chevron.l a,b chevron.r | a in A, b in B}, $
$ product_(i=1)^n A_i={chevron.l a_1,dots,a_n chevron.r | forall i, a_i in A_i}. $
各因子均为 $A$ 时记作 $A^n$。有限集满足 $abs(A times B)=abs(A) abs(B)$，一般有限积的大小为各因子大小之积。

== 运算性质

+ $A times B=emptyset <=> A=emptyset or B=emptyset$。
+ $A times (B union C)=(A times B) union (A times C)$；交运算同理，固定右因子也同理。
+ $A times (B-C)=(A times B)-(A times C)$。
+ 若 $A!=emptyset$，则 $A times B subset.eq A times C <=> B subset.eq C$。
+ 若 $A,B$ 均非空，则 $A times B subset.eq C times D$ 当且仅当 $A subset.eq C$ 且 $B subset.eq D$。

最后一条中，固定 $b in B$，从 $(a,b) in C times D$ 推出任意 $a in A$ 属于 $C$；另一坐标同理。若允许左侧为空积，则不能由积的包含推出两个因子的包含。

笛卡尔积一般不交换，也不结合：$(a,b)$ 与 $(b,a)$、$((a,b),c)$ 与 $(a,(b,c))$ 的编码不同。两种括号方式存在自然的一一对应，不能据此把集合写成相等。

= 二元关系

$n$ 元关系是有序 $n$ 元组的集合。从 $A$ 到 $B$ 的二元关系为 $R subset.eq A times B$；当 $A=B$ 时称 $A$ 上的关系，$A$ 为基集。

若 $abs(A)=m$、$abs(B)=n$，则这类关系共有 $2^(m n)$ 个；$A$ 上的关系共有 $2^(m^2)$ 个。

空关系为 $emptyset$，全关系为 $E_A=A times A$，恒等关系为 $I_A={(a,a) | a in A}$。常见例子有实数上的 $<=$、正整数上的整除关系，以及幂集上的包含关系。

$ "dom" R={x | exists y, (x,y) in R}, quad "ran" R={y | exists x, (x,y) in R}, $
$ "fld" R="dom" R union "ran" R. $
$A$、$B$ 分别是指定的前域和陪域；定义域、值域由关系实际出现的坐标确定，可能是真子集。

*单值*：$(x,y) in R and (x,z) in R => y=z$。每个输入至多对应一个输出。

*单根*：$(x,y) in R and (z,y) in R => x=z$。每个输出至多来自一个输入。关系的逆单值，当且仅当原关系单根。

= 逆、复合、限制与像

$ R^(-1)={(y,x) | (x,y) in R}, $
$ F compose G={(x,y) | exists z, (x,z) in G and (z,y) in F}. $

*本课按左复合约定：先作用右边的 $G$，再作用左边的 $F$。* 例如 $R subset.eq A times B$、$S subset.eq B times C$，则 $S compose R subset.eq A times C$。

在输入集合 $X$ 上的限制及集合的像分别为
$ R harpoon.tr X={(x,y) in R | x in X}, quad R[X]={y | exists x in X, (x,y) in R}. $
因此 $R[X]="ran"(R harpoon.tr X)$。限制只筛选第一坐标，并不要求第二坐标也属于 $X$。

== 逆与定义域、值域

$ (R^(-1))^(-1)=R, quad "dom"(R^(-1))="ran" R, quad "ran"(R^(-1))="dom" R. $
逆运算保持包含，并保持并、交、差：
$ (R union S)^(-1)=R^(-1) union S^(-1), quad (R inter S)^(-1)=R^(-1) inter S^(-1), $
$ (R-S)^(-1)=R^(-1)-S^(-1). $

定义域与值域对并保持等式：
$ "dom"(R union S)="dom" R union "dom" S, quad "ran"(R union S)="ran" R union "ran" S. $
对交、差一般只有
$ "dom"(R inter S) subset.eq "dom" R inter "dom" S, $
$ "dom" R-"dom" S subset.eq "dom"(R-S), $
值域亦同。例如 $R={(1,2)}$、$S={(1,3)}$，交关系为空，但定义域的交为 ${1}$；$R-S=R$，而定义域之差为空。

== 复合的运算律

$ (T compose S) compose R=T compose (S compose R), $
$ (S compose R)^(-1)=R^(-1) compose S^(-1). $
若 $R subset.eq A times B$，则 $I_B compose R=R=R compose I_A$。

*结合律的证明*

$(x,w) in T compose (S compose R)$ 当且仅当存在 $y,z$，使 $(x,y) in R$、$(y,z) in S$、$(z,w) in T$；同一条件也刻画 $(x,w) in (T compose S) compose R$。

复合对并左右分配：
$ T compose (R union S)=(T compose R) union (T compose S), $
$ (R union S) compose T=(R compose T) union (S compose T). $
对交则通常只有包含：
$ T compose (R inter S) subset.eq (T compose R) inter (T compose S), $
$ (R inter S) compose T subset.eq (R compose T) inter (S compose T). $
右侧两次复合的中间元素可以不同，不能把两个存在量词自动合并为同一个见证。

例如 $R={(1,2)}$、$S={(1,3)}$、$T={(2,4),(3,4)}$，则 $R inter S=emptyset$，但 $(T compose R) inter (T compose S)={(1,4)}$。

== 限制与像的运算律

$ (R union S) harpoon.tr X=(R harpoon.tr X) union (S harpoon.tr X), $
$ (R inter S) harpoon.tr X=(R harpoon.tr X) inter (S harpoon.tr X), $
$ (S compose R) harpoon.tr X=S compose (R harpoon.tr X). $
这些限制公式也可推广到任意并及非空交。

$ R[X union Y]=R[X] union R[Y], quad R[union.big_alpha X_alpha]=union.big_alpha R[X_alpha], $
$ R[X inter Y] subset.eq R[X] inter R[Y], quad R[X]-R[Y] subset.eq R[X-Y], $
$ (S compose R)[X]=S[R[X]]. $

例如整数上的 $R={(x,y) in ZZ^2 | y=abs(x)}$，取 $X={0,1,2}$、$Y={0,-1,-2}$，则
$ R[X]=R[Y]={0,1,2}, quad R[X inter Y]={0}, $
$ R[X]-R[Y]=emptyset, quad R[X-Y]={1,2}. $
若 $R$ 单根，两个像中的同一输出只能来自同一输入，此时上述交、差的包含都成为等式。

== 补充例：先列中间点，再做复合

取 $R={(1,a),(1,b),(2,b)}$、$S={(a,u),(b,v),(b,u)}$。从 1 先经 R 到 a 或 b，再经 S 到 u 或 v；从 2 只能先到 b，也可到 u 或 v，所以
$ S compose R={(1,u),(1,v),(2,u),(2,v)}. $
(1,u) 虽有两条中间路径，作为关系只计一个点对。取 $X={2}$，先限制 R 得 ${(2,b)}$，再取像为 ${b}$；复合像为 $S[{b}]={u,v}$。这把“限制输入”“取出输出”和“继续复合”分别落实为可计算的步骤。

= 关系的幂

对 $A$ 上的关系 $R$，定义
$ R^0=I_A, quad R^(n+1)=R^n compose R quad (n in NN). $
$(x,y) in R^n$ 表示存在从 $x$ 到 $y$ 的一条长为 $n$ 的有向游走；允许重复顶点。

由结合律和归纳法得到
$ R^m compose R^n=R^(m+n), quad (R^m)^n=R^(m n). $

== 有限关系幂的最终周期性

若 $abs(A)=q$，则共有 $2^(q^2)$ 个关系。$R^0,R^1,dots,R^(2^(q^2))$ 中必有重复，故存在
$ 0 <= s < t <= 2^(q^2), quad R^s=R^t. $
令 $p=t-s$，则任意 $k>=0$ 满足 $R^(s+k)=R^(t+k)$。因此当 $n>=s$ 时，
$ R^n=R^(s+((n-s) mod p)). $
这称为最终周期性；并不表示关系的幂从第零项起就循环。

例如 $R^5=R^15$，则周期可取 $10$，$R^100=R^10$。正次幂之并可取有限代表：
$ union.big_(n=1)^oo R^n=union.big_(i=1)^t R^i. $
保留第 $t$ 项可覆盖 $s=0$ 时与 $R^0$ 相等的正次幂。

无限基集上结论未必成立。如 $R={(n,n+1) | n in NN}$，则 $R^k={(n,n+k) | n in NN}$，各次幂互不相同。

= 补充例：从暂态进入周期

在 $A={a,b,c}$ 上取 $R={(a,b),(b,b)}$。有 $R^0=I_A$，而 $R^2=R$，从第一次幂起保持不变，周期为 1；第零次幂含 (c,c)，以后再也不出现。因此“最终周期”确实可以有一个不参与循环的前段。

再在 $B={a,b}$ 上取交换关系 $T={(a,b),(b,a)}$，则 $T^2=I_B$、$T^3=T$，奇次幂为 T，偶次幂为恒等关系。大幂先找重复规律，再对周期取余。例如 $T^2026=I_B$。关系幂描述指定长度的游走，传递闭包则把所有正长度合并，两者回答不同问题。
