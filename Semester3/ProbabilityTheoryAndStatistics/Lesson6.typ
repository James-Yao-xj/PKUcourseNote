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
  #text(size: 24pt, weight: "bold")[信息学中的概率统计\ 第六讲]\

  #text(size: 16pt)[_2026年10月9日 笔记_]
]

= 分布函数

给定随机变量$X$，定义
$
F_X(x)=P(X<=x), quad x in RR,
$
称$F_X$为$X$的*分布函数*，也称累积分布函数。分布函数同时适用于离散随机变量、连续随机变量和混合型随机变量。

分布函数记录了随机变量落在半直线$(-oo,x]$内的概率。知道$F_X$以后，可以计算任意区间上的概率，因此它完整确定了$X$的分布。

== 基本例子

=== 例：圆盘内随机点到圆心的距离

在半径为$r$的圆盘内均匀随机取一点，令$X$为该点到圆心的距离。对于$0<=x<=r$，事件$X<=x$表示随机点落在半径为$x$的同心圆盘内，因此
$
F_X(x)=P(X<=x)=frac(pi x^2, pi r^2)=(x/r)^2.
$
完整写成
$
F_X(x)=cases(
  0 & x<0,
  (x/r)^2 & 0<=x<=r,
  1 & x>r
).
$

=== 例：区间上的均匀分布

若$X$在$[0,1]$上均匀取值，则
$
F_X(x)=cases(
  0 & x<0,
  x & 0<=x<=1,
  1 & x>1
).
$

=== 例：几何分布

若$X tilde G(p)$，即
$
P(X=k)=p(1-p)^(k-1), quad k=1,2,dots,
$
则对整数$n>=1$，
$
F_X(n)=P(X<=n)=1-P(X>n)=1-(1-p)^n.
$
由于$X$只取正整数值，分布函数为阶梯函数：
$
F_X(x)=cases(
  0 & x<1,
  1-(1-p)^floor(x) & x>=1
).
$

== 分布函数的性质

任意分布函数$F$都满足以下性质。

- *有界性：*
  $
  0<=F(x)<=1.
  $
- *两端极限：*
  $
  lim_(x arrow.r -oo)F(x)=0, quad lim_(x arrow.r +oo)F(x)=1.
  $
- *单调不减：*若$x_1<x_2$，则$F(x_1)<=F(x_2)$。
- *右连续：*对任意$x_0$，
  $
  lim_(x arrow.r x_0^+)F(x)=F(x_0).
  $

*单调性的证明：*若$x_1<x_2$，则事件${X<=x_1}$包含在事件${X<=x_2}$中。由概率的单调性，
$
P(X<=x_1)<=P(X<=x_2).
$

*右连续性的证明：*取$x_n$单调下降到$x_0$。事件
$
A_n={X<=x_n}
$
也单调下降，并且
$
∩_(n=1)^oo A_n={X<=x_0}.
$
由概率的上连续性，
$
lim_(n arrow.r oo)F(x_n)
=lim_(n arrow.r oo)P(A_n)
=P(∩_(n=1)^oo A_n)
=F(x_0).
$

反过来，任何满足以上四条性质的函数，都是某个随机变量的分布函数。

=== 例：判断候选分布函数

考虑
$
F(x)=arctan(x)/pi+1/2.
$
因为$arctan(x)$单调递增且连续，并且
$
lim_(x arrow.r -oo) arctan(x)=-pi/2,
quad
lim_(x arrow.r +oo) arctan(x)=pi/2,
$
所以$F$单调递增、连续，且两端极限分别为$0,1$。因此它是一个分布函数。

== 用分布函数计算概率

定义左极限
$
F(a^-)=lim_(x arrow.r a^-)F(x)=P(X<a).
$
于是
$
P(a<X<=b)&=F(b)-F(a),\
P(a<=X<=b)&=F(b)-F(a^-),\
P(X=a)&=F(a)-F(a^-),\
P(X>=a)&=1-F(a^-),\
P(X>a)&=1-F(a).
$

分布函数在$a$处的跳跃高度正好等于$P(X=a)$。因此离散随机变量的分布函数通常有跳跃，而连续随机变量在任意单点上的概率为$0$，其分布函数连续。

= 连续随机变量与概率密度

如果存在非负函数$f_X$，使得
$
F_X(x)=integral_(-oo)^x f_X(t) dif t,
$
则称$X$为*连续随机变量*，$f_X$称为$X$的*概率密度函数*。

