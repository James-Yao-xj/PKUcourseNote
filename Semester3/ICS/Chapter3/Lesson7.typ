// GoodTypst · 阅读文稿模板（reading）
//
// 版式与样例 Lesson2.typ 完全一致：A4 单栏、纯黑白、ctyp 处理中英混排、
// 页眉一行灰线加居中课程名、页脚居中页码、一级标题自动编号。
//
// 只改下面 4 个变量，上面的样式不要动；正文怎么写见 prompts/reading.md。

#let doc-title = "第三章 第七讲"
#let doc-subtitle = "数组、结构体与浮点指令"
#let doc-meta = "2026 年 9 月 28 日"
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
  #text(size: 24pt, weight: "bold")[第三章 第七讲：数组、结构体与浮点指令]
]

来源：ICS07，2026 年 9 月 28 日，51 页。

= 数组的布局与寻址

`T A[L]` 分配连续的 $L dot "sizeof"(T)$ 字节。令首地址为 $a$，每个元素占 $K$ 字节，则
$ "addr"(A[i]) = a + K i. $
数组表达式在多数场合转换为首元素指针；`sizeof A` 与 `&A` 保留数组本身的类型信息。
`A+i` 是地址，`A[i]` 是该地址上的元素。对 `int` 数组，`movl (%rdi,%rsi,4), %eax` 读取第 `i` 项；`leaq` 计算地址而不读取数组内容。

== 连续二维数组

`T A[R][C]` 按行存放：
$ "addr"(A[i][j]) = a + K(C i+j). $
`A+i` 跨过 $i$ 行，每行 $C K$ 字节；`A[i]+j` 再跨过 $j$ 个元素。对 `int A[4][5]`，偏移是 $20i+4j$。
固定列数可用移位与 `leaq` 合成乘法；运行时列数通常需要 `imulq`。列数决定步长，不能由行数代替。

== 指针数组与多级访问

`int *A[R]` 保存 $R$ 个指针，各行可以独立分配。x86-64 下访问 `A[i][j]` 的过程是
$ "Mem"["Mem"[a+8i]+4j]. $
先读取行指针，再读取元素；连续二维数组直接用一次地址计算定位元素。`int **` 与 `int (*)[C]` 的布局和步长不同。

= 结构体、偏移与对齐

成员依声明次序排列，编译器在成员之间及末尾插入填充。设当前偏移为 $o$、成员要求按 $k$ 对齐，则成员偏移为
$ k ceil(o/k). $
结构体整体对齐要求等于成员对齐要求的最大值，最终大小也向该值的整数倍取整。这保证结构体数组中每个元素都满足对齐要求。

课件的 `struct S1 { char c; int i[2]; double v; }`：`c` 偏移 0，`i` 偏移 4，`v` 偏移 16，整体 24 字节。`struct { char c; int i; char d; }` 占 12 字节；改为 `int i; char c; char d;` 占 8 字节。

结构体数组寻址遵循：数组首地址 + 下标 × 结构体大小 + 成员偏移。`short, float, short` 的例子中，整体大小 12，末成员偏移 8。

链表访问是反复读取 `next` 成员所在地址的指针值；成员偏移是编译期常量，结点地址在运行时变化。

= 浮点数的机器级操作

XMM 寄存器为 128 位，可用于标量或 SIMD 运算。`ss` 表示标量单精度，`sd` 表示标量双精度；`ps`、`pd` 表示打包单精度、双精度。

System V AMD64 调用约定中，浮点参数依次使用 `%xmm0` 至 `%xmm7`，浮点结果放在 `%xmm0`，XMM 寄存器由调用者保存。整数、指针与浮点参数分别使用各自的参数寄存器序列。

`movss/movsd` 传送，`addss/addsd` 做加法。`ucomiss/ucomisd` 比较后设置 ZF、PF、CF：大于为 000，小于为 001，等于为 100，含 NaN 的无序比较为 111。因此无序不能直接按普通相等处理。

= 指针表达式与声明

`*p++` 取旧地址的值，再移动指针；`(*p)++` 修改指向的元素；`*++p` 先移动再读取。
`int *p[3]` 是指针数组，`int (*p)[3]` 是指向三元素数组的指针。读声明时先处理标识符附近的括号与方括号，再处理指针。

= 例题

对 `int A[4][5]`，首地址为 `0x1000`，`A[2][3]` 的地址为 $"0x1000"+4(2 dot 5+3)="0x1034"$。
若结构体数组元素大小 24，成员偏移 16，则第 3 项该成员的地址为首地址加 $3 dot 24+16=88$。
