#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1.8cm, right: 1.8cm),
  header: context [
    #text(9pt, fill: luma(70))[经济学原理 · 第五章]
    #h(1fr)
    #text(9pt, fill: luma(70))[生产与供给曲线]
    #line(length: 100%, stroke: 0.4pt + luma(190))
  ],
  footer: context [
    #align(center)[#text(9pt, fill: luma(90))[#counter(page).display("1")]]
  ],
)

#set text(size: 10.5pt, lang: "zh")
#set par(justify: true, leading: 0.7em)
#set heading(numbering: "1.")
#show heading.where(level: 1): it => [
  #block(sticky: true)[
    #v(0.8em)
    #text(size: 16pt, weight: "bold", fill: rgb("1f4e79"))[#it.body]
    #v(-0.45em)
    #line(length: 100%, stroke: 0.8pt + rgb("8fb3cf"))
  ]
]
#show heading.where(level: 2): it => [
  #block(sticky: true)[
    #v(0.5em)
    #text(size: 12.5pt, weight: "bold", fill: rgb("2f6591"))[#it.body]
  ]
]
#show emph: it => text(fill: rgb("8a3b12"), it.body)

// Keep definitions visually distinct without interrupting the reading flow.
#let key(body) = block(
  width: 100%,
  inset: 9pt,
  radius: 3pt,
  fill: rgb("f3f7fa"),
  stroke: 0.5pt + rgb("b8cedd"),
  body,
)

// Render compact vector diagrams with consistent spacing.
#let svg-diagram(path, width: 82%) = align(center)[
  #image(path, width: width)
]

#align(center)[
  #text(size: 24pt, weight: "bold", fill: rgb("173f5f"))[第五章　生产与供给曲线]
]

来源：第 5 章《生产与供给曲线》（89 页）。

= 利润、收入与机会成本

利润为 $pi(q)=R(q)-C(q)$。收入是销售价格乘销售量；经济成本包括投入的机会成本，因此经济利润与会计利润有区别。

内部最优点满足 $"MR"="MC"$，并要求从增产有利转为增产不利。价格接受者的 $"MR"=p$，故最优正产出在 $p="MC"$ 处；还须与停产选择比较。

机会成本解释供给：课件给定大豆价格 1 元，增加玉米产量所放弃的大豆依次为 1.0、1.1、…、1.9 单位。玉米价格上升后，更多单位的边际机会成本低于其价格，供给增加。两种产品价格同比上升而相对价格不变，不改变这个取舍。

= 生产函数与边际产出

生产函数 $q=f(K,L)$ 描述给定投入下可实现的最大产出。
单一可变投入 $L$ 时，平均产出 $"AP"=q/L$，边际产出 $"MP"=d q/d L$。其他投入和技术不变时，继续增加同一投入会进入边际产出递减区。

最优投入满足 $p dot "MP"_L=w$。课件化肥每单位 20 元、玉米每单位 10 元，前 7 单位化肥的边际产出为 8、7、6、5、4、3、2，第 7 单位刚好收支相抵，第 8 单位边际产出仅 1，继续增加会减少利润。第 6 与第 7 单位对应的离散利润可以并列最优。

= 成本曲线

$ "TC"="FC"+"VC", quad "AFC"="FC"/q, quad "AVC"="VC"/q, quad "AC"="TC"/q. $
$ "MC"=d "TC"/d q=d "VC"/d q=w/"MP"_L. $

边际产出下降使边际成本上升。MC 低于平均成本时拉低平均值，高于平均成本时抬高平均值，因此 MC 穿过 AVC、AC 的最低点。AFC 随产量递减；AVC 的具体形状由生产函数决定。

固定成本不随本期产量变化，沉没成本是已发生且无法回收的成本；两者定义不同。决策比较未来可避免的收益和成本。

= 短期供给与停产

价格接受者的短期供给是上升的 MC 中不低于最小 AVC 的部分。若 $p<min "AVC"$，停产的损失较小；若 $min "AVC"<=p<min "AC"$，继续生产能够覆盖可变成本和一部分固定成本，但经济利润仍为负。

给定原设备且可变成本不变时，提高固定成本会降低利润，但不改变继续生产时的最优产量。

= 多种投入的成本最小化

等产量曲线表示相同产出的要素组合，等成本线为 $w L+r K=C$。平滑内部最优满足
$ "MRTS"_(L K)="MP"_L/"MP"_K=w/r, quad "MP"_L/w="MP"_K/r. $
最后一元支出投向各要素带来相同的边际产出。劳动相对价格下降，使成本最优组合更偏向劳动。

课件表中 $L=4,K=4.5,w=1.1,r=1$ 时成本为 8.9；正文出现的 $K=5$ 与该表不符，应取表中的 4.5。若 $L=5,K=3.6,w=0.9$，成本为 8.1。

= 规模报酬与规模经济

规模报酬同时改变全部投入，考察 $f(t K,t L)$ 相对 $t f(K,L)$ 的大小；边际报酬递减固定其他投入，考察单一投入变化。

Cobb–Douglas 函数 $q=A K^alpha L^beta$：$alpha+beta$ 大于、等于、小于 1，分别对应规模报酬递增、不变、递减。

规模经济指成本最小化后的长期平均成本随产量下降；规模不经济相反。它还依赖要素价格条件，不能只看某一种投入的边际产出。

= 长短期、弹性与市场供给

长期全部投入可调整，长期成本是给定产量下各可选技术成本的下包络。短期至少一项投入固定；长期调整范围更大，供给通常更有弹性。

供给价格弹性 $epsilon_s=(d q/d p)(p/q)$。无弹性为竖直线，完全弹性为水平线。斜率与弹性不同，弹性还取决于当前价格和数量。

市场供给是同一价格下各企业供给量的横向加总。自身价格改变引起沿曲线移动；技术、要素价格、生产相关商品价格、预期及企业数量改变引起曲线移动。
