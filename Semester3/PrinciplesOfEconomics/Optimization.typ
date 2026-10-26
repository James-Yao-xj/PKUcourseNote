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

= 讲义例题展开：曲率、驻点和切空间

*讲义第 2—8 页。* 在正象限 $f(x,y)=x y$ 的 Hessian 为 $mat(0,1;1,0)$，特征值为 1、−1，所以函数既不凹也不凸。上等值集 $x y>=c$ 在 c>0 时等价于 $y>=c/x$，是凸函数 c/x 的上图集，因此 f 仍为拟凹。

一维 $ln x$ 凹，$e^x$ 凸；$sqrt(abs(x))$ 的下等值集为区间 $[-c^2,c^2]$（c≥0），所以拟凸，但并不处处凸。$x^2-y^2$ 的相应等值集不能统一保持凸性；严格单调函数如 $x^3$ 则可同时拟凹、拟凸。

对于 Cobb–Douglas $f=x^alpha y^beta$，
$ det(nabla^2 f)=alpha beta(1-alpha-beta)x^(2alpha-2)y^(2beta-2). $
当正参数之和小于 1 时 Hessian 负定，等于 1 时半负定；大于 1 时行列式负，为不定矩阵，但仍保持拟凹。保序变换可保持偏好次序，却未必保持普通凹性。

== 单位圆上的 x+y（第 8—9 页）

取 $L=x+y-lambda(x^2+y^2-1)$。一阶条件为
$ 1-2lambda x=0, quad 1-2lambda y=0, quad x^2+y^2=1. $
前两式得 $x=y=1/(2lambda)$；代入圆方程，$2/(4lambda^2)=1$，故 $lambda=plus.minus 1/sqrt(2)$。

正号解为 $(1/sqrt(2),1/sqrt(2))$，值 $sqrt(2)$；负号解为相反点，值 $-sqrt(2)$。圆为紧集、目标连续，最大最小均存在；圆上无边界的其他候选，比较两驻点即可。

此处 $nabla_x^2 L=-2lambda I$。在正号解上负定，在负号解上正定。一般等式约束的二阶判断只要求在切空间 $nabla g^T z=0$ 上比较 $z^T nabla_x^2 L z$。两变量单约束的加边 Hessian 为
$ H_B=mat(0,g_x,g_y;g_x,L_(x x),L_(x y);g_y,L_(x y),L_(y y)). $
切向量可写 $z=t(-g_y,g_x)$，所以 $z^T nabla_x^2 L z=-t^2 det(H_B)$，这说明其行列式符号与切向曲率之间的关系。

= 讲义例题展开：KKT 的分支判断

*第 10—11 页。* 最小化 $f=x^2+y^2$，约束 $h=1-x-y<=0$，取
$ L=x^2+y^2+mu(1-x-y). $
KKT 条件为 $2x-mu=0$、$2y-mu=0$、$1-x-y<=0$、$mu>=0$、$mu(1-x-y)=0$。

先试 mu=0，得到 x=y=0，却使 h=1>0，分支被排除。若 mu>0，则互补松弛要求 x+y=1，与 x=y=mu/2 联立得 mu=1、x=y=1/2，最小值为 1/2。

还可直接证明：可行点满足 $x+y>=1$，故
$ x^2+y^2>= (x+y)^2/2>=1/2. $
候选点同时取两次等号，给出全局最优性的独立验证。

= 讲义例题展开：罚函数与障碍函数的路径

== 等式约束的二次罚函数（第 14 页）

最小化 $P=x^2+y^2+rho(x+y-1)^2$。求偏导后两式相减，得 x=y；代回
$ 2x+2rho(2x-1)=0, quad x=y=rho/(1+2rho). $
有限 rho 时 $x+y-1=-1/(1+2rho)$，约束仍未完全满足；rho→∞ 时违反量趋零，x,y 从 1/2 以下接近。

== 不等式约束的对数障碍（第 16 页）

最小化 $B=x^2+y^2-tau ln(x+y-1)$，定义域 x+y>1。对称性与一阶条件给 x=y=t，
$ 4t-2tau/(2t-1)=0 => 4t^2-2t-tau=0. $
选满足 t>1/2 的根：$t=(1+sqrt(1+4tau))/4$。tau→0 时从可行域内部趋向 1/2；取另一根将离开障碍函数的定义域。

== 光滑最大值（第 11—12 页）

令 $M=max_i x_i$，则
$ e^(k M)<=sum_i e^(k x_i)<=n e^(k M). $
取对数除 k：
$ M<=(1/k)ln(sum_i e^(k x_i))<=M+(ln n)/k. $
所以 k→∞ 时得到最大值，且误差有明确上界。它把不可微的 max 近似成可微函数，代价是有限 k 下的近似误差。

