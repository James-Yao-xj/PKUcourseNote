#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [#text(10pt, black)[#align(center)[课件与笔记对应]] #line(length: 100%, stroke: gray)],
  footer: context [#align(center)[#counter(page).display("1")]],
)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[课件与笔记对应表]
]

以下课件名称相对于 `CourseMaterials` 中的相应课程目录；笔记路径相对于本学期各课程目录。重复版本归并到同一篇笔记。

= 计算机系统导论

*ICS01-overview-20260907.pdf*

Chapter1\_Introduction/Lesson1.typ（含五个系统例子）

*ICS02-bits-bytes-ints-20260910.pdf*

Chapter1\_Introduction/Lesson2.typ

*ICS03-float-20260914.pdf*

Chapter1\_Introduction/Lesson3.typ；LabGuide.typ

*ICS04-machine-basics-20260917(2).pdf*

Chapter3/Lesson4/Lesson4.typ

*ICS05-machine-control-20260921(1).pdf*

Chapter3/Lesson5.typ

*ICS06-machine-procedures-20260924.pdf*

Chapter3/Lesson6/Lesson6.typ

*ICS07-machine-data-20260928.pdf*

Chapter3/Lesson7.typ

*ICS08-machine-advanced-20261008.pdf*

Chapter3/Lesson8.typ

*ICS09-Processor Arch-ISA&Logic-20261015.pdf*

Chapter4/Lesson9.typ

*ICS10-Processor Arch-Sequential-20261019.pdf*

Chapter4/Lesson10.typ

*ICS11-Processor Arch-Pipelined-20261022(1).pdf*

Chapter4/Lesson11.typ

*datalab.pdf；datalab.dvi.pdf；datalab-handout 的中英文说明*

LabGuide.typ 的 Data Lab 与浮点部分

*bomb406/bomblab.pdf*

Chapter3/BombLab.typ；LabGuide.typ

*attacklab.pdf*

Chapter3/Lesson8.typ；LabGuide.typ

*ReviewFloat 与 ReviewFloat\_revised 的 PDF、Typst、讲稿*

LabGuide.typ；Chapter1\_Introduction/Lesson3.typ

= 数据结构与算法

*DSA\_CH01\_Overview\_ADT\_Complexity.pptx；202609\_DSA\_ADT\_Floyd\_Complexity(1).pdf*

Lesson1\_IntroAndFloyd/Lesson1.typ；Lesson3/Lesson3.typ

*202609\_DSA\_02\_Linear\_List.pptx；DSA\_CH02\_Linear\_List.pdf*

Lesson2/Lesson2.typ；Lesson3/Lesson3.typ

*202609\_DSA\_03\_Stack\_Queue.pptx*

Lesson3/Lesson3.typ

*202609\_DSA\_04\_String.pptx 与同名 Markdown*

Lesson4/Lesson4.typ

*2026-10-09-KMP-nextval-比较次数模拟.pdf*

Lesson4/Lesson4.typ 的 next 与比较次数例题

*202609\_DSA\_05\_Binary\_Tree.pptx 与同名 Markdown*

Lesson5/Lesson5.typ

*202609\_DSA\_06\_Tree(1).pptx 与对应 Markdown*

Lesson6/Lesson6.typ

*202609\_DSA\_MOOC\_Quiz\_CH03-04.pptx*

Lesson3/Lesson3.typ 的课堂测验；Lesson4/Lesson4.typ

*2026 年 10 月 28 日新增《图》课堂笔记*

graph/graph.typ：十字链表、BFS 与 DFS 拓扑排序、Dijkstra 及最短路径问题；原图保存在 graph/assets 中。

*202609\_ADS\_W02\_VM\_Shell\_DevEnv.pptx*

DevEnvironment.typ

*翘掉的课目录中的概论、线性表、栈队列材料*

与课件目录相同的章节，归并到 Lesson1、Lesson2、Lesson3

*2022DS期中考试.pdf；2024DS期中考试-parts.md；两次作业说明*

对应章节的定义、遍历、代码题与复杂度；保留原题文件

= 离散数学基础

*0910\_PartI.pdf；第一部分.pdf*

Lesson1.typ 与 Lesson2.typ：集合、运算和容斥

*0910\_PartII.pdf.pdf；0915.pdf*

Lesson3.typ 与 Lesson4.typ：关系、闭包、等价与偏序

*2026.09.24.pdf*

Lesson5.typ：函数、复合、等势、基数与渐进阶

*初等数论.pdf*

NumberTheory.typ

