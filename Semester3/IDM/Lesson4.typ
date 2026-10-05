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
  #text(size: 24pt, weight: "bold")[离散数学基础\ 第四讲]\
  #v(10pt)
  #text(size: 16pt)[_2026年9月22日_]
]

= 关系的性质
对称关系，对$forall chevron.l x, y chevron.r$，如果$(x, y) in R$，则$(y, x) in R$。
自反

反自反


= 关系的闭包
设$R$为$A$上的关系，则

$r(A) = R union R^0 = R union I_A$

$s(R) = R union R^(-1)$

$t(R) = R union R^2 union R^3 union ...$

















