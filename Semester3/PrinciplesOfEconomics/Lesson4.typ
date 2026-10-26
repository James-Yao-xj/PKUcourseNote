#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1.8cm, right: 1.8cm),
  header: context [
    #text(9pt, fill: luma(70))[经济学原理 · 消费需求]
    #h(1fr)
    #text(9pt, fill: luma(70))[消费选择与作业专题]
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
  #text(size: 24pt, weight: "bold", fill: rgb("173f5f"))[第四章衔接：消费需求与作业专题]
]

来源：第一次作业的需求、消费选择与对偶问题；与第二讲偏好选择、第五讲生产供给衔接。

= 预算、最优选择与需求函数

预算集合为 $p_1 x_1+p_2 x_2<=m$，预算线斜率为 $-p_1/p_2$，横纵截距分别为 $m/p_1,m/p_2$。偏好局部非饱和时最优点用尽预算；平滑内部点满足 $"MU"_1/"MU"_2=p_1/p_2$。

Marshall 需求在预算下最大化效用，$x(p,m)$；Hicks 需求在给定效用下最小化支出，$h(p,u)$。价格和收入同时乘正数不改变预算集合，因此 Marshall 需求对价格收入联合为零次齐次。

= 三类效用的解法

Cobb–Douglas：$U=x^alpha y^(1-alpha)$，$0<alpha<1$，需求为
$ x^*=alpha m/p_x, quad y^*=(1-alpha)m/p_y. $
支出份额固定，自身价格弹性为 -1，收入弹性为 1，交叉价格弹性为 0。

完全替代 $U=a x+b y$：比较每元效用 $a/p_x,b/p_y$，把预算用于较高者；二者相等时预算线上的组合均最优。

完全互补 $U=min(a x,b y)$：取折点 $a x=b y$ 再代预算。例：$U=min(2x,y),p_x=3,p_y=1,m=20$，有 $y=2x$，故 $x=4,y=8$。

拟线性 $U=alpha ln x+y$、$y$ 价格为 1，内部解 $x=alpha/p_x$，其收入效应为 0；当预算不足以维持该内部解时，最优可能移到 $y=0$ 的边界。

= 需求曲线与消费者剩余

个体需求来自不同价格下的最优选择，市场需求在同一价格横向加总。自身价格变动是沿曲线移动，收入、偏好、相关商品价格和人数变动引起需求曲线移动。

逆需求 $p(q)$ 表示每单位的边际支付意愿，消费者剩余为
$ "CS"=integral_0^Q p(q) dif q-p Q. $
例：$q=10-p$，价格 4 时 $Q=6$，剩余为三角形面积 $1/2 dot 6 dot 6=18$。价格下降带来的剩余增加为需求曲线在两价格间的面积；线性曲线可用梯形精确计算。

对离散需求，逐单位加总支付意愿减价格，仅购买边际支付意愿不低于价格的单位。

= 三种弹性

需求价格弹性 $epsilon_p=(d q/d p)(p/q)$，通常为负，讨论弹性大小时取绝对值。
弧弹性采用中点基准：
$ abs(epsilon_p)=abs(((q_1-q_0)/((q_1+q_0)/2))/((p_1-p_0)/((p_1+p_0)/2))). $
从价格 10、数量 100 变为价格 8、数量 120，绝对弧弹性为 $9/11$。

收入弹性为 $(d q/d m)(m/q)$，正为正常品、负为劣等品；交叉价格弹性为 $(d q_x/d p_y)(p_y/q_x)$，正值对应总替代，负值对应总互补。

收入 $R=p q$，小幅变价有 $d R/R=(1+epsilon_p)d p/p$。富有弹性时降价提高收入，缺乏弹性时降价减少收入。

= 替代效应与收入效应

价格上升一方面使该商品相对变贵，另一方面降低实际购买力。Slutsky 分解为
$ (partial x_i)/(partial p_j)=(partial h_i)/(partial p_j)-x_j (partial x_i)/(partial m). $
补偿需求的自身替代效应非正；正常品的收入效应强化价格上涨后的需求下降。劣等品的收入效应方向相反，足够强时可能形成吉芬品。

= 间接效用与支出函数

间接效用 $v(p,m)=U(x(p,m))$；支出函数 $e(p,u)=p dot h(p,u)$。对 $U=sqrt(x y)$：
$ v(p,m)=m/(2 sqrt(p_x p_y)), quad e(p,u)=2 u sqrt(p_x p_y). $
二者满足 $v(p,e(p,u))=u$、$e(p,v(p,m))=m$。严格递增的效用变换保留选择，目标效用的数值需要同步转换。

Shephard 引理给出 $h_i=partial e/partial p_i$；Roy 恒等式给出 $x_i=-(partial v/partial p_i)/(partial v/partial m)$。使用这些公式时价格、效用与收入分别保持在对应定义的固定水平。

= 作业中的比较方法

一次总额税只缩小预算，商品税还改变相对价格；在相同税收的课堂例中，商品税通常还引入额外替代扭曲。

Cobb–Douglas 消费者的生活成本指数为
$ "COLI"=(p_1^1/p_1^0)^alpha (p_2^1/p_2^0)^(1-alpha). $
它来自 $e(p^1,u)/e(p^0,u)$。若价格指数的消费篮子取自同一消费者在对应价格和收入下的实际最优选择，可比较固定旧篮子、固定新篮子与补偿支出的差别；对这类同质偏好，Paasche 指数不高于 COLI，COLI 不高于 Laspeyres 指数。

纯交换经济中，消费者收入等于禀赋按市场价计值。把各自需求代入总量约束即可求出清价格比；价格只决定相对尺度，可先选一种商品为计价物。
