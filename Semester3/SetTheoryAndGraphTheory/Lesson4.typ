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
  #text(size: 16pt)[_2026年9月22日 笔记_]
]

= 投影运算
$
R subset.eq A_1 times A_2 times ... times A_n \

m < n, A_(i_1), A_(i_2), ..., A_(i_m) subset.eq {A_1, A_2, ..., A_n} \

Pi_(i_1, i_2, ..., i_m)(R) = { chevron.l a_(i_1), a_(i_2), ..., a_(i_m) chevron.r | chevron.l a_1, a_2, ..., a_n chevron.r in R }  
$

= 联接运算

设$R$是以$chevron.l A_1, A_2, ..., A_n, B_1, B_2, ..., B_m chevron.r$为基的$(n + m)$元关系；$S$是以$B_1, B_2, ..., B_m, C_1, ..., C_r chevron.r$为基的$(m + r)$元关系，则$R$和$S$的联接运算定义为：

$

tau_m (R * S) = { chevron.l a_1, a_2, ..., a_n, b_1, b_2, ..., b_m, c_1, c_2, ..., c_r chevron.r | chevron.l a_1, a_2, ..., a_n, b_1, b_2, ..., b_m chevron.r in R and chevron.l b_1, b_2, ..., b_m, c_1, c_2, ..., c_r chevron.r in S }  

$

关系矩阵 $0 - 1$，也就类似之前说的特征函数


= 特殊二元关系

$A != emptyset$

$R subset.eq A times A$

$M[R]$表示关系矩阵，$G[R]$表示关系图。

性质

def 设$R subset.eq A times A, (A != emptyset)$
+ $R$是自反的，是指$forall a in A, a R a$
+ $R$是反自反的，是指$forall a in A, a 与 a "没有关系" R$
+ 对称的$forall a, b in A, a R b <=> b R a$
+ 反对称的 $forall a, b in A, a R b and a != b, b 与 a "没有关系" R$
+ 斜对称的 $forall a, b in A, a R b => b 与 a "没有关系" R$


Theorem

设$R subset.eq A times A (A != emptyset)$
+ $R$是自反的，$<=> I_A subset.eq R <=> M[R]$对角线元素全部是1$<=>G(R)$每一个顶点都有自环



$R_1, R_2 subset.eq A times A, A != emptyset$
















