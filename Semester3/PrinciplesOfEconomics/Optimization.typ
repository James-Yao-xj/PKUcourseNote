#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1.8cm, right: 1.8cm),
  header: context [
    #text(9pt, fill: luma(70))[经济学原理 · 习题课]
    #h(1fr)
    #text(9pt, fill: luma(70))[约束优化与 KKT]
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
  #text(size: 24pt, weight: "bold", fill: rgb("173f5f"))[习题课：约束优化与 KKT]
]

来源：2026 秋第一次习题课讲义（21 页）。

= 凸集、凹凸函数与拟凹性

凸集包含任意两点之间的整条线段。凸函数满足 $f(theta x+(1-theta)y)<=theta f(x)+(1-theta)f(y)$，$0<=theta<=1$；凹函数不等号反向。

拟凹函数的上等值集 ${x | f(x)>=c}$ 为凸集，等价于中间点函数值不低于两端较小值。拟凹性表达偏好集合的凸性；效用的具体数字可以作严格递增变换，因此凹性与拟凹性应区分。

在正象限，$f(x,y)=x y$ 拟凹但不凹。Cobb–Douglas $x^alpha y^beta$ 在正参数下保持拟凹；$alpha+beta<=1$ 时为凹函数。

二次可微函数的 Hessian 半正定对应凸性，半负定对应凹性。二维对称矩阵半正定要求两个对角元素均非负且行列式非负；只检验一个对角元素和行列式，在该对角元素为 0 时不够。

= 等式约束的拉格朗日法

约束 $g(x)=0$，取 $L=f-lambda g$，驻点满足 $nabla f=lambda nabla g$ 与原约束。几何上目标等值面的法向量与约束法向量平行。

多个等式约束用各自乘子求和；乘子随拉格朗日函数的符号约定变化。二阶条件看 Hessian *在约束切空间上的* 二次型，不必要求整个空间正定或负定。

例：单位圆上最大化 $x+y$。由 $1=2 lambda x=2 lambda y$，得到 $x=y=plus.minus 1/sqrt(2)$。比较目标值分别为 $plus.minus sqrt(2)$，即可确定最大与最小。

= 不等式约束与 KKT

以下统一为最小化 $f$、约束 $g_i=0,h_j<=0$，拉格朗日函数
$ L=f+sum_i lambda_i g_i+sum_j mu_j h_j. $
四组条件为：驻点 $nabla_x L=0$；原始可行 $g_i=0,h_j<=0$；对偶可行 $mu_j>=0$；互补松弛 $mu_j h_j=0$。

未活跃约束 $h_j<0$ 对应乘子 0；活跃约束 $h_j=0$ 的乘子可以为 0 或正。正则性使局部最优满足 KKT；凸目标、凸不等式与仿射等式构成的凸问题中，满足 KKT 的点是全局最优。

例：最小化 $x^2+y^2$，约束 $x+y>=1$。取 $h=1-x-y$，驻点给出 $2x=2y=mu$。$mu=0$ 导致不可行点；活跃约束给出 $x=y=1/2,mu=1$，最小值为 $1/2$。

= 罚函数与障碍函数

二次罚函数在原目标上加上 $rho(sum_i g_i^2+sum_j max(0,h_j)^2)$，$rho$ 增大时逐渐压低违反量。
对约束 $x+y=1$，最小化 $x^2+y^2+rho(x+y-1)^2$ 得 $x=y=rho/(1+2 rho)$，从不满足约束的一侧趋近 $1/2$。

对 $h_j<0$ 的严格内部，对数障碍为 $f-tau sum_j ln(-h_j)$。$tau$ 逐渐减小时，内部解逼近约束最优。对 $x+y>=1$ 的平方和例题，$x=y=(1+sqrt(1+4 tau))/4$，从可行内部趋近 $1/2$。

= 讲义的消费选择综合例

$U=(alpha_1 sqrt(x_1)+alpha_2 sqrt(x_2))^2$，预算 $p_1 x_1+p_2 x_2<=m$，额外要求 $x_1 x_2>=k$。设
$ A=alpha_1^2/p_1+alpha_2^2/p_2. $
在额外约束严格不活跃时，效用递增使预算用尽；等边际条件得到
$ x_i^*=m alpha_i^2/(A p_i^2), quad U^*=m A. $
将结果代回检查 $x_1^* x_2^*>k$，便确认该分支。若乘积约束活跃，则联立预算与 $x_1x_2=k$ 另解。

以最大化问题的拉格朗日函数 $U-lambda(p_1x_1+p_2x_2-m)$ 计，$lambda=A$，表示收入增加一单位的最优效用增量。

在讲义不活跃分支，预算二次罚项系数为 $sigma/2$ 时，$x_i(sigma)=x_i^*+alpha_i^2/(p_i^2 sigma)$；预算对数障碍参数为 $tau$ 时，$x_i(tau)=x_i^*-tau alpha_i^2/(A^2 p_i^2)$。两者误差分别按 $1/sigma$ 与 $tau$ 缩小。