这里的“连续”指分布可以由密度积分表示。密度$f_X(x)$本身不是概率，它描述单位长度附近的概率强度。

== 概率密度的性质

概率密度满足
$
f_X(x)>=0
$
以及
$
integral_(-oo)^(+oo) f_X(x) dif x=1.
$

若$F_X$在$x$处可导，则
$
f_X(x)=F_X'(x).
$
更直观地，对于很小的$Delta x>0$，
$
P(x<X<=x+Delta x)
=F_X(x+Delta x)-F_X(x)
approx f_X(x)Delta x.
$

== 区间概率与单点概率

对$a<b$，
$
P(a<X<=b)=integral_a^b f_X(x) dif x.
$
因为单点集合的积分为$0$，
$
P(X=a)=integral_a^a f_X(x) dif x=0.
$
所以对连续随机变量，区间端点是否包含不影响概率：
$
P(a<X<b)=P(a<=X<b)=P(a<X<=b)=P(a<=X<=b).
$

密度函数在有限个点上的取值也不影响积分，因此不会改变分布函数。

== 基本例子

=== 圆盘距离的密度

前面得到
$
F_X(x)=(x/r)^2, quad 0<=x<=r.
$
求导可得
$
f_X(x)=cases(
  2x/r^2 & 0<x<r,
  0 & "其他"
).
$
距离越大，对应的圆环面积越大，所以密度随$x$线性增加。

=== 区间$[0,1]$上的均匀分布

$
f_X(x)=cases(
  1 & 0<=x<=1,
  0 & "其他"
).
$
它的分布函数为
$
F_X(x)=cases(
  0 & x<0,
  x & 0<=x<=1,
  1 & x>1
).
$

=== 例：确定归一化常数

设
$
f(x)=C/(1+x^2), quad x in RR.
$
由密度的归一化条件，
$
1=integral_(-oo)^(+oo) C/(1+x^2) dif x
=C [arctan(x)]_(-oo)^(+oo)
=C pi.
$
所以
$
C=1/pi.
$
对应的分布函数为
$
F(x)=integral_(-oo)^x 1/(pi(1+t^2)) dif t
=arctan(x)/pi+1/2.
$
这就是标准柯西分布的密度与分布函数。

= 连续随机变量的数学期望与方差

== 数学期望

若
$
integral_(-oo)^(+oo) abs(x)f_X(x) dif x<oo,
$
则定义
$
E(X)=integral_(-oo)^(+oo) x f_X(x) dif x.
$
绝对可积条件保证正、负两部分不会以$oo-oo$的方式产生不确定结果。

=== 例：$[0,1]$上的均匀分布

$
E(X)=integral_0^1 x dif x=1/2.
$

=== 例：柯西分布的期望不存在

标准柯西密度为
$
f_X(x)=1/(pi(1+x^2)).
$
虽然被积函数$x f_X(x)$是奇函数，但
$
integral_(-oo)^(+oo) abs(x)f_X(x) dif x=oo.
$
因此$E(X)$不存在，不能仅凭对称性把它写成$0$。

== 随机变量函数的期望

若$Y=g(X)$，并且相应积分存在，则
$
E(g(X))=integral_(-oo)^(+oo) g(x)f_X(x) dif x.
$
这条公式不要求先求$Y$的密度。

=== 例：均匀分布的二阶矩

若$X$在$[0,1]$上均匀分布，则
$
E(X^2)=integral_0^1 x^2 dif x=1/3.
$

== 期望的性质

只要相应期望存在，就有

- $E(c)=c$；
- $E(a X+b)=a E(X)+b$；
- $E(g_1(X)+g_2(X))=E(g_1(X))+E(g_2(X))$；
- 若$X<=Y$，则$E(X)<=E(Y)$。

期望的线性性由积分的线性性直接得到。例如
$
E(a X+b)
&=integral_(-oo)^(+oo)(a x+b)f_X(x) dif x\
&=a integral_(-oo)^(+oo)x f_X(x) dif x
+b integral_(-oo)^(+oo)f_X(x) dif x\
&=a E(X)+b.
$

== 随机变量会在期望两侧取值

如果$E(X)$有限，并且$X$不以概率$1$等于常数$E(X)$，则
$
P(X<E(X))>0, quad P(X>E(X))>0.
$

