#let doc-title = "第四章 Lesson10"
#let doc-subtitle = "SEQ:Sequential Implementation"
#let doc-meta = "笔记整理自 2026 年 10 月 19 日课程"
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
  #text(size: 24pt, weight: "bold")[#doc-title]\
  #text(size: 24pt)[#doc-subtitle]
  #v(5pt)
  #text(size: 16pt)[#emph[#doc-meta]]
]
本节课讨论：具体语义是如何和机器实现结合在一起的？


硬件电路中的存储体现状态：如何保存？

= 如何实现状态的保存？

什么是状态？

图灵机为例，是哪支笔吗？否，是纸带上信息。

相当于所有reg， 状态寄存器csr, memory构成了一个集合，经过一个函数之后仍然是这三元集合。

$
f_i ("Reg, Memory, CSR") -> ("Reg', Memory', CSR'")
$

两条指令之间需要加一个东西来阻挡，使得状态之间的切换有明确界限。
在软件实现的时候，天然的函数就是边界，但是在硬件的实现的话，需要明确这个边界。

有了这个clock才能实现状态的保存。

= HCL 与 SEQ 的六个阶段

来源：ICS10，2026 年 10 月 19 日，51 页。
HCL 描述组合逻辑：`bool` 表示布尔值，`int` 表示字级值。选择表达式自上而下取第一个条件为真的分支，表示多路选择器。

SEQ 在一个周期中完成一条指令：取指 F、译码 D、执行 E、访存 M、写回 W、更新 PC。阶段是同一条组合数据通路中的逻辑划分。

#table(columns: (0.7fr, 2.5fr),
  [阶段], [主要信号和运算],
  [F], [取 `icode/ifun`、可选寄存器字节、立即数 `valC`；求下一条顺序地址 `valP`],
  [D], [选 `srcA/srcB`，读取 `valA/valB`，确定 `dstE/dstM`],
  [E], [ALU 求 `valE`；计算条件 `Cnd`；`OPq` 更新条件码],
  [M], [选择访存地址和写入数据；读结果为 `valM`],
  [W], [向 `dstE` 写 `valE`，向 `dstM` 写 `valM`],
  [PC], [在 `valP`、`valC`、`valM` 之间选择],
)

指令长度为 $1 + r + 8c$：$r$ 表示是否有寄存器字节，$c$ 表示是否有常数字段。`jXX/call` 为 9 字节，`irmovq/rmmovq/mrmovq` 为 10 字节。

#align(center)[#image("/assets/image.png", width: 80%)]

= 各类指令的数据通路

== 算术、传送与有效地址

`OPq rA,rB`：`valA=R[rA]`，`valB=R[rB]`，`valE=valB OP valA`，写回 `rB`。减法计算 `rB-rA`。

`irmovq`：`valE=0+valC`；`rrmovq`：`valE=0+valA`。`cmovXX` 条件不成立时把 `dstE` 设为 `RNONE=0xF`，从而取消写回。

`rmmovq rA,D(rB)`：`valE=R[rB]+D`，将 `R[rA]` 写到 `M8[valE]`。
`mrmovq D(rB),rA`：以相同方式求地址，读出 `valM`，通过 M 写端口写入 `rA`。

== 栈与调用

#table(columns: (0.8fr, 1.2fr, 1.6fr, 1.4fr),
  [指令], [`valE`], [内存动作], [PC 与写回],
  [`pushq rA`], [`R[rsp]-8`], [`M8[valE]=valA`], [`rsp=valE; PC=valP`],
  [`popq rA`], [`R[rsp]+8`], [`valM=M8[valA]`], [`rsp=valE; rA=valM`],
  [`call Dest`], [`R[rsp]-8`], [`M8[valE]=valP`], [`rsp=valE; PC=valC`],
  [`ret`], [`R[rsp]+8`], [`valM=M8[valA]`], [`rsp=valE; PC=valM`],
)

`popq/ret` 从旧栈顶读内存，`pushq/call` 向新栈顶写内存。`popq %rsp` 的两个写目的地相同，内存读出的值取得最终优先级。

= 控制逻辑的选择依据

`srcA`：寄存器传送、存储、运算、压栈取 `rA`；弹栈和返回取 `%rsp`。
`srcB`：运算与内存寻址取 `rB`；栈操作、调用和返回取 `%rsp`。
`dstM` 只在装载与弹栈时取 `rA`。

ALU 的 A 输入分别选 `valA`、`valC`、-8 或 8；B 输入选 `valB` 或 0。只有 `OPq` 使用 `ifun` 指定的运算，其余需要 ALU 的指令做加法。

访存地址：装载、存储、压栈、调用选 `valE`；弹栈、返回选 `valA`。存储数据：`call` 选 `valP`，其他写内存指令选 `valA`。

PC 选择优先按指令语义表达：`call` 取 `valC`；成功跳转取 `valC`；`ret` 取 `valM`；其余取 `valP`。

状态码按课件顺序：地址错误 ADR、非法指令 INS、停机 HLT、正常 AOK。

= 时钟与关键路径

周期内组合电路依次传播，时钟边沿更新 PC、寄存器、条件码与存储状态。单周期必须足够长，使取指、读寄存器、ALU、数据存储器等最长路径完成。

SEQ 的 CPI 为 1，但时钟周期长，且各功能单元只在周期的一部分时间工作。流水线通过在阶段间加入寄存器，让不同指令同时使用不同阶段。

= 手工跟踪

若 `%rsp=0x100`，执行 `call 0x200`，当前 PC 为 `0x20`：`valP=0x29`，`valE=0xf8`，`M8[0xf8]=0x29`，新 `%rsp=0xf8`，新 PC 为 `0x200`。随后 `ret` 读取 `0x29`，恢复 `%rsp=0x100` 并返回 `0x29`。
