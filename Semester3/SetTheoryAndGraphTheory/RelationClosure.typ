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
  #text(size: 16pt)[_关系闭包 · 手写笔记补充_]
]

= 关系闭包

补充来源：《集图笔记(1)》PDF 第 12—14 页。

固定基集 $A$。关系 $R$ 关于某性质的闭包，是包含 $R$ 且具有该性质的最小关系 $C$：

+ $R subset.eq C$；
+ $C$ 具有所要求的性质；
+ 任意具有该性质且包含 $R$ 的关系 $S$，都满足 $C subset.eq S$。

第三条是“最小”的含义，不能只验证“补完后具有该性质”。

自反、对称、传递性质都对非空关系族的交封闭，且全关系 $A times A$ 具有这三种性质。因此，可将所有满足条件的超关系取交，分别得到自反、对称、传递闭包，记作 $r(R),s(R),t(R)$。

== 自反闭包与对称闭包

$ r(R)=R union I_A, quad s(R)=R union R^(-1). $

自反关系必须包含每个 $(a,a)$，故每个包含 $R$ 的自反关系都包含 $R union I_A$；后者又显然自反。对称闭包同理：每条原边都必须补上反向边。

== 传递闭包

$ t(R)=union.big_(k=1)^oo R^k. $

*证明*

它包含 $R^1=R$。若 $(x,y) in R^i$、$(y,z) in R^j$，则 $(x,z) in R^(i+j)$，故正次幂之并传递。

若 $S$ 传递且 $R subset.eq S$，由归纳法得 $R^k subset.eq S$ 对每个 $k>=1$ 成立，因此 $t(R) subset.eq S$，最小性成立。

传递闭包对应正长度可达性。若 $abs(A)=n>=1$，则
$ t(R)=R union R^2 union dots union R^n. $
对于不同端点，可从游走中删去回路得到至多 $n-1$ 条边的路径；同一端点的正长度可达性由至多 $n$ 条边的简单有向圈见证。因此需要保留 $R^n$ 来覆盖自环的可达情形。

例如 $R={(1,2),(2,3)}$，则 $t(R)=R union {(1,3)}$。若 $R={(1,2),(1,4),(3,4)}$，没有可继续接上的两条边，$R^2=emptyset$，所以 $t(R)=R$。

在 $NN$ 上取 $R={(n,n+1) | n in NN}$，每个 $R^k$ 对应距离恰为 $k$ 的点对，没有有限阶截断能给出全部传递闭包。

= 闭包的共同性质

对 $c=r,s,t$ 均有：

+ 扩张性：$R subset.eq c(R)$。
+ 单调性：$R subset.eq S => c(R) subset.eq c(S)$。
+ 幂等性：$c(c(R))=c(R)$。

单调性可由最小性直接得到：$c(S)$ 是具有所需性质且包含 $R$ 的关系，因此 $c(R) subset.eq c(S)$。

$ r(R union S)=r(R) union r(S), quad s(R union S)=s(R) union s(S), $
$ t(R) union t(S) subset.eq t(R union S). $
最后一个包含可以严格：$R={(1,2)}$、$S={(2,3)}$ 各自传递，但合并后新增路径 $1 -> 2 -> 3$，闭包还需补 $(1,3)$。

== 原有性质是否保留

自反性经 $s$、$t$ 后仍保留；对称性经 $r$、$t$ 后仍保留；传递性经 $r$ 后仍保留。

其中 $t$ 保持对称性，是因为对称关系中每条有向游走都可反向行走；$r$ 保持传递性，是因为新补的恒等边不会产生新的端点组合。

$s$ 一般不保持传递性。取 $R={(1,2),(1,3)}$，原关系传递；$s(R)$ 中有 $2 -> 1 -> 3$，却没有 $(2,3)$，所以不传递。

= 闭包的复合次序

$ r(s(R))=s(r(R))=R union R^(-1) union I_A, $
$ r(t(R))=t(r(R))=union.big_(k=0)^oo R^k. $

自反闭包与另外两种闭包分别可交换，因为补恒等边既不产生新的反向边，也不改变正长度路径的端点；它只把零长度可达关系加入结果。

对称闭包与传递闭包满足
$ s(t(R)) subset.eq t(s(R)), $
但通常不相等。仍取 $R={(1,2),(1,3)}$：$s(t(R))=s(R)$ 不含 $(2,3)$，$t(s(R))$ 却包含它。

*等价闭包*

$ e(R)=r(t(s(R))). $
它自反、对称、传递，且是包含 $R$ 的最小等价关系。先把边双向化，再取可达关系，最后补全孤立顶点的自环；所得等价类正是忽略原边方向后的连通分量。