*证明第一式：*假设$P(X<E(X))=0$，则$X>=E(X)$几乎处处。又因为$X$不是常数，所以存在$epsilon>0$使得
$
P(X>=E(X)+epsilon)>0.
$
于是
$
E(X)
&>=E(X)P(X<E(X)+epsilon)\
&quad +(E(X)+epsilon)P(X>=E(X)+epsilon)\
&=E(X)+epsilon P(X>=E(X)+epsilon)\
&>E(X),
$
矛盾。另一式同理。

== 马尔可夫不等式

若$X$为非负随机变量，则对任意$t>0$，
$
P(X>=t)<=E(X)/t.
$
令$t=a E(X)$，可写成
$
P(X>=a E(X))<=1/a, quad a>0.
$

*连续情形的证明：*
$
E(X)
&=integral_0^(+oo) x f_X(x) dif x\
&>=integral_t^(+oo) x f_X(x) dif x\
&>=t integral_t^(+oo) f_X(x) dif x\
&=t P(X>=t).
$
两边除以$t$即得结论。

== 方差与标准差

定义
$
"Var"(X)=E((X-E(X))^2),
$
标准差为
$
sigma(X)=sqrt("Var"(X)).
$
常用计算公式为
$
"Var"(X)=E(X^2)-(E(X))^2.
$

对常数$a,b$，
$
"Var"(a X+b)=a^2"Var"(X),
quad
sigma(a X+b)=abs(a)sigma(X).
$

=== 例：$[0,1]$上的均匀分布

由$E(X)=1/2$和$E(X^2)=1/3$，
$
"Var"(X)=1/3-(1/2)^2=1/12,
$
因此
$
sigma(X)=1/sqrt(12).
$

== 切比雪夫不等式

若$"Var"(X)>0$，则对任意$c>0$，
$
P(abs(X-E(X))>=c sigma(X))<=1/c^2.
$

*证明：*对非负随机变量
$
Y=(X-E(X))^2
$
使用马尔可夫不等式：
$
P(abs(X-E(X))>=c sigma(X))
&=P(Y>=c^2 "Var"(X))\
&<=E(Y)/(c^2 "Var"(X))\
&=1/c^2.
$

= 常用连续分布

== 均匀分布

若随机变量$X$只在区间$(a,b)$上取值，并且密度为常数，则称$X$服从$(a,b)$上的均匀分布，记作
$
X tilde U(a,b).
$
密度函数为
$
f_X(x)=cases(
  1/(b-a) & a<x<b,
  0 & "其他"
).
$

它的分布函数为
$
F_X(x)=cases(
  0 & x<=a,
  (x-a)/(b-a) & a<x<b,
  1 & x>=b
).
$

期望为
$
E(X)=integral_a^b x/(b-a) dif x=(a+b)/2.
$
二阶矩为
$
E(X^2)=integral_a^b x^2/(b-a) dif x=(a^2+a b+b^2)/3.
$
所以
$
"Var"(X)=E(X^2)-(E(X))^2=(b-a)^2/12.
$

== 标准正态分布

定义密度函数
$
phi(x)=1/sqrt(2 pi) e^(-x^2/2), quad x in RR.
$
服从此密度的随机变量称为*标准正态随机变量*，记作
$
X tilde N(0,1).
$

标准正态密度具有以下性质：

- $phi(x)>=0$，且$integral_(-oo)^(+oo)phi(x)dif x=1$；
- $phi(-x)=phi(x)$，即关于$y$轴对称；
- 最大值在$x=0$处取得；
- 当$abs(x) arrow.r oo$时，$phi(x) arrow.r 0$。

*归一化证明：*令
$
I=integral_(-oo)^(+oo)e^(-x^2/2)dif x.
$
则
$
I^2
=integral_(-oo)^(+oo)integral_(-oo)^(+oo)
e^(-(x^2+y^2)/2)dif x dif y.
$
改用极坐标$x=r cos(theta),y=r sin(theta)$，面积元为$r dif r dif theta$，所以
$
I^2
&=integral_0^(2pi)integral_0^(+oo)e^(-r^2/2)r dif r dif theta\
&=2pi[-e^(-r^2/2)]_0^(+oo)\
&=2pi.
$
因为$I>0$，所以$I=sqrt(2pi)$，从而
$
integral_(-oo)^(+oo)phi(x)dif x=1.
$

