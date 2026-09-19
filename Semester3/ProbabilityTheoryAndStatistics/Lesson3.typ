#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[信息学中的概率统计]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[信息学中的概率统计\ 第三讲]\

  #text(size: 16pt)[_2026年9月18日 笔记_]
]
= 独立事件

当且仅当$P(A B) = P(A) times P(B)$时，我们称这两个事件相互独立。不要想那些逻辑上的问题。

三个事件的独立性：

对于事件$A B C$，


$A = {0, 1}, B = {0, 1}, C = A xor B,$

C还是与A，B独立的变量。这是异或很好的性质。

由此观之，两个事件向三个事件推广的难度是很大的。我们把三个事件的独立定义为：

三个事件两两独立，并且$P(A B C) = P(A) P(B) P(C)$

对于$n$个事件：

尾不等式：

随机变量与其期望的偏离

马尔可夫不等式：若$X$为非负随机变量，若$E(X) > 0$对于$a > 0$，有
$
P(X >= a E(X)) <= 1 / a
$






















