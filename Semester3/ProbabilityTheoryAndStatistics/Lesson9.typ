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
  #text(size: 24pt, weight: "bold")[第九讲：多维高斯分布]
]

来源：2026.10.23 Part II，第 16 至 21 页、第 32 至 38 页、第 50 至 59 页。

= 二维正态分布

参数为 $mu_1,mu_2$，标准差 $sigma_1,sigma_2>0$，相关系数 $abs(rho)<1$。令 $u=(x-mu_1)/sigma_1,v=(y-mu_2)/sigma_2$，联合密度为
$ f(x,y)=1/(2 pi sigma_1 sigma_2 sqrt(1-rho^2)) exp(-(u^2-2 rho u v+v^2)/(2(1-rho^2))). $

对指数配方：
$ u^2-2 rho u v+v^2=(u-rho v)^2+(1-rho^2)v^2. $
用 $z=(u-rho v)/sqrt(1-rho^2)$ 后，密度和雅可比共同化成两个标准正态密度的乘积，从而验证归一化并读出条件分布。

== 边际、条件与相关

$ X~N(mu_1,sigma_1^2), quad Y~N(mu_2,sigma_2^2). $
$ X | (Y=y) ~ N(mu_1+rho sigma_1/sigma_2 (y-mu_2), sigma_1^2(1-rho^2)). $
交换下标得到 $Y|X=x$ 的分布。边际不随 $rho$ 改变，联合分布却改变，说明仅有边际不能确定联合。

$ "Cov"(X,Y)=rho sigma_1 sigma_2. $
对 *联合正态*，不相关等价于独立。分别正态不自动保证联合正态，不能把这个等价结论用于任意具有正态边际的两个变量。

例：$mu_1=1,mu_2=2,sigma_1=2,sigma_2=3,rho=1/2$，给定 $Y=5$ 时，条件均值为 2、条件方差为 3。

= 协方差矩阵

把向量记为列向量，均值 $mu=E(X)$，协方差矩阵
$ Sigma=E((X-mu)(X-mu)^T), quad Sigma_(i j)="Cov"(X_i,X_j). $
它对称且半正定，因为对任意实向量 $a$，
$ a^T Sigma a="Var"(a^T X)>=0. $

二维情形：
$ Sigma=mat(sigma_1^2,rho sigma_1 sigma_2; rho sigma_1 sigma_2,sigma_2^2), $
$ det(Sigma)=sigma_1^2 sigma_2^2(1-rho^2). $

= 多维高斯密度与线性变换

$Sigma$ 正定时，$n$ 维高斯密度为
$ f(x)=1/((2 pi)^(n/2) sqrt(det(Sigma))) exp(-1/2 (x-mu)^T Sigma^(-1)(x-mu)). $
记作 $X~N(mu,Sigma)$。标准多维高斯 $N(0,I)$ 的密度分解为各坐标的标准正态密度，因此坐标相互独立。

若 $Y=A X+b$，则
$ E(Y)=A mu+b, quad "Cov"(Y)=A Sigma A^T, quad Y~N(A mu+b,A Sigma A^T). $
变换矩阵行满秩时保留输出维度中的普通密度；秩不足时分布集中在低维仿射子空间，仍可作为退化高斯理解。

取选择矩阵可知子向量仍为高斯，均值和协方差取相应子块。取一行向量得到
$ a^T X~N(a^T mu,a^T Sigma a). $
对独立 $X_i~N(mu_i,sigma_i^2)$，线性组合均值为 $sum_i a_i mu_i$，方差为 $sum_i a_i^2 sigma_i^2$。

若各变量联合正态但不独立，方差还需加上 $2sum_(i<j) a_i a_j "Cov"(X_i,X_j)$。

= 谱分解、生成与白化

对称半正定矩阵可正交分解为 $Sigma=Q Lambda Q^T$，特征值非负。取平方根 $Sigma^(1/2)=Q Lambda^(1/2) Q^T$。

若 $Z~N(0,I)$，则 $X=mu+Sigma^(1/2)Z$ 具有所需高斯分布。正定时可白化：$Z=Sigma^(-1/2)(X-mu)$，结果协方差为单位阵。

正交矩阵保持长度，因此 $Q Z$ 与 $Z$ 同分布，这就是标准高斯的旋转不变性。一般线性变换由旋转、轴向伸缩、再旋转组成；按标准记法 SVD 为 $A=U D V^T$，协方差为 $A A^T=U D^2 U^T$。

= 等密度椭球的几何

指数由二次型 $(x-mu)^T Sigma^(-1)(x-mu)$ 决定。给它固定值，得到以 $mu$ 为中心的椭球。特征向量确定主轴方向，特征值平方根确定相对轴长，$sqrt(det(Sigma))$ 给出相对单位球的体积倍率。

