// GoodTypst · 阅读文稿模板（reading）
//
// 版式与样例 Lesson2.typ 完全一致：A4 单栏、纯黑白、ctyp 处理中英混排、
// 页眉一行灰线加居中课程名、页脚居中页码、一级标题自动编号。
//
// 只改下面 4 个变量，上面的样式不要动；正文怎么写见 prompts/reading.md。

#let doc-title = "实验与浮点讨论课"
#let doc-subtitle = "Data Lab · Bomb Lab · Attack Lab"
#let doc-meta = "2026 年 10 月 26 日整理"
#let doc-running-header = "Introduction to Computer Systems"

#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 1.7cm, bottom: 1.5cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[#doc-running-header]]
    #line(length: 100%, stroke: gray)
  ],
  footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[实验与浮点讨论课整理]
]

来源：Data Lab、Bomb Lab、Attack Lab 讲义和两份浮点讨论课材料。

= Data Lab：把数值条件化成位操作

整数题先写真值关系，再将其编码成掩码。`!!x` 把非零归一为 1；取负的全 1 掩码可用于选择。补码取负的位级表达是按位取反加 1。比较异号数时先由符号位决定，同号再分析差值。

位宽、允许的运算符和最大操作数以每题声明为准；整数题与浮点题的语法限制不同。`dlc` 检查合法性，`btest` 检查功能，二者各验证一部分要求。实验模型下的位操作推理与普通 C 中有符号溢出的语言规则需要区分。

= 浮点运算复习

IEEE 754 单精度划分为符号 1 位、阶码 8 位、尾数 23 位。规格化值为
$ (-1)^s (1+f)2^(E-127), $
非规格化值为 $(-1)^s f 2^(-126)$。全零阶码使用渐进下溢；全 1 阶码区分无穷与 NaN。

加法：对阶、尾数运算、规格化、舍入、检查范围。乘法：符号异或、阶码相加减偏置、尾数相乘、规格化与舍入。

向最近偶数舍入时，保留位最低位为 $b$，保护位 $g$、舍入位 $r$、粘滞位 $s$，进位条件为 $g and (r or s or b)$。恰好一半且保留结果最低位为偶数时不进位。

单精度能精确表示绝对值不超过 $2^24$ 的全部整数；此后相邻浮点间隔增大。浮点加法不满足结合律，例如先把极大正数与极大负数相加，再加小数，与先加小数再相消可能不同。

= Bomb Lab：从汇编还原输入约束

先确定输入解析函数读了几个字段，再按基本块追踪比较、跳转和循环。字符串阶段还原字符约束；数列阶段写递推；跳转表阶段列分支；递归阶段画参数变化；链表阶段区分结点值、结点位置和链接顺序。

动态调试以断点和单步验证推导：在爆炸函数入口设断点，在每个阶段入口记录参数，读取实际内存，再检查自己的约束是否覆盖所有分支。已有 `Chapter3/BombLab.typ` 保存本地炸弹的逐阶段分析。

= Attack Lab：按阶段理解状态变化

`ctarget` 部分围绕代码注入理解栈布局和参数传递；`rtarget` 部分围绕 ROP 理解已有指令片段的组合。讲义的阶段分别要求控制流到达目标函数、传递整数参数、传递字符串参数。

分析每条候选片段时记录：入口地址、寄存器改动、栈槽消耗、退出后的栈顶。整条链按调用约定把参数放到目标寄存器，再到达目标函数。字符串参数需要其地址指向仍保留内容的区域。

实验提交使用讲义指定的本地目标与评分工具；笔记中的分析重点是指令语义和程序状态。