由于$x phi(x)$是奇函数，
$
E(X)=integral_(-oo)^(+oo)x phi(x)dif x=0.
$
又因为$phi'(x)=-x phi(x)$，分部积分可得
$
E(X^2)
&=integral_(-oo)^(+oo)x^2 phi(x)dif x\
&=-integral_(-oo)^(+oo)x phi'(x)dif x\
&=-[x phi(x)]_(-oo)^(+oo)+integral_(-oo)^(+oo)phi(x)dif x\
&=1,
$
所以
$
"Var"(X)=1.
$

标准正态分布函数记为
$
Phi(x)=integral_(-oo)^x phi(t)dif t.
$
由对称性，
$
Phi(-x)=1-Phi(x).
$
常用概率为
$
P(abs(X)<=1)&=Phi(1)-Phi(-1) approx 0.6827,\
P(abs(X)<=2)&approx 0.9545,\
P(abs(X)<=3)&approx 0.9973.
$

切比雪夫不等式只给出
$
P(abs(X)>=c)<=1/c^2.
$
正态分布的精确尾概率比这个通用上界小得多。

== 一般正态分布

对$mu in RR$和$sigma>0$，定义
$
f_X(x)=1/(sqrt(2 pi)sigma)
e^(-(x-mu)^2/(2sigma^2)).
$
称$X$服从均值为$mu$、方差为$sigma^2$的正态分布，记作
$
X tilde N(mu,sigma^2).
$

令
$
Y=(X-mu)/sigma.
$
则$Y tilde N(0,1)$。因此
$
P(X<=x)=Phi((x-mu)/sigma).
$
并且
$
E(X)=mu, quad "Var"(X)=sigma^2.
$

*标准化证明：*令$x=mu+sigma y$，则$dif x=sigma dif y$。因此$Y$的密度为
$
f_Y(y)
=f_X(mu+sigma y)sigma
=1/sqrt(2 pi)e^(-y^2/2)
=phi(y).
$

=== 随机变量的标准化

对任意期望为$mu$、标准差为$sigma>0$的随机变量$X$，定义
$
Z=(X-mu)/sigma.
$
由期望和方差的性质，
$
E(Z)=0, quad "Var"(Z)=1.
$
标准化只保证均值为$0$、方差为$1$，并不保证$Z$服从正态分布。

例如，若$X$服从参数为$1/2$的伯努利分布，即
$
P(X=1)=P(X=0)=1/2,
$
则$E(X)=1/2$，$sigma(X)=1/2$。标准化后
$
Z=(X-1/2)/(1/2)=2X-1.
$
因此
$
P(Z=1)=P(Z=-1)=1/2.
$
这个分布称为拉德马赫分布。它的均值为$0$、方差为$1$，但不是正态分布。

== 指数分布

对$lambda>0$，若随机变量$X$的密度为
$
f_X(x)=cases(
  lambda e^(-lambda x) & x>=0,
  0 & x<0
),
$
则称$X$服从参数为$lambda$的指数分布，记作
$
X tilde "Exp"(lambda).
$

分布函数为
$
F_X(x)=cases(
  0 & x<0,
  1-e^(-lambda x) & x>=0
).
$
尾概率为
$
P(X>x)=e^(-lambda x), quad x>=0.
$

通过分部积分可以得到
$
E(X)=1/lambda, quad "Var"(X)=1/lambda^2.
$

=== 无记忆性

对$s,t>0$，
$
P(X>s+t mid X>s)=P(X>t).
$

*证明：*
$
P(X>s+t mid X>s)
&=P(X>s+t)/P(X>s)\
&=e^(-lambda(s+t))/e^(-lambda s)\
&=e^(-lambda t)\
&=P(X>t).
$
已经等待了$s$个时间单位，不会改变接下来还需等待多久的分布。

=== 与泊松过程的关系

令$N(t)$表示时间区间$[0,t]$内设备发生故障的次数，并假设
$
N(t) tilde pi(lambda t).
$
令$T_1$表示第一次故障发生的时间。事件$T_1<=t$等价于$N(t)>=1$，所以
$
P(T_1<=t)
=P(N(t)>=1)
=1-P(N(t)=0)
=1-e^(-lambda t).
$
因此
$
T_1 tilde "Exp"(lambda).
$

更一般地，令$T_n$表示第$n$次故障发生的时间。事件$T_n<=t$等价于$N(t)>=n$，因此
$
F_(T_n)(t)
=1-sum_(k=0)^(n-1)e^(-lambda t)(lambda t)^k/k!.
$
求导得到
$
f_(T_n)(t)
=lambda^n t^(n-1)e^(-lambda t)/(n-1)!,
quad t>=0.
$
这正是形状参数为$n$、率参数为$lambda$的伽玛分布。