密度前面的 $1/sqrt(det(Sigma))$ 抵消线性伸缩造成的体积变化，使总概率保持为 1。

= 矩与线性代数练习

独立标准正态 $X_i$：$E(sum_i X_i^2)=n$；$"Var"(sum_i a_i X_i)=sum_i a_i^2$。

若 $n times n$ 矩阵 $A$ 的各项独立标准正态，则 $E(det(A))=0$，$E("tr"(A))=0$，$E("tr"(A^2))=n$。最后一式展开为 $sum_(i,j) E(A_(i j)A_(j i))$，只有 $i=j$ 项贡献 1。

= 课堂推导展开：二维高斯归一化与条件密度

*课件第 16—21 页。* 置 $a=(x-mu_1)/sigma_1$、$b=(y-mu_2)/sigma_2$，配方后再定义
$ u=(a-rho b)/sqrt(1-rho^2), quad v=b. $
此时
$ (a^2-2rho a b+b^2)/(1-rho^2)=u^2+v^2, $
$ abs(det(partial(u,v)/partial(x,y)))=1/(sigma_1 sigma_2 sqrt(1-rho^2)). $
因此 $dif x dif y=sigma_1 sigma_2 sqrt(1-rho^2)dif u dif v$，与密度前面的对应因子抵消：
$ integral.double_(RR^2) f(x,y) dif x dif y
 =integral_(-oo)^oo e^(-u^2/2)/sqrt(2pi) dif u
  integral_(-oo)^oo e^(-v^2/2)/sqrt(2pi) dif v=1. $

求 $X$ 的边际时，固定 $x$，对 $y$ 使用交换坐标后的配方：
$ a^2-2rho a b+b^2=(b-rho a)^2+(1-rho^2)a^2. $
对含 $b$ 的正态因子积分为 1，剩下 $e^(-a^2/2)/(sqrt(2pi)sigma_1)$，故 $X~N(mu_1,sigma_1^2)$。

求 $X|Y=y$，用联合密度除以 $Y$ 的边际密度。$b^2/2$ 的项相消，得到
$ f_(X|Y)(x|y)=1/(sqrt(2pi)sigma_1 sqrt(1-rho^2))
 exp(-((x-mu_1)-rho sigma_1/sigma_2 (y-mu_2))^2/(2sigma_1^2(1-rho^2))). $
由密度读出条件均值与方差，而不是只背结果。给定 $Y$ 后剩余方差的比例为 $1-rho^2$。

== 协方差积分的化简（课件第 32—33 页）

用上述 $u,v$，有
$ y-mu_2=sigma_2 v, quad x-mu_1=sigma_1(sqrt(1-rho^2)u+rho v). $
所以
$ "Cov"(X,Y)=sigma_1 sigma_2 E(sqrt(1-rho^2)U V+rho V^2). $
$U,V$ 为独立标准正态，$E(U V)=0,E(V^2)=1$，故协方差为 $rho sigma_1 sigma_2$。这里的 $rho$ 才被验证为相关系数；它并非仅凭密度中参数名称得到。

= 课堂例题展开：向量与随机矩阵的矩

== 高斯向量的模长（课件第 25 页）

设 $X=(X_1,dots,X_n)$，每个 $X_i~N(0,1)$，$Y=norm(X)$。题目只要求每个边际标准正态：
$ E(Y^2)=E(sum_(i=1)^n X_i^2)=sum_(i=1)^n E(X_i^2)=n. $
线性性已经足够。若进一步要求 $Y^2$ 的卡方分布，才需各坐标相互独立。

== 固定方向上的投影（课件第 26、42、56 页）

若各 $X_i$ 独立，$Y=sum_i a_i X_i$，则
$ E(Y)=sum_i a_i E(X_i)=0, $
$ "Var"(Y)=sum_i a_i^2 "Var"(X_i)=sum_i a_i^2=norm(a)^2. $
独立高斯的线性组合仍为高斯，故 $Y~N(0,norm(a)^2)$。取 $a_i=1/n$ 得样本均值方差 $1/n$；取单位向量得任意单位方向投影均为 $N(0,1)$。

== 独立标准正态矩阵（课件第 27 页）

设 $A$ 为 $n times n$ 矩阵，各元素独立标准正态。

行列式展开为 $det(A)=sum_(sigma in S_n) "sgn"(sigma) product_i A_(i,sigma(i))$。每个排列选出不同位置的 $n$ 个独立元素，乘积期望是各零均值之积，因此 $E(det(A))=0$。

