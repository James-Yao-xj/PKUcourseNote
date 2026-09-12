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
  #text(size: 24pt, weight: "bold")[信息学中的概率统计 第一讲]\
  #v(10pt)
  #text(size: 16pt)[_2026年9月11日 笔记_]
]

= 课程介绍

教师：王若松 ruosongwang\@pku.edu.cn

Head TA: 王楷斐 wkf5094\@stu.pku.edu.cn

考核方式：

*原始分* = 作业 $times 30 % +$ 期中考试 $times 35 % +$ 期末考试 $times 35 %$，*最终分* = 原始分 $times 70 % +$ 平时表现 $times 30 %$

期中考试时间：第九周周五（涉及前八周的内容）

期末考试：全部内容，以后半学期内容为主。后半学期内容依赖前半学期内容。

期末考试时间： 2027年1月3日上午

*作业*

+ 共九次，第零次作业不提交，第八次占比2%，其余占比4%。我们今年呢？大概率是不会再有附加题了。为什么？是因为附加题会比
+ 作业得分仅取决于完成情况，不取决于正确性。

*什么情况会挂科？*

如果每次作业完成，那么就不会挂科。会有大量题目与作业相似。

== 课程大纲

=== 概率部分
- 概率论的基本概念
- 随机变量及其分布
- 多维随机变量及其分布（预估：midterm）
- 尾不等式、大数定理与中心极限定理

=== 统计部分
- 参数估计
- 回归分析
- 假设检验

*课程特色： 概率不等式（上下界）、信息科学中的应用*

辅助书目：《概率论与数理统计》（连续部分）_Intriduction to Probability for computing_

*为什么要学习概率统计*
- 机器学习：stochastic Gradient Descent, Diffusion Probabilistic Model
- 博弈论：Mixed Strategy
- 图形学：Stochastic Progressive Photon Mapping


= 概率论的基本概念

- 随机事件和样本空间
- 概率和频率、古典概率模型与几何概率模型
- 概率的公理化
- 条件概率
- 事件的独立性

== 随机时间和样本空间

=== 随机现象：在一定条件下并不一定是出现相同的结果的现象
- 投掷硬币的结果，投骰子的结果
- CPU的寿命、测量物理量的误差
- 比赛的输赢、经济的增长速度

=== 确定性现象：只有一个结果

=== 随机实验：在相同条件下可以重复的随机现象

=== 样本空间：随机现象的一切可能基本结果组成的集合
举例：
- 投硬币：正面向上或者反面向上。
- 测量结果： $S = RR$

样本空间中的元素是*样本点*

思考：使用随机数生成器的计算机程序的样本空间。

=== 随机事件：样本空间的子集，样本点的集合

统一记号：一般使用$S$代表样本空间，事件采用大写字母。

=== 基本事件：仅仅包含单个样本点的事件
=== 必然事件：样本空间本身
=== 不可能事件：空集（不包含任何一个样本点）

*事件的关系：包含、相等、互不相容*


=== 事件的运算

事件的并：A和B至少一个发生，$A union B$

事件的交： A和B同时发生，$A inter B, "also" A B$

事件的差：A发生而B不发生，$A inter overline(B)$

交换律：$A union B = B union A, A B = B A$

结合律：$(A union B) union C = A union (B union C), (A B) C = A (B C)$

分配律：$A union (B C) = (A union B) (A union C), A (B union C) = (A B) union (A C)$

De Morgan定律：$overline(A union B) = overline(A) overline(B), overline(A B) = overline(A) union overline(B)$

==  概率和频率

- 频率:在$n$次试验中事件反生的比例：$f_n(A) = (n_A) / n$
其中，$n_A$表示在$n$次试验中事件$A$发生的次数。

- 频率的性质：
  - 非负性：$f_n(A) in [0, 1]$
  - 规范性：$f_n(S) = 1, f_n(emptyset) = 0$
  - 有限可加性：如果$A$和$B$是互不相容的事件，则$f_n(A union B) = f_n(A) + f_n(B)$
  - 单调性：如果$A subset.eq B$，则$f_n(A) <= f_n(B)$
*频率$f_n (A)$随着$n$的增大而趋于稳定，也就是时间$A$发生的概率。*
（但是这是一个极其模糊的定义方式，在数学上无法说清楚）

== 古典概率模型

- 有限性：样本点个数有限
- 等可能性：每个样本点概率相等
- 事件的概率$P(A) = abs(A) / abs(S)$

*描述的是在离散的情况下，均匀分布的模型*

*球与桶模型*：有$n$个球，每个球都等可能被放到$m$个桶中，求每个桶中至多有一个球的概率。

样本点数量：$m^n$

方法：$m(m - 1)(m - 2)...(m - n + 1)$

- 哈希表：当哈希函数足够均匀，每个元素可被视为放进一个随机的桶中。
- 哈希表没有冲突的概率：$P_(n,m) = (1 - 1 / m) (1 - 2 / m) ... (1 - (n - 1) / m)$

一些数学技巧：

$
ln(P_(n,m)) = sum_(i=0)^(n-1) ln(1 - i / m) <= sum_(i=0)^(n-1) (-i / m) = - (n(n - 1)) / (2m) = - ((n - 1) n) / (2 m) \

P_(n,m) <= exp(- ((n - 1) n )/ (2 m))
$
*作业*

证明：
$
  P_(n, m) <= exp(- ((n - 1) n) / (2 m)) dot (1 - O(n^3 / m ^ 2))
$

应用：生日悖论。

== 几何概率模型

- 样本空间空间$S$充满某个空间，度量用$m(S)$表示。

- 事件$A$对应空间中的一个区域，概率为$P(A) = m(A) / m(S)$

举例：在$[-1, 1]times [-1, 1]$中等概率选取一个点，落在单位圆中的概率？

解析：

样本空间：$S = [-1, 1]times [-1, 1]$

$P(A) = pi / 4$

Monte Carlo方法：利用随机数进行数值计算。

应用：图形学渲染





