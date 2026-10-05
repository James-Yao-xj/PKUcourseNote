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
  #text(size: 24pt, weight: "bold")[离散数学基础\ 第五讲]\
  #v(10pt)
  #text(size: 16pt)[_2026年9月24日_]
]

= 函数的定义与性质

函数是一种特殊的二元关系。

函数也是集合，若函数$F, G$满足$F subset.eq G and G subset.eq F$那么称这两个函数相等。

若$f$是一个函数，$"dom" f = A, "ran" f subset.eq B$，称$f$是从$A$到$B$的函数，记作$f: A -> B$。

所有从$A$到$B$的函数的集合记作$B^A = {f | f: A -> B}$。

特别地，从空集到任意集合有唯一的空函数（例如，空关系就是这样的一个合法的函数）；从非空集合到空集没有函数。

函数值是一个数，像是值域的一个子集。

一般不一定有$f^(-1)f(A_1) = A_1$，但是总有$A_1 subset.eq f^(-1)f(A_1)$

*几个重要的概念*
设$f : A -> B$

- 满射$"ran" f = B$
- 单射：$forall y in "ran" f, exists ! x in A , s.t. f(x) = y$

反函数

定理：若$f: A -> B$是双射，则$f^(-1) : B -> A$