== 伽玛函数

对$alpha>0$，定义
$
Gamma(alpha)=integral_0^(+oo)x^(alpha-1)e^(-x)dif x.
$
它满足递推关系
$
Gamma(alpha+1)=alpha Gamma(alpha).
$

*证明：*分部积分，取$u=x^alpha$、$dif v=e^(-x)dif x$，则
$
Gamma(alpha+1)
&=integral_0^(+oo)x^alpha e^(-x)dif x\
&=[-x^alpha e^(-x)]_0^(+oo)
+alpha integral_0^(+oo)x^(alpha-1)e^(-x)dif x\
&=alpha Gamma(alpha).
$

特别地，
$
Gamma(1)=1, quad Gamma(n+1)=n!.
$
另有
$
Gamma(1/2)=sqrt(pi).
$
因此对非负整数$n$，
$
Gamma(n+1/2)=(2n)!/(4^n n!)sqrt(pi).
$

== 伽玛分布

对$alpha,lambda>0$，若$X$的密度为
$
f_X(x)=cases(
  lambda^alpha/Gamma(alpha) x^(alpha-1)e^(-lambda x) & x>=0,
  0 & x<0
),
$
则称$X$服从形状参数为$alpha$、率参数为$lambda$的伽玛分布，记作
$
X tilde Gamma(alpha,lambda).
$

=== 验证归一化

令$y=lambda x$，则$dif x=dif y/lambda$，所以
$
integral_0^(+oo) f_X(x)dif x
&=lambda^alpha/Gamma(alpha)
integral_0^(+oo)x^(alpha-1)e^(-lambda x)dif x\
&=1/Gamma(alpha)
integral_0^(+oo)y^(alpha-1)e^(-y)dif y\
&=1.
$

=== 期望和方差

$
E(X)
&=lambda^alpha/Gamma(alpha)
integral_0^(+oo)x^alpha e^(-lambda x)dif x\
&=Gamma(alpha+1)/(lambda Gamma(alpha))\
&=alpha/lambda.
$

同理，
$
E(X^2)
=Gamma(alpha+2)/(lambda^2 Gamma(alpha))
=alpha(alpha+1)/lambda^2.
$
因此
$
"Var"(X)
=E(X^2)-(E(X))^2
=alpha/lambda^2.
$

=== 特殊情形

- 当$alpha=1$时，$Gamma(1,lambda)$就是$"Exp"(lambda)$。
- 当$alpha=n$为正整数时，它描述泊松过程中第$n$次事件的到达时间。
- 当$alpha=n/2,lambda=1/2$时，得到自由度为$n$的卡方分布：
  $
  X tilde chi^2(n).
  $
  它的期望和方差为
  $
  E(X)=n, quad "Var"(X)=2n.
  $
- 当$n=1$时，卡方密度为
  $
  f_X(x)=1/sqrt(2 pi x)e^(-x/2), quad x>0.
  $

= 连续随机变量的函数

给定连续随机变量$X$和函数$g$，令
$
Y=g(X).
$
求$Y$的分布时，分布函数法通常最稳妥：先计算
$
F_Y(y)=P(g(X)<=y),
$
再对$y$求导得到$f_Y(y)$。

== 多个原像时概率相加

连续变量与离散变量有相同的基本思想：如果多个不同的$x$映射到同一个$y$，这些原像附近的概率都要计入$Y$在$y$附近的概率。

=== 例：$Y=abs(X)$

若$X$在$(-4,4)$上均匀分布，则
$
f_X(x)=1/8, quad -4<x<4.
$
令$Y=abs(X)$。对于$0<y<4$，$y$有两个原像$x=y$和$x=-y$，所以
$
f_Y(y)=f_X(y)+f_X(-y)=1/4.
$
因此$Y tilde U(0,4)$。

=== 例：$Y=2X$

仍设$X tilde U(-4,4)$。令$Y=2X$，则$Y$的取值范围为$(-8,8)$。由于区间长度扩大为原来的两倍，密度缩小为原来的一半：
$
f_Y(y)=cases(
  1/16 & -8<y<8,
  0 & "其他"
).
$

密度不能像离散概率那样直接写成$f_Y(y)=f_X(y/2)$，还必须乘上尺度修正因子$1/2$。

