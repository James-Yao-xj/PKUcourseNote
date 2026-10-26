#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[离散数学基础]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[离散数学基础]\
  #v(10pt)
  #text(size: 16pt)[_2026年9月8日_]
]

= 课程介绍

王若松 ruosongwang\@pku.edu.cn

周佳仪 flyfeather\@stu.pku.edu.cn

疏彦凯 syksykccc\@stu.pku.edu.cn

考试成绩：

- 平时成绩：20-30%
- 期中考试：20%
- 期末考试：60-50%

考试形式：闭卷

期中考试：第九周，11月3日（周二7-8节） 随堂考试

期末考试：2027年1月5日（周二下午），考试范围是*全部内容*（可能略有侧重）


作业：来自教材，每章讲完后布置

文件名：学号\_姓名\_离散第X次作业.pdf

完成每次作业即可获得平时作业的满分，注意，不能抄袭AI、同学。

*课程大纲*

集合论、初等数论、图论、组合数学、代数结构、数理逻辑、计算模型（文法与自动机）

前四个是期中考试的范围（大致）

= 为什么要学习离散数学？

*举例*

大整数分解是课程引入密码学的例子：基于分解困难性的公钥方案，把容易计算的乘法与难以反向求解的因子分解联系起来。

Breaking the sorting barrier for directed single source shortest path

数学的形式化证明。

= 集合论

- 集合
- 二元关系
- 函数

== 集合
=== 集合的基本概念

- 集合：把一些事物汇集到一起组成的整体。
  - 集合是一个不能精确定义的基本概念
  - 这些事物成为集合的元素或成员
- 例如
  - 方程$x^2 - 1 = 0$的实数解集合
  - 26个英文字母
- 表示
集合通常用大写英文字母表示：
*自然数集：$NN$*, *整数集：$ZZ$*, *有理数集：$QQ$*, *实数集：$RR$*等。

- 集合的三要素
  - 确定性、互异性、无序性 
- 元素与集合的关系： $in$ 以及 $in.not$

*举例*

$
  bold(A) = {a,{b,c},d, {{d}}} \

  a in bold(A), {b,c} in bold(A), d in bold(A), {{d}} in bold(A), {d} in.not bold(A), {{d}} in bold(A)
$

为了体系上的严谨，我们不考虑 $bold(A)in bold(A)$这种情况。

集合之间的关系： $subset, subset.eq, subset.eq.not$

$
  B subset.eq A, <=> forall x, x in B => x in A
$

集合相等： 称$bold(A) = bold(B) $，如果$bold(A) subset.eq B$ 且 $bold(B) subset.eq A$

空集：没有任何元素的集合，记作$emptyset$。

*定理1* 

空集是一切集合的子集。

证明：反证法，略；

*推论* 

空集是唯一的。

*幂集*：A的全体子集构成的集合称为A的幂集，记作$cal(P)(A)$。

*全集*：在某个特定的讨论范围内，包含所有元素的集合称为全集，记作 $cal(U)$。

=== 集合的运算

或者：$or$, 且：$and$。

交集： $A inter B = {x | x in A and x in B}$

并集： $A union B = {x | x in A or x in B}$

相对补集： $A minus B = {x | x in A and x in.not B}$称为从 A 中去掉 B 的差集（B 在 A 中的相对补集）。

$
  union.big_(i = 1) ^n A_i = {x | exists i, 1 <= i <= n and x in A_i} \
  inter.big_(i = 1) ^n A_i = {x | forall i, 1 <= i <= n, x in A_i}
$

*对称差：*
$
  A plus.o B = (A minus B) union (B minus A)\

  A plus.o B = (A union B) minus (A inter B)
$

*绝对补集：*
给定全集$bold(E), bold(E)$的子集A的绝对补集定义为：
$
 ~bold(A) = bold(E) minus bold(A) = {x | x in bold(E) and x in.not bold(A)}\
  ~bold(A) = {x | x in bold(E) and x in.not bold(A)}
$

*集族：*

由集合构成的集合统称为集族，记作$cal(F)$。

前面定义的交并称为初级交、初级并。

设$cal(A)$为一个集族。$cal(A)$中全体元素的元素组成的集合称为$cal(A)$的广义并。记作$union cal(A)$

$
union cal(A) = {x | exists bold(B), bold(B) in cal(A) and x in bold(B)}\
  inter cal(A) = {x | forall bold(B), bold(B) in cal(A) => x in bold(B)}
$

*$emptyset$也是一个集族。*

特别地，

$
union cal(emptyset) = emptyset, inter cal(emptyset) = bold(E)
$

但是我们没有定义全集 $cal(E)$，所以空集的广义交没办法定义。

一元操作从右向左进行：$union cal(P)(bold(A))$

一元运算优先于二级运算。


=== 集合运算的性质


*幂等律*  $bold(A) union bold(A) = bold(A), bold(A) inter bold(A) = bold(A)$

*结合律*  $(bold(A) union bold(B)) union bold(C) = bold(A) union (bold(B) union bold(C)), (bold(A) inter bold(B)) inter bold(C) = bold(A) inter (bold(B) inter bold(C))$

