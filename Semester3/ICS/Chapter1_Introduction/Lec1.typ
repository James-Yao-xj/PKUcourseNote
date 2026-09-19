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
  #text(size: 24pt, weight: "bold")[ICS小班课笔记\ 第一讲]\

  #text(size: 16pt)[_笔记整理自2026年9月16日课程_]
]
= 基本情况

邮箱：2400013111\@stu.pku.edu.cn

认真阅读教材

往年题拟合

回课：分配同学回顾课上内容。

作业：发到邮箱（14天内）或者面对面提交。

- 关于小班课成绩：
  - 不能迟到、旷课。
  - 不迟交漏交作业。 

= 学到什么？
*Chap2. 信息的表示和处理*
- 数据如何储存？
- 整数实数的表示
- 整数运算的细节
- 这一章数学性比较强，需要掌握一些位运算的技巧
- 记住特例
- datalab

*Chap3. 程序的机器级表示*
- C语言程序到可读机器语言的映射
- 了解汇编语言
- 如何使用汇编语言实现控制结构
- 数据的组织
- 内存安全性
- BombLab AttackLab

*Chap4. 处理器体系结构*

- 指令是如何在电路和元件中被执行的
- 提高处理器性能的流水线技术
- ArchLab

*Chap6. 存储器层次结构*

- 磁盘、内存、缓存、寄存器
- 存储器层次结构对性能的影响
- 缓存的相关概念和设计原则

*Chap5. 优化程序性能*
- 编译器的特点来优化程序性能
- 循环展开，提高程序的并行性
- CacheLab

*Chap7. 链接*
- 代码到可执行文件经历了怎样的过程
- printf这种库函数的调用过程

*Chap8. 异常控制流*
- 在你的计算机上如何同时运行多个应用程序
- 异常、进程等概念
- 习用如何在多个控制流之间切换
- 信号机制
- ShellLab

*Chap9. 虚拟内存*
- 不同程序访问同样的地址时是否会冲突
- 虚拟内存和物理内存之间的映射关系

*Chap10. 系统级I/O*
- 文件的概念
- 程序如何操作和管理文件

*Chap11. 网络编程*
- ProxyLab
  

*Chap12. 并行编程*  

= 复习

大小端法仅仅针对于数字而言。

两个概念：最低有效字节、小地址。

举例：

*位运算*
逻辑右移vs算术右移

整数类型不会影响二进制的表示。









