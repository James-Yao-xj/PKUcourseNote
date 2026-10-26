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

= 课堂逐条推演：六阶段信号如何对应指令

*ICS10 第 12—27 页。* 以下保留课件的 Fetch、Decode、Execute、Memory、Write back、PC update 六个逻辑步骤。SEQ 中它们在同一周期内依次完成，周期末共同更新状态。

== `OPq rA,rB`：ALU 操作（第 12—13 页）

取指读 1 字节 `icode:ifun` 与 1 字节 `rA:rB`，故 `valP=PC+2`。译码读 `valA=R[rA]`、`valB=R[rB]`；执行得到 `valE=valB OP valA`，并更新条件码；访存阶段无数据操作；写回 `R[rB]=valE`，PC 取 valP。

例如按上述步骤代入 `subq %rax,%rbx`，若 rax=3、rbx=10，则 valA=3、valB=10、valE=7，写回 rbx=7。减法的操作数顺序与汇编的源、目的顺序一致。

== `rmmovq rA,D(rB)`：写内存（第 14—15 页）

取指共 10 字节：操作码 1、寄存器 1、位移 8，`valC=D`、`valP=PC+10`。译码读待存值 valA 与基址 valB；ALU 计算 `valE=valB+valC`；访存执行 `M8[valE]=valA`；无寄存器写回，PC 顺序前进。

因此地址是 valE，写入的数据是 valA。将二者弄反，会把“存到哪个位置”与“存什么内容”对调。

== `popq rA`：两个写回目的（第 16—17 页）

取指 2 字节。译码阶段将旧 `%rsp` 同时读为 valA、valB；执行算 `valE=valB+8`；访存从旧栈顶 `M8[valA]` 读出 valM；写回 `%rsp=valE`、`rA=valM`。PC 前进 2。

例：旧 rsp=0x100，`M8[0x100]=0x37`，弹到 rax 后 rsp=0x108、rax=0x37。必须从旧地址读取，而不是从已经增加 8 的 valE 读取。

若 rA 本身为 rsp，两个写回端口都指向同一寄存器，内存结果的写回优先级决定最终 rsp；课件的体系结构语义最终保留弹出的值。

== `cmovXX rA,rB`：取消目的寄存器（第 18—19 页）

译码只需读 rA，ALU 以 `0+valA` 传递它。依据 CC 和 ifun 计算 Cnd；Cnd 为假时将 dstE 设为 RNONE（0xF），从而取消写回。这里无需在 ALU 数据路径上“恢复旧 rB”，只要让写使能不作用于真实寄存器。

== `jXX Dest`：两条候选 PC（第 20—21 页）

跳转指令 9 字节，valC 为目的地址，valP=PC+9 为顺序地址。执行阶段算 Cnd，最终 `PC=Cnd?valC:valP`。它不写通用寄存器，也不需要访问数据内存。

== `call Dest` 与 `ret`（第 22—25 页）

call 取指 9 字节，保存的返回地址为 valP=PC+9。读旧 rsp 到 valB，执行 `valE=valB-8`，把 valP 存到 `M8[valE]`，写回 rsp=valE，PC 改为 valC。

ret 取指 1 字节，旧 rsp 同时送 valA、valB；执行新 rsp=valB+8；从旧栈顶读取返回地址 valM；写回新 rsp，PC 取 valM。

例如根据课堂步骤设 PC=0x20、rsp=0x100、call 目标 0x80，则调用后 rsp=0xf8，`M8[0xf8]=0x29`、PC=0x80；返回时从 0xf8 读到 0x29，再使 rsp 回到 0x100。被压入的是调用后继地址，而不是 call 自己的地址。

= 课堂 HCL：按指令类别逐项选择

*第 32—45 页。* HCL 方括号从上到下选择第一条条件为真的分支，各项在同一周期作为组合逻辑求值。

```text
srcA = [
  icode in {IRRMOVQ,IRMMOVQ,IOPQ,IPUSHQ}: rA;
  icode in {IPOPQ,IRET}: RRSP;
  1: RNONE;
];
srcB = [
  icode in {IOPQ,IRMMOVQ,IMRMOVQ}: rB;
  icode in {IPUSHQ,IPOPQ,ICALL,IRET}: RRSP;
  1: RNONE;
];
dstE = [
  icode == IRRMOVQ && Cnd: rB;
  icode in {IIRMOVQ,IOPQ}: rB;
  icode in {IPUSHQ,IPOPQ,ICALL,IRET}: RRSP;
  1: RNONE;
];
dstM = [ icode in {IMRMOVQ,IPOPQ}: rA; 1: RNONE; ];
```

`srcA`、`srcB` 是要读取的寄存器编号，valA、valB 是实际读到的数值；dstE 是 ALU 结果的目的，dstM 是内存结果的目的。popq 恰好同时使用两个结果通道。

```text
aluA = [
  icode in {IRRMOVQ,IOPQ}: valA;
  icode in {IIRMOVQ,IRMMOVQ,IMRMOVQ}: valC;
  icode in {ICALL,IPUSHQ}: -8;
  icode in {IRET,IPOPQ}: 8;
];
aluB = [
  icode in {IRMMOVQ,IMRMOVQ,IOPQ,ICALL,IPUSHQ,IRET,IPOPQ}: valB;
  icode in {IRRMOVQ,IIRMOVQ}: 0;
];
alufun = [ icode == IOPQ: ifun; 1: ALUADD; ];
set_cc = icode == IOPQ;
```

同一个 ALU 可完成算术运算、地址计算、栈指针增减以及寄存器传送。只有 OPq 设置 CC，避免普通地址加法意外改变后续跳转依据。

```text
mem_addr = [
  icode in {IRMMOVQ,IPUSHQ,ICALL,IMRMOVQ}: valE;
  icode in {IPOPQ,IRET}: valA;
];
mem_data = [ icode in {IRMMOVQ,IPUSHQ}: valA; icode == ICALL: valP; ];
mem_read = icode in {IMRMOVQ,IPOPQ,IRET};
mem_write = icode in {IRMMOVQ,IPUSHQ,ICALL};
new_pc = [
  icode == ICALL: valC;
  icode == IJXX && Cnd: valC;
  icode == IRET: valM;
  1: valP;
];
```

状态选择先处理取指或数据访问错误 SADR，再处理非法指令 SINS，再处理 halt 的 SHLT，否则 SAOK。SEQ 的时钟周期必须容纳最慢指令的整条组合路径；课件第 46—50 页的多张状态图，展示的是同一周期中信号逐步稳定和周期末状态更新的过程。
