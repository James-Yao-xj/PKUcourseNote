#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1.8cm, right: 1.8cm),
  header: context [
    #text(9pt, fill: luma(70))[经济学原理 · 第三章]
    #h(1fr)
    #text(9pt, fill: luma(70))[交换、分工与货币]
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
  #text(size: 24pt, weight: "bold", fill: rgb("173f5f"))[第三章　交换、分工与货币]
]

来源：第 3 章《交换、分工与货币》（82 页，封面日期 2026 年 9 月 23 日）。

= 直接交换与互利

直接交换指取得物品用于直接消费或生产，交易双方同时是买者和卖者。禀赋、偏好、信息、预期及风险态度的差异都可能带来交换空间。
若有 $N$ 种商品，两两交易比价共有 $N(N-1)/2$ 个。

课件的鲁滨孙与星期五例子按偏好排序判断交换后是否都改善。仅凭两人偏好可能得到多个可接受比价；加入竞争者后，一部分比价被更优报价排除。谈判和履约成本又可能阻止潜在互利交易。

埃奇沃思盒子的宽高表示两物总量，每点表示一种可行分配。通过某初始点的两条无差异曲线围出的改进区域中，双方都可受益。合同线由无进一步互利改进的配置组成；内部平滑点满足两人的边际替代率相等。

= 分工、绝对优势与比较优势

绝对优势比较同量投入的产量，比较优势比较机会成本。双方即使在所有生产活动上效率不同，仍可能因相对效率不同而互利交换。

课件例：鲁滨孙最多生产 20 条鱼或 10 个椰子，星期五最多生产 30 条鱼或 30 个椰子。鲁滨孙一条鱼的机会成本为 0.5 个椰子，星期五为 1 个椰子；所以前者在鱼上有比较优势，后者在椰子上有比较优势。

若用每个椰子换 $p$ 条鱼，严格互利比价为 $1<p<2$。当 $p=1.25$，星期五以 8 个椰子换 10 条鱼，鲁滨孙消费 10 条鱼与 8 个椰子，星期五消费 10 条鱼与 22 个椰子。

分工使生产可能性与消费可能性分离。是否完全专业化还取决于偏好和生产边界形状；比较优势并不自动要求每个人只生产一种物品。

= 外生优势与内生优势

外生优势来自已有天赋、资源和技术差别。内生优势由专业化产生：熟练、节省任务切换时间、专用设备、技术创新和规模经济。分工与交换相互促进，市场范围扩大使更细的分工有利可图。

课件以棉纺织、汽车、造纸和石油说明技术与企业家活动会改变何物成为资源、何地形成优势。理解这些例子时，应把起作用的技术和组织机制与各年份的历史数据对应起来。

= 交易成本、间接交换与货币

交易成本包括寻找对象、取得信息、议价、签约和履约成本。物物交换要求双方需求相互吻合；间接交换中，至少一方取得某物是为了以后再交换。

货币的核心功能是共同接受的交换媒介，计价单位和储藏手段与之联系。货币把卖出与买入分开，减少需求双重巧合的限制，并统一核算尺度。以某种商品为计价物时，独立标价只需 $N-1$ 个，其余比价可由此推出。

课件把货币形成解释为自发秩序：分散选择逐步收敛到更易转手的物品。贵金属的可分割、耐久、易携带和较高单位价值有利于流通；铸币、纸币、信用货币改变了凭证、发行与信用安排。

= 市场经济与价格

家庭在要素市场供给劳动等要素，在产品市场购买产品；企业在要素市场购买投入，在产品市场出售产出。价格连接分离的生产和消费决策。

价格传递相对稀缺程度的信息，提供改变生产和消费的激励，并参与决定收入分配。价格变化使行动者即使不了解全部原因，也能调整其使用资源的方式。

课件对国际贸易的分析延续人际互利交换，并强调企业家发现和创造比较优势。静态模型给出已有约束下的互利空间，动态分析还要追踪创新与要素流动。
