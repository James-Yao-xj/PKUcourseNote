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
  #text(size: 24pt, weight: "bold")[第八讲：多维连续随机变量]
]

来源：2026.10.23 Part II，第 1 至 49 页。Part I 的多维离散部分已归入第七讲。

= 联合分布函数

$ F(x,y)=P(X<=x,Y<=y). $
除有界、分别单调不减、分别右连续以及边界极限外，还要求任意矩形增量非负：
$ F(b,d)-F(a,d)-F(b,c)+F(a,c)>=0. $
左边就是 $P(a<X<=b,c<Y<=d)$。分别单调不能代替矩形增量非负条件。

边际分布函数为 $F_X(x)=lim_(y->oo) F(x,y)$，$F_Y(y)=lim_(x->oo) F(x,y)$。

= 联合密度、支持域与边缘密度

若联合分布可写为
$ F(x,y)=integral_(-oo)^x integral_(-oo)^y f(u,v) dif v dif u, $
则 $f>=0$ 且全平面积分等于 1。区域 $G$ 的概率为 $integral.double_G f(x,y) dif x dif y$。密度可大于 1，概率由积分给出。

$ f_X(x)=integral_(-oo)^oo f(x,y) dif y, quad f_Y(y)=integral_(-oo)^oo f(x,y) dif x. $
积分上下限由支持域的横截面或纵截面决定。先画支持域，再确定固定一个变量时另一个变量的范围。

== 指数型密度例题

$f(x,y)=c e^(-2x-3y)$ 在第一象限为正，其余为 0。归一化得到 $c=6$，边际分别为 $2e^(-2x)$、$3e^(-3y)$。
$ P(X<1,Y>1)=(1-e^(-2))e^(-3). $
$ P(X>Y)=integral_0^oo 2e^(-2x)(1-e^(-3x)) dif x=1-2/5=3/5. $
课件第 5 页此项写成 4/5，积分结果应为 3/5。

== 三角形支持域

$f(x,y)=1$ 于 $0<x<1,abs(y)<x$。区域面积为 1，已归一。边际密度为
$ f_X(x)=2x quad (0<x<1), $
$ f_Y(y)=1-abs(y) quad (-1<y<1). $
横截面长度随位置改变，因此二维均匀分布的坐标不一定均匀。

= 条件密度与独立性

当 $f_Y(y)>0$，条件密度为
$ f_(X|Y)(x|y)=f(x,y)/f_Y(y). $
它关于 $x$ 积分为 1。连续变量的 $P(Y=y)=0$，条件密度通过局部区间的极限或联合密度比定义。

单位圆上均匀取点时，$f=1/pi$，$f_Y(y)=2 sqrt(1-y^2)/pi$。故给定 $Y=y$（$abs(y)<1$），$X$ 在 $(-sqrt(1-y^2),sqrt(1-y^2))$ 上均匀。

独立等价于联合分布函数分解 $F(x,y)=F_X(x)F_Y(y)$；存在联合密度时等价于密度几乎处处可分解为边际密度之积。只看公式表面能否写成两个因子还不够，支持域也要一并纳入。

单位圆中的坐标不独立，因为给定 $Y$ 会改变 $X$ 的可取区间。

== 两台设备的竞争寿命

独立 $X$、$Y$ 分别服从参数 $lambda_1,lambda_2$ 的指数分布：
$ P(X<Y)=integral_0^oo lambda_1 e^(-lambda_1 x)P(Y>x) dif x=lambda_1/(lambda_1+lambda_2). $
最小寿命为参数 $lambda_1+lambda_2$ 的指数分布。

= 期望、条件期望与协方差

$ E(g(X,Y))=integral_(-oo)^oo integral_(-oo)^oo g(x,y)f(x,y) dif x dif y. $
期望的线性性无需独立；独立时可把乘积的期望分解。独立 $U(0,1)$ 变量满足
$ E(abs(X-Y))=2 integral_0^1 integral_0^x (x-y) dif y dif x=1/3. $

