#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[Introduction to Computer System]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[第一章\ 计算机系统漫游]\
  #v(10pt)
  #text(size: 16pt)[_笔记整理自2026年9月7日课程_]
]

= 课程介绍（15年历史）
改革：卡耐基梅隆大学计算机科学学院创立

（课件简介，与CMU同源）

教材：《深入理解计算机系统》Computer Systems A programmer's Perspective 

编程和运行程序的时候计算机底层是是怎么支持的。（CS专业必须对系统有了解）

小班教学的启动（研讨型小班教学）

*重视动手实践，手搓代码*

- 最前沿的AI系统，除了数据和算法本身，很大程度上比拼的是infrastructure的可扩展性和效率。
- 把一个点做到极致需要知道硬件。
- 把所有高性能的单点连接起来，更需要理解完整的系统。

*时间节点*

_阶段测验：10月12日、11月16日_

_LAB测验：12月24日_

_期末考试：12月28日_

实验题系统（学生在指定系统上完成实验内容）

*课程关注的问题：*
- 计算机抽象概念与实际计算机系统之间的差异。
- 计算机抽象概念在实际计算机系统上的实现方式。

*涵盖计算机系统从上到下的多个层次，包括：*
- 机器语言及其如何通过编译器优化生成
- 程序性能评估和优化
- 存储结构组织和管理
- 网络技术和协议
- 并行计算的相关知识

*LAB的代码必须自己完成*

= 成绩构成

- 期末考试：30分；
- 阶段测试1:10分；
- 阶段测试2:10分；
- LAB实验题和LAB测验：30分；
  - LAB测验hui占较大比重。
- 小班评分：15分；（含有研讨表现和平时作业）
- 大班评分：5分。
  - 在每次测验获得85+的将不会被扣除这部分分数。