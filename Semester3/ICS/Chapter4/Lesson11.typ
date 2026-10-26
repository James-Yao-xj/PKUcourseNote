// GoodTypst · 阅读文稿模板（reading）
//
// 版式与样例 Lesson2.typ 完全一致：A4 单栏、纯黑白、ctyp 处理中英混排、
// 页眉一行灰线加居中课程名、页脚居中页码、一级标题自动编号。
//
// 只改下面 4 个变量，上面的样式不要动；正文怎么写见 prompts/reading.md。

#let doc-title = "第四章 第十一讲"
#let doc-subtitle = "流水线与冒险处理"
#let doc-meta = "2026 年 10 月 22 日"
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
  #text(size: 24pt, weight: "bold")[第四章 第十一讲：流水线与冒险处理]
]

来源：ICS11，2026 年 10 月 22 日，68 页。

= 流水线的性能

把计算划成 $k$ 段，段间加入流水线寄存器。理想情况下每周期完成一条指令，单条指令仍需经过全部阶段。
设各段组合延迟为 $t_i$，寄存器开销为 $d$，则
$ T = max_i t_i+d, quad "吞吐率"=1/T. $
无停顿时 $n$ 条指令需要 $n+k-1$ 个周期。SEQ 时间约为 $n sum_i t_i$，流水线时间为 $(n+k-1)T$。阶段不平衡和寄存器开销限制加速比。

= PIPE 的状态与预测

F 保存预测 PC；D、E、M、W 保存不同阶段的指令字段与中间结果。大写 `E_valA` 表示 E 寄存器中已有的值，小写 `e_valE` 表示当前周期执行逻辑刚产生的值。

默认预测条件跳转发生：`jXX/call` 的预测 PC 为 `valC`，其余顺序取 `valP`。分支判断在 E 阶段完成；返回地址需等 `ret` 读完内存后才能使用。

= 数据相关与转发

后指令需要前指令尚未写回的寄存器值，产生读后写相关。按序五级流水线中，核心问题是消费者何时需要值、生产者何时产生值。

转发将 E、M、W 阶段的结果直接送到译码阶段选择逻辑。对同一源寄存器有多个匹配写者时，选程序顺序中最近的前驱。

课件 `d_valA` 的选择顺序：

+ `call/jXX` 使用 `D_valP`；
+ `d_srcA == e_dstE`：取 `e_valE`；
+ 匹配 `M_dstM`：取 `m_valM`；
+ 匹配 `M_dstE`：取 `M_valE`；
+ 匹配 `W_dstM`：取 `W_valM`；
+ 匹配 `W_dstE`：取 `W_valE`；
+ 最后才取寄存器堆的读值。

条件传送失败时 `e_dstE=RNONE`，不能把取消的写回当成数据来源。`RNONE` 表示没有寄存器操作数。

= 装载使用冒险

`mrmovq` 或 `popq` 在 M 阶段结束才产生 `valM`，紧随其后的消费者在更早的 D 阶段需要它，转发也无法把未来的值送回过去。

检测条件：
```text
L = E_icode in {IMRMOVQ, IPOPQ}
    && E_dstM in {d_srcA, d_srcB}
```

处理：F、D 停顿，E 注入气泡，M、W 正常前进。一个周期后从 M 转发装载结果。仅有 ALU 相关通常无额外周期，紧邻装载使用通常增加 1 周期。

= 分支误预测与返回

条件跳转预测发生而实际不发生：在 E 阶段检测 `E_icode==IJXX && !e_Cnd`。D、E 注入气泡，下一次取指从分支的顺序后继开始。清除两条年轻指令，损失 2 周期；这些指令尚未造成体系结构副作用。

`ret` 处于 D、E、M 任一阶段时，暂停取指，并向 D 注入气泡；当返回地址到达 W 时，取 `W_valM` 作为 PC。返回通常损失 3 周期。

= 停顿、气泡与组合条件

停顿保留流水线寄存器当前内容；气泡将下一阶段指令替换为无副作用的空操作。正常更新则锁存新输入。

令 $L$ 为装载使用，$B$ 为误预测，$R$ 为 D/E/M 中存在返回：
```text
F_stall  = L || R
D_stall  = L
D_bubble = B || (R && !L)
E_bubble = B || L
```

装载到 `%rsp` 后紧跟 `ret`，同时触发 $L$ 与 $R$；必须保留 D 中的 `ret` 等待新栈指针，因此装载使用优先，D 停顿而不气泡。
若误预测路径上的 D 指令恰为 `ret`，按分支误预测清除它，PC 重定向仍应生效。

= 周期计算例题

五级流水线执行 20 条有效指令，有 3 次装载使用、2 次误预测、1 次返回，按课件模型且处罚彼此独立，周期数为
$ 20+4+3+2 dot 2+3=34. $
稳态估计 $"CPI" approx 1+f_L+2f_B+3f_R$；短程序还要计算填充和排空，重叠事件要按控制逻辑逐周期判断。
