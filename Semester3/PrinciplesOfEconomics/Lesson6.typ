#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1.8cm, right: 1.8cm),
  header: context [
    #text(9pt, fill: luma(70))[经济学原理 · 第六章]
    #h(1fr)
    #text(9pt, fill: luma(70))[供求与市场均衡]
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
  #text(size: 24pt, weight: "bold", fill: rgb("173f5f"))[第六章　供求与市场均衡]
]

来源：第 6 章《供求与市场均衡》（104 页）。

= 市场与均衡

市场既可指场所，也可指交易关系、竞价过程和自由选择的制度安排。均衡价格 $p^*$ 满足 $Q_d(p^*)=Q_s(p^*)$，相应数量为 $Q^*$。

价格低于均衡时出现超额需求，买方竞价推动价格上升；价格高于均衡时出现超额供给，卖方降价推动调整。需求、技术、投入价格等不断变化，使均衡成为解释调整方向的参照。

竞争性无外部性模型中，需求的边际支付意愿与供给的边际成本相交，总剩余最大。消费者剩余是支付意愿减实际支付，生产者剩余是收入减可变机会成本；后者还未扣除固定成本。

= 比较静态与竞价规则

需求增加，均衡价格与数量同升；供给增加，均衡价格降而数量升。供需同时移动时，某一个方向可能确定，另一个取决于幅度。

课件列举英国式、荷兰式、第一价格密封和第二价格密封拍卖。集合竞价把一批报价集中形成统一成交价，连续竞价按到达的买卖报价逐笔撮合。不同市场规则决定信息如何进入成交价格。

= 价格信号与非价格成本

价格汇集分散的偏好和成本信息。偏好上升诱导增产，成本上升诱导节约消费。价格变化也改变资金和其他资源在产业之间的分配。

排队、配给、关系、质量降低都是价格以外的调整。滑雪场固定门票却限制高峰期可完成的次数，实际每趟成本会上升；分析应使用包含等待时间的完整成本。

= 最高价、最低价与双轨制

低于均衡的最高价导致短缺；高于均衡的最低价导致过剩。非约束性限价不改变原均衡。短缺量是该价格下意愿需求与意愿供给之差，实际成交还取决于配给规则。

课件最高价例中，价格 20，供给 400、需求 1200，短缺 800。由谁买到、是否排队、是否降低质量，会继续影响资源配置。

最低工资的课堂供需图以竞争性劳动市场为前提；最低价高于均衡时，劳动供给超过需求。模型中的需求方为雇主，供给方为劳动者。

双轨制固定计划存量及其价格，增量按市场价格交易，再逐步减少计划指标。结果取决于计划生产者的成本、配给对象的支付意愿、计划义务执行与转售条件；四种课件图不能直接合并成同一结论。

= 从量税与税负归宿

单位税 $t$ 形成楔子 $p_c-p_p=t$。均衡满足 $Q_d(p_c)=Q_s(p_p)$。向哪一方规定缴税不改变同一税楔下的经济归宿。

课件例 $Q_d=12-2p_c,Q_s=2p_p$：无税时价格 3、数量 6。单位税 0.5 后：
$ p_c=3.25, quad p_p=2.75, quad Q=5.5. $
消费者和生产者各承担 0.25，税收为 $0.5 dot 5.5=2.75$，线性供需下无谓损失为 $1/2 dot 0.5 dot (6-5.5)=0.125$。

弹性较小的一方承担较大比例。局部小税模型中消费者份额为 $epsilon_s/(epsilon_s+abs(epsilon_d))$，生产者份额为 $abs(epsilon_d)/(epsilon_s+abs(epsilon_d))$。完全无弹性的一方承担全部税负，完全弹性的一方不承担。

= 从价税的口径

价内税率 20% 表示 $p_p=0.8p_c$；价外税率 25% 表示 $p_c=1.25p_p$，二者税楔相同。代入前例得到 $p_c=10/3,p_p=8/3,Q=16/3$。

不能仅凭名义税率数字比较税负，需先确认计税基础。所得税的归宿还要通过要素供需与市场结构分析。

= 短期与长期均衡

短期固定企业数量，长期可进入退出。对同质企业、自由进入退出和竞争性市场，正经济利润吸引进入，亏损推动退出，长期均衡位于 $p="MC"=min "AC"$。经济利润为零已经包含资本、劳动和企业家投入的正常机会报酬。

= 局部均衡与一般均衡

局部均衡研究一个市场，把其他价格和收入视为给定；一般均衡联立产品与要素市场，要求消费者最优、生产者最优和各市场相容。

课件用一般均衡作为静态效率与政策间接影响的参照。某项税收不仅改变该产品市场，还通过替代、收入和要素需求影响其他市场。

= 习题步骤

先明确市场与纵横轴，再判断是沿曲线移动还是整条曲线移动；求解时分别记消费者支付价和生产者实收价；最后由实际交易量计算剩余、税收和无谓损失。
