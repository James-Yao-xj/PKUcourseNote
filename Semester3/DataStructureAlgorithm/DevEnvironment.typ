#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[数据结构与算法]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")
#set text(size: 10.5pt)
#set par(justify: true, leading: 0.72em)
#show raw: set text(font: "Menlo", size: 8.5pt)
#let key(body) = [*#body*]
#let complexity(body) = [复杂度：#body]
#let explain(items) = {
  strong[代码说明]
  list(..items)
}

#align(center)[
  #text(size: 24pt, weight: "bold")[开发环境与上机基础]
]

来源：第 2 周虚拟机、Shell 与开发环境课件（28 页）。

= 操作系统与隔离环境

虚拟机提供独立的客户操作系统和内核，由虚拟机监视器管理；容器共享宿主内核，对进程和文件系统等资源作隔离。云主机通常通过 SSH 登录，SCP 传送文件。

程序的 TLE 对应运行时间，MLE 对应内存，RE 对应运行异常；定位时分别检查算法代价、数据规模与内存布局、输入和程序状态。交换空间把一部分磁盘作为内存后备，速度比内存低。

= Shell 的四项基本操作

路径：`pwd` 查看当前位置，`ls` 列目录，`cd` 切换目录；`/` 开头为绝对路径，`.` 为当前目录，`..` 为上级目录。
权限：r、w、x 分别对应 4、2、1，`754` 表示属主 rwx、同组 r-x、其他 r--。
重定向：`<` 读文件，`>` 覆盖标准输出，`>>` 追加，`2>&1` 将标准错误接到当前标准输出。
管道：前一命令的标准输出作为后一命令的标准输入。

常用练习是 `python3 solution.py < in.txt > out.txt`。Ctrl-C 中断当前程序，Ctrl-D 发送输入结束，Tab 补全。

= 开发与输入

Python 虚拟环境为项目隔离依赖：创建环境、启用环境、安装包、导出依赖、退出环境。调试器用断点检查变量，以单步跟踪分支和循环。

输入整数需由文本转换；`split()` 按空白分词；`strip()` 删除两端空白，只有题目不把这些空白当作数据时才使用。Windows 常用 CRLF，Unix 类系统常用 LF。

二维列表 `[[0]*n]*m` 的各行引用同一列表；逐行构造 `[[0]*n for _ in range(m)]` 才得到独立的行。字符串不可变，批量编辑可先转列表再连接。
