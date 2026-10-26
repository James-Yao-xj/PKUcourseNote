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