*HW1.pdf、HW2.pdf 及已提交作业*

相关讲次中的集合、关系和证明方法；保留原作业

= 信息学中的概率统计

*2026.09.11(1).pptx；2026.09.16\_PartI.pptx*

Lesson1.typ、Lesson2.typ、Lesson3.typ 的基本概念、条件概率与独立性

*2026.09.18.pptx；2026.09.30.pptx*

Lesson3.typ、Lesson5.typ 的离散变量、期望方差与离散分布

*2026.10.09.pptx*

Lesson6.typ 的连续变量和单变量变换

*2026.10.14.pptx；2026.10.23\_PartI.pptx*

Lesson7.typ 的多维离散分布、协方差、条件期望与卷积

*2026.10.23\_PartII.pptx，第 1 至 49 页*

Lesson8.typ：联合连续分布、相关系数、卷积与二维变换

*2026.10.23\_PartII.pptx，第 16 至 21、32 至 38、50 至 59 页*

Lesson9.typ：二维及多维高斯、协方差矩阵与几何

*作业零、一、二及扫描解答*

相关章节的概率模型和例题；保留题目与扫描解答

= 经济学原理

*第1章 经济学的思维方式.pdf（文件名含特殊空格）*

Lesson1.typ

*既有第二讲课堂记录*

Lesson2.typ；保持原蓝色标题、定义框与插图

*第3章 交换、分工与货币(1).pptx*

Lesson3.typ；原 figures/Lesson3.typ 保留入口

*2026\_经原第1次作业 (3)(2).pdf*

Lesson4.typ 的需求、弹性、消费选择与对偶专题，衔接 Lesson2、Lesson3

*第5章 生产与供给曲线.pptx*

Lesson5.typ

*第6章 供求与市场均衡.pdf*

Lesson6.typ

*2026秋\_经原第1次习题课讲义 (5).pdf*

Optimization.typ

*2026课程大纲.docx*

用于确认课程结构；章节内容仍按实际课件组织

= 集合论与图论

*已有 Lesson2、Lesson3、Lesson4、Lesson9、Lesson10 课堂记录*

原文件内修订补充：集合极限、关系、链反链、良序、自然数递归

*手写扫描笔记《集图笔记(1)》，共 19 页*

第 2—3 页 → Lesson1.typ（集合基础）；第 3—5 页 → Lesson2.typ（集合极限、特征函数）；第 6—11 页 → Lesson3.typ、Lesson4.typ（关系运算、幂、矩阵与性质）；第 12—14 页 → RelationClosure.typ（关系闭包）；第 14—15 页 → EquivalenceAndOrder.typ（等价、划分、Stirling 数与偏序）；第 16 页 → Functions.typ（函数）；第 18 页 → Lesson10.typ（自然数与 Peano 系统）。第 1 页为封面，第 17、19 页为空白。

关系复合依手写稿采用先作用右侧的约定；矩阵公式同步按行表示输入、列表示输出整理。

= 教材与参考资料

目录中的《深入理解计算机系统》笔记版、两份《数据结构与算法》教材、离散数学教材与习题解析、`lecture_notes.pdf` 作为教材和参考笔记保存。课程正文按现有授课课件的章节展开，参考书的后续章节不计作已上传的当次授课课件。

= 本次主要勘误

- 集合例子中 `d` 的隶属关系；集合并的下极限原等式；有序多元组编码；关系复合次序；自然数构造中的真类问题。
- 概率 10 月 23 日 Part II 第 5 页的概率 4/5 改为 3/5，第 31 页的二阶矩 7/8 改为 7/18。
- 生产课件要素组合例中，成本 8.9 对应资本 4.5；字符串课件中未初始化局部字符数组不能当作空串。

= 课堂例题详细展开索引

本轮修订把课堂例题展开为题目条件、数据或图、计算过程及结果。各讲正文沿用原来的字体、页眉页脚和标题样式；原有详细推导继续保留。原始图示与逐步计算对照阅读，图注标出课件页码。

== 数据结构与算法

- Lesson1：五位经纪人的原始有向边、最终距离矩阵、最优起点，以及删边后仍可达的替代路径。
- Lesson3：顺序表与链表运行、两种扩容的搬运次数、六道链表应用、循环队列绕回的逐步状态、三组表达式及求值、递归深度实测与显式栈阶段。
- Lesson4：两组字符串匹配原题、每趟比较次数、普通 next 与优化 next 的区别、完整 KMP 回退及课堂测验解析。
- Lesson5：二叉树遍历与还原、BST 删除、堆插入删除和建堆数组、动态中位数、多组 Huffman 权值及编码表。
- Lesson6：一般树构建、森林转换、十五次并查集合并、三种顺序编码还原与课后练习。
- DevEnvironment：Shell 原命令及含义、权限 754、重定向与管道、虚拟环境、Python 列表和字符串的实际输出、两道语法题。

