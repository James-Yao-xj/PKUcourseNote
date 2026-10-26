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
  #text(size: 16pt)[_2026年9月10日_]
]

= 集合运算的性质

$bold(A) inter bold(B) subset.eq bold(A), bold(A) inter bold(B) subset.eq bold(B)$

$bold(A) subset.eq bold(A) union bold(B), bold(B) subset.eq bold(A) union bold(B)$

== 例题

证明：$bold(A) - bold(B) = bold(A) inter ~bold(B)$

证：

$

x in bold(A) - bold(B) => x in bold(A) and x in.not bold(B)\

 => x in bold(A) and x in ~ bold(B)\

 => x in bold(A) inter ~bold(B)

$

证明：$(bold(A) - bold(B)) union bold(B) = bold(A) union bold(B)$

证：

$
bold(A) - bold(B) = bold(A) inter ~bold(B)\

 => (bold(A) - bold(B)) union bold(B) = (bold(A) inter ~bold(B)) union bold(B)\

 = (bold(A) union bold(B)) inter (~bold(B) union bold(B))\

 = (bold(A) union bold(B) ) inter bold(E) = bold(A) union bold(B)
$

计算：$(bold(B) - (bold(A) inter bold(C)) )union (bold(A) inter bold(B) inter bold(C))$

$
= (bold(B) inter ~(bold(A) inter bold(C))) union (bold(A) inter bold(B) inter bold(C))
$

$
= bold(B inter ~(bold(A inter bold(C)))) union (bold(A) inter  bold(C) inter bold(B))\
= bold(B) inter (~(bold(A) inter bold(C)) union bold(A) inter  bold(C)) inter bold(B)\
= bold(B) inter bold(E) = bold(B)
$



= 有穷集的计数

集合之间的关系和初级运算可以使用Venn图来表示。

计算时先明确交集是否包含更高重交，再将重叠区域拆为互不相交的区域。下面用容斥和具体分区同时核对。

$
abs(overline(bold(A_1)) inter overline(bold(A_2)) inter ... inter overline(bold(A_n)) )= abs(bold(S)) - sum_(i = 1) ^ n abs(bold(A_i)) + sum_(1 <= i < j <= n) abs(bold(A_i) inter bold(A_j)) - sum_(1 <= i < j < k <= n) abs(bold(A_i) inter bold(A_j) inter bold(A_k)) + ... + (-1)^n abs(bold(A_1) inter bold(A_2) inter ... inter bold(A_n))
$

== 一个有趣的例子

*伯努利信封排错问题*

=== 问题描述

一共有编号为$a_1, a_2, ..., a_n$的信封和$n$张写有对应号码的信纸。将信纸放入信封中，要求每个信封里恰好放入一张信纸。问有多少种放法使得没有任何一封信纸被放入与它号码相同的信封中？

解答：我们可以很容易列出：（假设$A_i$代表有选定$i$个一定安装正确，而其他的任意安放）

$A_1 = C_n^1 dot (n - 1) ! = (n!) / 1!$

$A_2 = C_n^2 dot (n - 2) ! = (n !) / 2 !$

...

$A_(n - 1) = C_n^(n-1) dot 1 = n = (n!) / (n - 1)!$


设 $A_i$ 表示：选定 $i$ 个号码，要求这 $i$ 张信纸一定放入对应的信封中，其余信纸任意放置。

选定这 $i$ 个号码有 $binom(n, i)$ 种。固定它们后，剩余的 $n-i$ 张信纸可以任意排列，共有 $(n-i)!$ 种。因此

$
A_i
= binom(n, i) (n-i)!
= n! / i!
$

特别地，

$
A_1 &= binom(n, 1)(n-1)! = n!, \
A_2 &= binom(n, 2)(n-2)! = n! / 2!, \
&dots \
A_(n-1) &= binom(n, n-1)1! = n! / (n-1)!, \
A_n &= binom(n, n)0! = 1.
$

由于一种放法中可能有多个号码同时放置正确，所以这些情况会被重复计算，需要使用容斥原理。