条件期望 $E(X|Y=y)=integral x f_(X|Y)(x|y) dif x$，代入随机变量 $Y$ 后得到关于 $Y$ 的随机变量。重期望为 $E(E(X|Y))=E(X)$。

== 指数变量决定均匀区间

$X~"Exp"(lambda)$，给定 $X=x$ 后 $Y~U(0,x)$：
$ E(Y|X=x)=x/2, quad E(Y^2|X=x)=x^2/3. $
$ E(Y)=1/(2 lambda), quad E(Y^2)=2/(3lambda^2), quad "Var"(Y)=5/(12 lambda^2). $
也可用全方差公式 $"Var"(Y)=E("Var"(Y|X))+"Var"(E(Y|X))$ 验算。

== 非独立密度的矩计算

$f(x,y)=(x+y)/3$ 于 $0<x<1,0<y<2$。边际密度为 $(2x+2)/3$ 与 $(2y+1)/6$。
$ E(X)=5/9, quad E(X^2)=7/18, quad E(Y)=11/9, quad E(Y^2)=16/9, quad E(X Y)=2/3. $
$ "Var"(X)=13/162, quad "Var"(Y)=23/81, quad "Cov"(X,Y)=-1/81. $
课件第 31 页二阶矩中的 7/8 应为 7/18，与所列方差相符。

= 相关系数

方差均有限且为正时，
$ rho="Cov"(X,Y)/(sigma_X sigma_Y), quad -1<=rho<=1. $
利用 $E((t(X-E(X))+(Y-E(Y)))^2)>=0$，对 $t$ 的二次式判别式不大于 0，即得相关系数的界。

$abs(rho)=1$ 当且仅当 $Y=a X+b$ 几乎处处成立且 $a!=0$；符号与 $a$ 相同。独立推出不相关，反向一般不成立。

反例：$X~U(-1,1)$，$Y=X^2$，由奇函数积分得 $"Cov"(X,Y)=0$，但 $Y$ 完全由 $X$ 决定。这个反例的联合分布集中在曲线上，不具有二维联合密度。

= 和、极值与乘积的分布

== 卷积

独立 $X,Y$ 的和 $Z$ 的密度为
$ f_Z(z)=integral_(-oo)^oo f_X(z-y)f_Y(y) dif y. $
推导从 $P(X+Y<=z)$ 的积分区域出发，对 $z$ 求导。

独立正态相加仍为正态，均值与方差分别相加。独立且同率参数的伽玛分布相加，形状参数相加；特别地两个独立 $"Exp"(1)$ 之和密度为 $z e^(-z)$（$z>0$）。

== 最大值与最小值

独立 $X_1,...,X_n$：
$ F_max(z)=product_(i=1)^n F_i(z), $
$ F_min(z)=1-product_(i=1)^n (1-F_i(z)). $
两个独立单位均匀变量的最大值密度为 $2z$，最小值密度为 $2(1-z)$，支持域均为 $(0,1)$。

== 二维变量变换

可逆变换 $u=u(x,y),v=v(x,y)$ 的反变换为 $x=x(u,v),y=y(u,v)$，则
$ f_(U,V)(u,v)=f_(X,Y)(x(u,v),y(u,v)) abs(det(mat(partial x/partial u, partial x/partial v; partial y/partial u, partial y/partial v))). $
先写反变换，再求反变换雅可比绝对值，最后转换支持域。多分支映射需将各个反像的贡献相加。

若 $X,Y$ 独立且均为 $N(mu,1)$，$U=X+Y,V=X-Y$，则 $x=(u+v)/2,y=(u-v)/2$，雅可比绝对值为 $1/2$，得到
$ f_(U,V)(u,v)=1/(4 pi) exp(-((u-2 mu)^2+v^2)/4). $
所以 $U~N(2 mu,2)$、$V~N(0,2)$ 且独立。

求乘积令 $U=X Y,V=Y$，有 $x=u/v$、$y=v$，雅可比绝对值为 $1/abs(v)$，故
$ f_U(u)=integral_(-oo)^oo f_X(u/v)f_Y(v) 1/abs(v) dif v. $
支持域会限制积分范围，例如正随机变量只需积分 $v>0$。