== 计算机系统导论

- 第一至三讲：溢出、别名、缓存等五组系统例子；位操作与类型转换表；浮点编码、舍入表和全部表达式判断。
- 第四至六讲：sumstore、swap、寻址表、算术函数；标志位、absdiff、条件传送、三种循环与 switch 跳转表；call/ret、跨调用保存与递归栈。
- 第七至八讲：pgh、univ 地址逐项读取，结构体偏移对齐，浮点传参与比较，联合体字节解释，echo 栈帧与返回地址覆盖，gadget 译码。
- 第九至十一讲：Y86 指令编码、数组求和程序、逻辑选择；SEQ 各阶段及 HCL 信号；流水线分段性能、转发、装载使用、分支和返回的逐周期示例。
- LabGuide：两份浮点讨论课的全部数值例、Data Lab 十六题及边界、fshow 三个原例、Attack Lab 各阶段和本地讲义的 starget 扩展。BombLab 原有逐阶段长篇分析保留。

== 离散数学基础

- Lesson1—2：嵌套集合的隶属、幂集与集族，三门语言调查，1 至 1000 中整除条件的完整容斥，错排。
- Lesson3—4：点对、矩阵与关系幂，三张性质判断图，运算保持性的见证与反例，闭包和 Warshall，同余类、全部等价关系、划分判断、Hasse 图、任务调度与线性扩展。
- Lesson5：函数与原像，五种单满射判断，构造双射、数满射，分段复合，可数性，全部增长率排序。
- NumberTheory：素分解、阶乘因子、试除与筛法、辗转相除和系数回代、模运算表、末位、星期、线性同余、逆元和欧拉定理。

== 信息学中的概率统计

- 第一至三讲：硬币样本点、球桶和生日数值、圆内取点；排列容斥、概率存在性、两个孩子、三盒、零件、抽奖、全概率与检测、保险；随机图共享边、空桶、独立性反例、轮流射击。
- 原有离散和单变量连续分布章节保留逐项积分、矩、分布变换及例题；多维离散章节补充负二项和的完整卷积。
- Lesson8：联合分布矩形条件、指数联合密度、三角支持域、条件圆截面、服务器寿命、均匀点距离、随机区间、各阶矩和相关系数、正态及 Gamma 卷积、极值和二维变换。
- Lesson9：二维高斯标准化、条件密度和协方差、矩阵乘法原例、线性变换、白化与椭球轴长。

== 经济学原理

- Lesson1、Lesson3：课件历史与预测案例、二十五项偏好表及两人与三人交换、交换盒、别针工厂、比较优势和货币交换链。
- Lesson4：第一次作业的数值与应用题按题号合并展开，含离散需求、预算、税收、对偶、纯交换均衡、比较优势、消费者剩余与弹性、市场需求和价格指数。
- Lesson5：玉米大豆完整表、化肥产量与利润表、九种技术成本、等产量与等成本切点、长短期曲线。
- Lesson6：拍卖和股票成交顺序、限价缺口、猪肉从量税、从价税口径、福利面积、价格信号与非价格配置案例。
- Optimization：xy 的拟凹性、圆约束乘子、KKT 分支、罚函数和障碍法路径、光滑近似界、CES 消费者的完整条件和数值。

== 集合论与图论

十九页手写稿中的定义、命题、证明已对应编入各篇。本轮进一步把第 12 页原闭包例写成全部点对及三张矩阵，展开第 15 页 Stirling 递推的分类，代入第 16 页有限全函数与偏函数计数；链反链定理补充同一偏序上两种分解的计算例。补充计算例与原稿内容在文中分别标明。

== 进一步勘误

- 经纪人图删去 B3→B2 后，B3→B5→B2 仍可达，距离仍为 7。
- 九种生产技术中工资 0.8 时第八种成本应为 7.9；二叉树课件的不同 Huffman 题使用不同权值，分别计算。
- Min3 的严格不等号选择遗漏相等情形；补入相等条件后保持最小值语义。
- 浮点讨论课修订稿的乘法先保留完整尾数再舍入，最终还需保留指数；Data Lab 的 bitXor 上限按本地题包与 PDF 分别注明。