先从全部 $n!$ 种放法中减去至少有一个选定号码正确的情况，再加回至少有两个选定号码正确的情况，然后继续正负交替。因此，全部错排的数量为

$
D_n
= n! - A_1 + A_2 - A_3 + dots + (-1)^n A_n.
$

代入 $A_i = n! / i!$，得到

$
D_n
= n! (
  1
  - 1 / 1!
  + 1 / 2!
  - 1 / 3!
  + dots
  + (-1)^n / n!
).
$

所以答案为

$

  D_n
  = n! sum_(i=0)^n (-1)^i / i!

$

= 二元关系

== 有序对

由元素$x, y$组成的对$(x, y)$称为有序对或者序偶。记作$chevron.l x, y chevron.r.$ 当且仅当有序对对应位置上的数相等才认为两个有序对相等。

*笛卡尔积*

用$bold(A)$中的元素作为第一元素，$bold(B)$中的元素作为第二元素组成的有序对的集合称为$bold(A)$和$bold(B)$的笛卡尔积，记作
$
bold(A) times bold(B) = { chevron.l x, y chevron.r | x in bold(A) and y in bold(B) }
$

例如：
$
bold(A) = {1, 2}, bold(B) = {3, 4} \
bold(A) times bold(B) = { chevron.l 1, 3 chevron.r, chevron.l 1, 4 chevron.r, chevron.l 2, 3 chevron.r, chevron.l 2, 4 chevron.r }
$
性质：
  
$
abs(bold(A) times bold(B)) = abs(bold(A)) dot abs(bold(B))
$

$
bold(A) times bold(emptyset) = bold(emptyset), emptyset times bold(B) = bold(emptyset)
$

笛卡尔积不满足交换律！

对并和交满足分配律：

$
bold(A) times (bold(B) union bold(C)) = (bold(A) times bold(B)) union (bold(A) times bold(C))\
bold(A) times (bold(B) inter bold(C)) = (bold(A) times bold(B)) inter (bold(A) times bold(C))\

(bold(B) union bold(C)) times bold(A) = (bold(B) times bold(A)) union (bold(C) times bold(A))\

$


*关于笛卡尔积的一个问题*

$
bold(A) subset.eq bold(C), quad
bold(B) subset.eq bold(D)
=> bold(A) times bold(B) subset.eq bold(C) times bold(D)
$

那么逆推是否成立？

分析：

需要讨论 $bold(A) = emptyset$ 和 $bold(B) = emptyset$ 的情况。

+ 若 $bold(A) != emptyset, bold(B) != emptyset$

  任取 $a in bold(A)$。因为 $bold(B) != emptyset$，可以取 $b in bold(B)$，于是
  $
  (a, b) in bold(A) times bold(B)
  subset.eq bold(C) times bold(D).
  $
  因此 $a in bold(C)$，从而 $bold(A) subset.eq bold(C)$。

  同理可得 $bold(B) subset.eq bold(D)$。

+ 若 $bold(A) = emptyset, bold(B) != emptyset$

  此时
  $
  bold(A) times bold(B) = emptyset,
  $
  所以无论 $bold(C)$ 和 $bold(D)$ 是什么，都有
  $
  bold(A) times bold(B)
  subset.eq bold(C) times bold(D).
  $

  其中 $bold(A) subset.eq bold(C)$ 恒成立，但不能推出
  $bold(B) subset.eq bold(D)$。

+ 若 $bold(A) != emptyset, bold(B) = emptyset$

  此时
  $
  bold(A) times bold(B) = emptyset,
  $


  其中 $bold(B) subset.eq bold(D)$ 恒成立，但不能推出
  $bold(A) subset.eq bold(C)$。

+ 若 $bold(A) = emptyset, bold(B) = emptyset$

  此时
  $
  bold(A) times bold(B) = emptyset.
  $

  并且
  $
  bold(A) subset.eq bold(C), quad
  bold(B) subset.eq bold(D)
  $
  都恒成立。

因此，一般情况下逆推不成立。只有当
$bold(A) != emptyset$ 且 $bold(B) != emptyset$ 时，才有

$
bold(A) times bold(B) subset.eq bold(C) times bold(D)
=> bold(A) subset.eq bold(C)
and bold(B) subset.eq bold(D).
$