= 讲义综合消费题：从一阶条件推出需求

*第 17—21 页。* 设 $s=alpha_1 sqrt(x_1)+alpha_2 sqrt(x_2)$，$U=s^2$；约束预算不超 m、$x_1x_2>=k$，并令 $A=alpha_1^2/p_1+alpha_2^2/p_2$。

在商品数量为正且乘积约束不活跃的分支，预算必用尽。拉格朗日条件为
$ alpha_i s/sqrt(x_i)=lambda p_i, quad sqrt(x_i)=alpha_i s/(lambda p_i). $
将后式代入 s 的定义：$s=(s/lambda)A$。s>0，所以 $lambda=A$。再代入预算：
$ m=sum_i p_i alpha_i^2 s^2/(A^2p_i^2)=s^2/A. $
故 $s^2=m A$，$x_i^*=m alpha_i^2/(A p_i^2)$，最优效用 $U^*=m A$。

最后检验该分支：
$ k < x_1^*x_2^*=m^2 alpha_1^2 alpha_2^2/(A^2p_1^2p_2^2). $
该严格不等式满足时，乘积约束乘子为零。预算乘子 A 也等于 $partial U^* / partial m$；对价格求导，$partial U^* / partial p_i=-m alpha_i^2/p_i^2=-lambda x_i^*$。

== 预算罚函数的显式解

最大化 $Phi=U-(sigma/2)max(0,p_1x_1+p_2x_2-m)^2$。在超预算、乘积仍严格可行的区域，设 $v=sigma(p_1x_1+p_2x_2-m)$。一阶条件与上文相同，将 lambda 换为 v，故 v=A。

因此支出为 $m+A/sigma$，
$ x_i(sigma)=alpha_i^2/p_i^2 (m/A+1/sigma)=x_i^*+alpha_i^2/(p_i^2sigma). $
罚后目标值为 $m A+A^2/(2sigma)$，误差按 $1/sigma$ 缩小。解从预算外侧趋近，每次有限参数下的约束违反量可直接计算。

== 预算障碍函数的显式解

最大化 $B=U+tau ln(m-p_1x_1-p_2x_2)$。设 $v=tau/(m-p_1x_1-p_2x_2)$，同样由一阶条件得到 v=A，故支出为 $m-tau/A$。

$ x_i(tau)=x_i^*-tau alpha_i^2/(A^2p_i^2). $
取足够小的正 tau，数量保持正且乘积约束仍严格可行。此时预算有余量 $tau/A$，解从内部趋近，误差按 tau 缩小。

若令 $tau=A^2/sigma$，两条路径与最优点的坐标距离恰好相同，方向相反：
$ x_i(sigma)-x_i^*=x_i^*-x_i(A^2/sigma). $
这将罚函数和障碍函数的参数、误差及接近方向放在同一组公式中比较。

= 补充例：活跃约束的乘子也可以为零

最小化 $f(x)=x^2$，约束 x≥0。取 $h=-x<=0$，拉格朗日函数 $L=x^2-mu x$，KKT 为 $2x-mu=0$、x≥0、mu≥0、mu x=0。解 x=0、mu=0：约束恰取等号，却没有正乘子。互补松弛只给“乘子正则约束活跃”和“约束严格松弛则乘子零”，不把“活跃”和“乘子正”当作等价。

另一例最小化 x、约束 $x^2<=0$，可行域只有 {0}，所以 0 必为最优，但在 0 处驻点条件为 $1+mu dot 0=0$，不可能成立。原因是约束梯度在最优点退化，必要性的正则条件不满足。原问题最优性与是否能由当前表示的 KKT 系统检出，是两个层次。

== 补充例：把综合消费题的两个分支都算完

取 $alpha_1=alpha_2=1,p_1=1,p_2=4,m=10$。不加乘积下限时 A=1.25，需求为 (8,0.5)，乘积为 4，效用为 12.5；若 k=3，额外约束严格不活跃，此解沿用。

若 k=5，原解不可行。效用递增，仍用尽预算，令 $x_1=10-4x_2$。乘积限制为 $(10-4x_2)x_2>=5$，给
$ (5-sqrt(5))/4<=x_2<=(5+sqrt(5))/4. $
在预算线上无约束最优的 $x_2=0.5$ 位于区间左侧，目标从该点往右递减，所以取左端：
$ x_2=(5-sqrt(5))/4 approx 0.6910, quad x_1=5+sqrt(5) approx 7.2361. $
检验预算为 10、乘积为 5。右端虽同样使乘积活跃，却不是最优，须比较目标或分析沿预算线的单调性。

还应先检查可行性：预算下乘积的最大值在 $x_1=5,x_2=1.25$，为 6.25；k>6.25 时没有可行组合。于是“无约束最优、活跃约束、不可行”三种情况都有明确阈值。
