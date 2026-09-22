#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[经济学原理]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[第三章\ 交换、分工与货币]\
  #v(10pt)
  #text(size: 16pt)[_日期：2026年9月21日_]
]

= 直接交换：鲁宾逊和星期五
== 亚当斯密：人类的交换倾向
交换这种倾向为人类所共有，也是人类所特有的，在其他动物中是找不到的。

动物达到壮年基本上可以独立，人类一旦要与旁人做买卖，那么就需要先港人提议：“请给我我需要的东西吧，我会给你你需要的东西。”这就是交易的通义。

交换与分工的因果？

== 直接交换


= 分工和比较优势


