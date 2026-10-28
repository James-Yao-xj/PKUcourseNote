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
  #text(size: 16pt)[_2026年9月8日 笔记_]
]

集合论从“哪些对象算作同一个集合”开始。本讲先区分元素与子集，再把交、并和补写成关于任意元素的逻辑条件，由此理解后面的恒等式与计数。

= 集合与包含关系

补充来源：《集图笔记(1)》PDF 第 2—3 页。

集合的元素具有确定性、互异性和无序性。列举法写出元素，描述法用性质刻画元素：
$ NN^+ = {n in NN | n != 0}. $
本课自然数包含 $0$；正整数用 $NN^+$ 表示。

$A subset.eq B$ 是指 $forall x, x in A => x in B$；$A subset B$ 表示 $A subset.eq B$ 且 $A != B$。
集合相等由元素决定：
$ A=B <=> (A subset.eq B and B subset.eq A). $
证明集合恒等式，通常分别证明两个包含关系，或逐元素展开成员资格。

空集没有元素，因此 $emptyset subset.eq A$ 对任意集合 $A$ 成立。注意
$ emptyset != {emptyset}, quad abs(emptyset)=0, quad abs({emptyset})=1. $

== 补充例：同一个符号在不同层次出现

取 $A={emptyset,{1,2},3}$。A 有三个元素，其中 $emptyset in A$、${1,2} in A$，但 $1 in.not A$。另一方面，${3} subset.eq A$，而 ${3} in.not A$。证明“属于”只检查列表中的一个完整元素；证明“包含”要逐个检查左侧集合的元素。

取 $B={a,b}$，则 $cal(P)(B)={emptyset,{a},{b},{a,b}}$。其幂集又有 $2^4=16$ 个元素；其中 ${{a},{b}}$ 是 $cal(P)(cal(P)(B))$ 的元素，因为它是 $cal(P)(B)$ 的子集，却不是 B 的子集，因而也不是 $cal(P)(B)$ 的元素。每多一层花括号，对象所在层次就改变一次。

== 幂集与集族

$ cal(P)(A)={B | B subset.eq A}, quad cal(P)(emptyset)={emptyset}. $
若 $abs(A)=n$，则 $abs(cal(P)(A))=2^n$：每个元素各有“取或不取”两种选择。

集族是以集合为元素的集合。指标集族 $(A_alpha)_(alpha in S)$ 则是由指标标记的集合，可有不同指标对应同一个集合。指标的重复不影响交、并运算。

= 集合运算

固定全集 $E$，以下各集合均为 $E$ 的子集。
$ A union B={x | x in A or x in B}, quad A inter B={x | x in A and x in B}, $
$ A-B={x | x in A and x in.not B}, quad A^c=E-A, $
$ A triangle B=(A-B) union (B-A)=(A union B)-(A inter B). $

对指标集族，
$ union.big_(alpha in S) A_alpha={x | exists alpha in S, x in A_alpha}, $
$ inter.big_(alpha in S) A_alpha={x in E | forall alpha in S, x in A_alpha}. $
在固定全集 $E$ 中，空指标并为 $emptyset$，空指标交为 $E$。脱离指定全集时，不把“所有集合之交”作为一个无条件定义的集合。

对集族 $cal(F)$，广义并 $union.big cal(F)$ 是属于其中至少一个集合的元素组成的集合；非空集族的广义交要求元素属于每个成员。
例如 $cal(F)={emptyset,{emptyset}}$，则
$ union.big cal(F)={emptyset}, quad inter.big cal(F)=emptyset. $

== 从成员资格读懂广义交并

把指标集想成一排编号盒子，盒中装的是集合元素。要证明 x 在并集中，只需找出一个装有 x 的盒子；要证明 x 在交集中，必须检查每个盒子都有 x。这分别对应存在量词与全称量词。因此参与交的条件越多，满足全部条件的元素只会减少。

例如取 $A_1={1,2},A_2={2,3},A_3={2,4}$。逐个检查：1 只在第一项，3 只在第二项，4 只在第三项，2 在所有项，故并为 ${1,2,3,4}$、交为 ${2}$。若再加入 $A_4={5}$，并变为 ${1,2,3,4,5}$，交却变为空集。

德摩根律描述的是同一次筛选的两种读法。“x 不在任何一个盒子中”等价于“对每个盒子，x 都不在其中”；“x 没有同时在所有盒子中”等价于“至少有一个盒子不含 x”。先把否定移过量词，再把成员条件翻回集合符号，就得到广义并、交的补集公式。

== 用成员表理解对称差

设全集 $E={1,2,3,4,5}$、$A={1,2,3}$、$B={3,4}$。有 $A-B={1,2}$、$B-A={4}$、$A triangle B={1,2,4}$。3 同时出现两次，因而被对称差去掉；5 一次也未出现，也不在结果中。

把每个元素的成员资格记为 0 或 1，对称差对应模 2 加法。因此三个集合的对称差恰含“出现奇数次”的元素，括号位置不影响结果。这也给出 $A triangle A=emptyset$、$(A triangle B) triangle B=A$：同一集合加入两次后抵消。普通并集不会抵消，所以一般不能由 $A union C=B union C$ 消去 C。

补充反例：$A={1},B={2},C={1,2}$ 时，两边的并都为 C，但 A 与 B 不相等。逐元素转换可帮助判断集合等式是否允许消去。

== 基本恒等式

+ 幂等律：$A union A=A$，$A inter A=A$。
+ 交换律：$A union B=B union A$，$A inter B=B inter A$。
+ 结合律：$(A union B) union C=A union (B union C)$，交同理。
+ 分配律：$A inter (B union C)=(A inter B) union (A inter C)$，$A union (B inter C)=(A union B) inter (A union C)$。
+ 吸收律：$A union (A inter B)=A$，$A inter (A union B)=A$。
+ 单位与零元：$A union emptyset=A$，$A inter E=A$，$A union E=E$，$A inter emptyset=emptyset$。
+ 补集律：$A union A^c=E$，$A inter A^c=emptyset$，$(A^c)^c=A$。
+ 德摩根律：$(union.big_alpha A_alpha)^c=inter.big_alpha A_alpha^c$，$(inter.big_alpha A_alpha)^c=union.big_alpha A_alpha^c$。

差集可转化为交与补：$A-B=A inter B^c$。因此
$ A-(B union C)=(A-B) inter (A-C), $
$ A-(B inter C)=(A-B) union (A-C). $

*证明第一式*

任取 $x$，$x in A-(B union C)$ 当且仅当 $x in A$、$x in.not B$ 且 $x in.not C$，也即 $x in (A-B) inter (A-C)$。

若 $cal(F) subset.eq cal(G)$，则 $union.big cal(F) subset.eq union.big cal(G)$；若两族非空，则 $inter.big cal(G) subset.eq inter.big cal(F)$。参与并的集合越多，并集越大；参与交的集合越多，交集越小。

== 有限集的容斥公式

$ abs(A union B)=abs(A)+abs(B)-abs(A inter B). $
对有限集 $A_1,dots,A_n$，
$ abs(union.big_(i=1)^n A_i)
 = sum_(k=1)^n (-1)^(k+1) sum_(1 <= i_1 < dots < i_k <= n) abs(A_(i_1) inter dots inter A_(i_k)). $
一个属于恰好 $r$ 个集合的元素在右侧被计数
$ sum_(k=1)^r (-1)^(k+1) binom(r,k)=1, $
故每个并集元素恰好计一次。
