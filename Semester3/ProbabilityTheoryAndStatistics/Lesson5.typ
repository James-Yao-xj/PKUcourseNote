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
  #text(size: 24pt, weight: "bold")[信息学中的概率统计\ 第五讲]\

  #text(size: 16pt)[_2026年9月30日 笔记_]
]

= 切比雪夫不等式

$
P(abs(X - E(X)) >= c dot sigma(x)) <= 1 / c ^ 2
$

考虑$Y = (X- EE(X))^2$
马尔可夫不等式

$
P(y >= c^2 dot EE(Y)) <= 1 / c ^ 2
$

带入可得：
$
P((X - EE(X))^ 2 >= c^2 dot "Var"(X)) <= 1 / c^2 \

=> P(abs(X - E(X)) >= c dot sigma(x)) <= 1 / c ^ 2

$


== 应用
例子：投掷$n$枚硬币，有超过$(3 n) / 4$的硬币正面朝上的概率？

$EE(X) = n / 2$
$
2 dot P(X >= (3 n) / 4) = P(abs(X - EE(X)) >= n / 4)  <= 4 / n
$

= 常用随机变量

== $n$重伯努利试验（二项分布）

$
P(X = k) = C_n^k p^k (1-p)^(n-k) \

X ~ B(n, p)\

EE(X) = n p, "Var"(X) = n p (1-p)
$

== 泊松分布

$X ~ pi (lambda)$