=== 例：$Y=X^2$

若$X tilde U(0,1)$，令$Y=X^2$。对$0<y<1$，
$
F_Y(y)=P(X^2<=y)=P(X<=sqrt(y))=sqrt(y).
$
求导得到
$
f_Y(y)=1/(2sqrt(y)), quad 0<y<1.
$

== 单调变换公式

设连续随机变量$X$的密度为$f_X$。若$g$在$X$的取值区间上严格单调，其反函数为
$
h(y)=g^(-1)(y),
$
且$h$连续可导，则
$
f_Y(y)=f_X(h(y))abs(h'(y))
$
在$Y$的取值范围内成立，范围外$f_Y(y)=0$。

*严格递增时的证明：*若$g$严格递增，则
$
F_Y(y)
&=P(Y<=y)\
&=P(g(X)<=y)\
&=P(X<=h(y))\
&=F_X(h(y)).
$
两边求导，
$
f_Y(y)=f_X(h(y))h'(y).
$
严格递减时，不等号方向反转，求导会产生负号。用$abs(h'(y))$可以统一两种情况。

=== 例：正态变量的仿射变换

若
$
X tilde N(mu,sigma^2), quad Y=a X+b, quad a!=0,
$
则反函数为
$
h(y)=(y-b)/a, quad abs(h'(y))=1/abs(a).
$
代入变换公式：
$
f_Y(y)
=1/(sqrt(2 pi)abs(a)sigma)
e^(-(y-(a mu+b))^2/(2a^2sigma^2)).
$
因此
$
Y tilde N(a mu+b,a^2sigma^2).
$

=== 例：伽玛变量的尺度变换

若
$
X tilde Gamma(alpha,lambda), quad Y=k X, quad k>0,
$
则$h(y)=y/k$，$h'(y)=1/k$。因此
$
f_Y(y)
&=lambda^alpha/Gamma(alpha)(y/k)^(alpha-1)e^(-lambda y/k)1/k\
&=(lambda/k)^alpha/Gamma(alpha)y^(alpha-1)e^(-(lambda/k)y).
$
所以
$
Y tilde Gamma(alpha,lambda/k).
$

== 非单调变换

如果$g$不是一一映射，需要找出所有满足$g(x_i)=y$的原像。若这些原像处$g'(x_i)!=0$，则
$
f_Y(y)=sum_(x_i:g(x_i)=y) f_X(x_i)/abs(g'(x_i)).
$
每个原像都贡献一部分密度。

=== 例：正弦变换

设$X$的密度为
$
f_X(x)=cases(
  2x/pi^2 & 0<x<pi,
  0 & "其他"
).
$
令$Y=sin(X)$。显然$0<Y<1$。对$0<y<1$，方程$sin(x)=y$在$(0,pi)$内有两个解：
$
x_1=arcsin(y), quad x_2=pi-arcsin(y).
$
两处导数绝对值均为$sqrt(1-y^2)$。因此
$
f_Y(y)
&=f_X(x_1)/sqrt(1-y^2)+f_X(x_2)/sqrt(1-y^2)\
&=2arcsin(y)/(pi^2sqrt(1-y^2))\
&quad+2(pi-arcsin(y))/(pi^2sqrt(1-y^2))\
&=2/(pi sqrt(1-y^2)), quad 0<y<1.
$
范围外$f_Y(y)=0$。

= 本讲公式小结

- 分布函数：$F_X(x)=P(X<=x)$。
- 区间概率：$P(a<X<=b)=F_X(b)-F_X(a)$。
- 连续随机变量：$F_X(x)=integral_(-oo)^x f_X(t)dif t$。
- 数学期望：$E(X)=integral_(-oo)^(+oo)x f_X(x)dif x$。
- 方差：$"Var"(X)=E(X^2)-(E(X))^2$。
- 均匀分布：$E(X)=(a+b)/2$，$"Var"(X)=(b-a)^2/12$。
- 正态标准化：若$X tilde N(mu,sigma^2)$，则$(X-mu)/sigma tilde N(0,1)$。
- 指数分布：$E(X)=1/lambda$，$"Var"(X)=1/lambda^2$，且具有无记忆性。
- 伽玛分布：$E(X)=alpha/lambda$，$"Var"(X)=alpha/lambda^2$。
- 单调变换：$f_Y(y)=f_X(h(y))abs(h'(y))$，其中$h=g^(-1)$。
