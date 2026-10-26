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

= 教材与参考资料

目录中的《深入理解计算机系统》笔记版、两份《数据结构与算法》教材、离散数学教材与习题解析、`lecture_notes.pdf` 作为教材和参考笔记保存。课程正文按现有授课课件的章节展开，参考书的后续章节不计作已上传的当次授课课件。

= 本次主要勘误

- 集合例子中 `d` 的隶属关系；集合并的下极限原等式；有序多元组编码；关系复合次序；自然数构造中的真类问题。
- 概率 10 月 23 日 Part II 第 5 页的概率 4/5 改为 3/5，第 31 页的二阶矩 7/8 改为 7/18。
- 生产课件要素组合例中，成本 8.9 对应资本 4.5；字符串课件中未初始化局部字符数组不能当作空串。