迹为 $"tr"(A)=sum_i A_(i i)$，直接有 $E("tr"(A))=0$。

$"tr"(A^2)$ 要先按矩阵乘法展开：
$ "tr"(A^2)=sum_i sum_j A_(i j)A_(j i). $
$i!=j$ 时两个元素独立且均值为零，贡献 0；$i=j$ 时为 $A_(i i)^2$，期望为 1。共 $n$ 个对角项，所以结果为 $n$。

= 课堂推导展开：矩阵形式与线性变换

== 二维协方差矩阵的逆（课件第 53 页）

$ B=mat(sigma_1^2,rho sigma_1 sigma_2;rho sigma_1 sigma_2,sigma_2^2), $
$ B^(-1)=1/(1-rho^2)mat(1/sigma_1^2,-rho/(sigma_1 sigma_2);-rho/(sigma_1 sigma_2),1/sigma_2^2). $
将向量 $x-mu$ 左右乘入后，二次型展开恰为二维密度指数中的三个项。行列式平方根 $sigma_1 sigma_2 sqrt(1-rho^2)$ 也与二维归一化系数一致。

== 可逆变换的密度证明（课件第 55 页）

对 $Y=A X+b$，反变换 $x=A^(-1)(y-b)$，雅可比绝对值为 $1/abs(det(A))$。又有
$ (A B A^T)^(-1)=(A^(-1))^T B^(-1) A^(-1), $
$ det(A B A^T)=det(A)^2 det(B). $
分别代入指数与系数，得到 $Y~N(A mu+b,A B A^T)$。这解释了为什么协方差左右分别乘 $A$ 与 $A^T$。

取只有第 $i$ 个位置为 1 的行向量，得到 $X_i~N(mu_i,B_(i i))$；选择多行得到子向量的边际高斯。取 $A=(1,1)$，得到课件第 56 页的和：
$ X+Y~N(mu_1+mu_2,sigma_1^2+sigma_2^2+2rho sigma_1 sigma_2). $
两个均值相加、两个方差相加之外，相关项也要保留。

== 白化与椭球（课件第 57—59 页）

写 $B=Q Lambda Q^T$，取 $B^(1/2)=Q Lambda^(1/2)Q^T$。对于标准高斯 $Z$，$X=mu+B^(1/2)Z$ 的均值为 $mu$，协方差为 $B$；反向变换 $B^(-1/2)(X-mu)$ 得标准高斯。

等密度面满足 $(x-mu)^T B^(-1)(x-mu)=c$。令 $z=Q^T(x-mu)$，就成为 $sum_i z_i^2/lambda_i=c$：第 $i$ 个半轴为 $sqrt(c lambda_i)$，方向为第 $i$ 个特征向量。体积相对半径 $sqrt(c)$ 的球扩大 $product_i sqrt(lambda_i)=sqrt(det(B))$ 倍，密度系数同时缩小这个倍数。

= 补充例：协方差矩阵怎样决定椭圆

取均值零、$Sigma=mat(4,2;2,4)$。特征方向为 $(1,1)/sqrt(2)$、$(1,-1)/sqrt(2)$，特征值分别为 6、2。等密度椭圆 $x^T Sigma^(-1)x=1$ 的半轴分别长 $sqrt(6)$、$sqrt(2)$，长轴沿两坐标同时增加的方向。

令 $U=(X+Y)/sqrt(2)$、$V=(X-Y)/sqrt(2)$，则 Var(U)=6、Var(V)=2、Cov(U,V)=0；由于联合正态，U、V 独立。再分别除以 $sqrt(6)$、$sqrt(2)$ 即完成白化。旋转消掉协方差，缩放统一方差，两个步骤各有作用。

== 补充例：正态边际且不相关，仍可能不独立

令 Z 为标准正态，S 为与 Z 独立的等可能 ±1 符号，取 X=Z、Y=SZ。Y 因对称性仍为标准正态，而 $E(X Y)=E(S)E(Z^2)=0$。可是 $abs(X)=abs(Y)$ 恒成立，二者不独立。

联合分布集中在两条对角线上，不是二维联合正态。因此“正态情形零相关等价于独立”中的条件是*联合正态*，不能删成“每个边际正态”。

== 补充例：退化高斯没有平面密度

令 X=(Z,2Z)，协方差为 $mat(1,2;2,4)$，行列式零。所有取值都在线 y=2x 上，该直线平面面积零，却承载总概率 1，因而不能有普通二维密度。任意线性组合 $a_1X_1+a_2X_2=(a_1+2a_2)Z$ 仍为正态或常数，所以它仍属于高斯向量，只是不能使用含逆矩阵和行列式分母的非退化密度公式。