*交换律*  $bold(A) union bold(B) = bold(B) union bold(A), bold(A) inter bold(B) = bold(B) inter bold(A)$

*分配律*  $bold(A) union (bold(B) inter bold(C)) = (bold(A) union bold(B)) inter (bold(A) union bold(C))$, $bold(A) inter (bold(B) union bold(C)) = (bold(A) inter bold(B)) union (bold(A) inter bold(C))$

*同一律* $bold(A) union emptyset = bold(A), bold(A) inter bold(E) = bold(A)$

*零律* #h(10pt)$bold(A) union bold(E) = bold(E), bold(A) inter emptyset = emptyset$

*排中律* $bold(A) union ~bold(A) = bold(E), bold(A) inter ~bold(A) = emptyset$

*吸收律* $bold(A) union (bold(A) inter bold(B)) = bold(A), bold(A) inter (bold(A) union bold(B)) = bold(A)$

*德摩根律* $~(bold(A) union bold(B)) = ~bold(A) inter ~bold(B), ~(bold(A) inter bold(B)) = ~bold(A) union ~bold(B)$

*双重否定律* $~(~bold(A)) = bold(A)$

=== 有穷集的计数

= 课件例题补全：元素、层次与幂集

*第一部分第 24—47 页。* 对 $A={a,{b,c},d,{{d}}}$，第一层元素为 a、{b,c}、d、{{d}}，所以 $abs(A)=4$。其中 $b in.not A$、${d} in.not A$，但 d 本身属于 A；${d}$ 是元素 {{d}} 的元素。这一例要逐层数括号，而非把所有叶子都数为 A 的元素。

对 $A={a,{a}}$，既有 ${a} in A$，也有 ${a} subset.eq A$。前一个把 {a} 作为完整对象，后一个检查其中唯一元素 a；两种关系可以同时成立。

对三元集 ${1,2,3}$，全部子集为
$ emptyset; quad {1},{2},{3}; quad {1,2},{1,3},{2,3}; quad {1,2,3}. $
按大小分类分别有 1、3、3、1 个，总数 8。幂集的元素是这些子集，而非直接把 1、2、3 当作幂集元素。

== 广义运算的课堂数字与字母例（第 58—69 页）

$A={a,b,c},B={b,d}$，则 $A triangle B={a,c,d}$：b 出现在两边而被删除。若全集 ${a,b,c,d}$，则 A 的补为 {d}。

集族 $cal(A)={{a,b,c},{a,c,d},{a,c,e,f}}$ 的广义并为 ${a,b,c,d,e,f}$；$cal(B)={{a}}$ 的广义并为 ${a}$。集族 ${{a,b},{a,c}}$ 的广义交为 ${a}$；单元素集族 ${{b,c}}$ 的广义交是 ${b,c}$ 本身。

本课课件不定义空族的广义交；空族的广义并为 $emptyset$。若另一个问题明确在全集 E 内定义指标交，空指标交可以约定为 E，应先说明所用范围。

= 课件证明题：逐行注明算律

*第一部分第 80—127 页。* 证明吸收律时，若只允许已给出的基础算律，可写
$ A union (A inter B)=(A inter E) union (A inter B)
 =A inter (E union B)=A inter E=A. $
四步依次使用同一律、分配律、零律和同一律。

证明 $(A-B) union B=A union B$：
$ (A-B) union B=(A inter B^c) union B
 =(A union B) inter (B^c union B)=(A union B) inter E=A union B. $

化简课件表达式：
$ (B-(A inter C)) union (A inter B inter C) $
$ =(B inter (A inter C)^c) union (B inter (A inter C)) $
$ =B inter ((A inter C)^c union (A inter C))=B. $
先把差转成“交补”，再提取公共因子 B，是这道题的关键。

若 $A triangle B=A triangle C$，两边同作与 A 的对称差，利用结合律与 $A triangle A=emptyset$ 得 $B=C$。普通并、普通交没有这样的消去律，例如 $A=E$ 时 $A union B=A union C$ 对任意 B,C 都成立。

= 补充例：把集合恒等式变成成员资格表

固定任意 x，记 a、b、c 为 x 是否属于 A、B、C 的 0–1 值。交对应逻辑且，并对应逻辑或，补对应取反。以分配律 $A inter (B union C)=(A inter B) union (A inter C)$ 为例：若 a=0，两边都为 0；若 a=1，两边都退化为 b 或 c。两种情况穷尽 a 的可能，所以对每个 x 同时成立，集合便相等。

这也是空集包含于任意集合的直接证明：命题“x 属于空集则 x 属于 A”的前提恒假，所以不存在反例。要证明空集唯一，若 E、F 均无元素，则 E、F 各自包含于对方，由集合外延性相等。

== 补充例：幂集如何编码选择

对子集 $S subset.eq {a,b,c}$，按 a、b、c 顺序写成员位。例如 ${a,c}$ 对应 101，空集对应 000，全集对应 111。每个三位串恰好恢复一个子集，所以有 $2^3=8$ 种。恰含两个元素的子集对应恰有两个 1 的串，共 $binom(3,2)=3$ 种。这将幂集总数与按元素个数分类的计数联系起来。