= 课堂容斥题的完整数据与分区

== 24 名科技人员的外语调查（第一部分第 131—141 页）

会英语、日语、德语、法语分别有 13、5、10、9 人；英日都会的有 2 人；英语、德语、法语中每一对都会的均有 4 人；会日语的人不懂法语和德语。求只会各种语言的人数和会三种语言的人数。

令 E,F,G,J 分别表示英、法、德、日。唯一可能的三重交是 E∩F∩G，记人数 x，所有四重交和含 J 的其他三重交均为空。容斥给出
$ 24=(13+9+10+5)-(4+4+4+2)+x=23+x, quad x=1. $
因此英法、英德、法德的“恰会两种”区域各有 $4-1=3$ 人。只会日语 $5-2=3$ 人；只会英语 $13-3-3-1-2=4$ 人；只会法语 $9-3-3-1=2$ 人；只会德语 $10-3-3-1=3$ 人。

所有互不相交区域人数相加为 $4+2+3+3+3+3+3+2+1=24$，与总人数一致。题目中“两种都会”包含会三种的人，需先减三重交才得到恰会两种。

== 1—1000 中避开 5、6、8 的倍数（第 144—156 页）

令 A、B、C 分别为 5、6、8 的倍数。单集人数为 200、166、125；交集使用最小公倍数：
$ abs(A inter B)=floor(1000/30)=33, quad abs(A inter C)=floor(1000/40)=25, $
$ abs(B inter C)=floor(1000/24)=41, quad abs(A inter B inter C)=floor(1000/120)=8. $
注意 6 与 8 不互素，所以交集分母为 24，不能直接写成 48。

至少被一个整除的有 $200+166+125-33-25-41+8=400$；所求为 $1000-400=600$。

按课件文氏图逐区填写，三重交 8，恰在 AB、AC、BC 中的分别为 25、17、33，只在 A、B、C 中的分别为 150、100、67。七个区域合计 400，圆外 600。

== 帽子错位（第 158—170 页）

令 $A_i$ 为第 i 个人取到自己的帽子。总排列数 n!，固定 k 个人取对帽子后，其余可任意排列，因此任意 k 重交有 $(n-k)!$ 个元素。容斥得
$ D_n=sum_(k=0)^n (-1)^k binom(n,k)(n-k)!
 =n!sum_(k=0)^n (-1)^k/k!. $
例如据公式算 $D_3=6-6+3-1=2$，对应循环错位 231、312；$D_4=24-24+12-4+1=9$。这里 n 重交的元素数为 $0!=1$，因为“所有人都取对”恰好一种方式。

= 补充例：“至少一个”“恰好一个”“恰好两个”

70 人的三个兴趣集合人数为 35、28、20，两两交人数为 10、8、6，三重交为 3。两两交均包含三重交。至少参加一项的人数为 $35+28+20-10-8-6+3=62$，三项都不参加的有 8 人。

恰好两项应从每个两两交减去三重交，共 $(10-3)+(8-3)+(6-3)=15$。恰好一项为
$ (35+28+20)-2(10+8+6)+3 dot 3=44. $
一个恰在两集合中的人先被数两次，再减两次，最后贡献零；三重交中每人先数三次、再减六次、最后加三次，也贡献零。检验 $44+15+3+8=70$，所有互斥分区总和正确。

== 补充推导：错排的递推

固定信纸 1，它可以去 n−1 个其他信封之一 j。若信纸 j 回到信封 1，形成二循环，剩余为 n−2 张错排，有 $D_(n-2)$ 种；若信纸 j 不去信封 1，则在 1 所在的更长循环中删去 1，把原来送入信封 1 的那张纸改送 j，得到 n−1 个对象的错排，有 $D_(n-1)$ 种。两种变换都能逆向恢复，故
$ D_n=(n-1)(D_(n-1)+D_(n-2)), quad D_0=1,D_1=0. $
依次得到 $D_2=1,D_3=2,D_4=9,D_5=44$。容斥适合导出通式，递推适合逐项计算；两条路线应给出相同结果。
