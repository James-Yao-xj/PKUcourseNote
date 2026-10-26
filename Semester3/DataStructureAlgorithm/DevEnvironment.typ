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

= 上机课中的完整操作与输出

== 路径、权限与管道

课件第 7 页通过 `ssh username@ip_address` 登录云主机；指定密钥的形式为 `ssh -i ~/.ssh/id_rsa user@ip`。`scp local.py user@ip:~/` 复制本地文件到远端用户目录。登录后 `uname -a` 看内核信息，`pwd` 确认当前位置。`mkdir -p ~/cs101/week02` 创建练习目录，`cd ~/cs101/week02` 进入；相对路径基于当前目录，绝对路径从 `/` 开始。

第 13 页 `-rwxr-xr--` 分成属主 rwx、同组 r-x、其他 r--，对应 $7,5,4$，故 `chmod 754 run.sh` 设置相同权限。读、写、执行三位分别值 4、2、1，相加得到一组权限值；文件类型位 `-` 不计入三位权限。

第 14 页 `python3 a.py < in.txt > out.txt` 把文件当输入并收集输出；`python3 a.py > out.txt 2>&1` 还把报错接入同一输出文件。`>` 覆盖旧内容，`>>` 追加。课件管道 `cat data.txt | sort | uniq -c | sort -rn | head` 先排序使相同行相邻，再计数、按计数倒序取前几项；文件每行一个词时，得到词频。`uniq` 只合并相邻重复行，不能省去前面的排序。

== 虚拟环境与调试

```sh
python3 -m venv .venv
source .venv/bin/activate
pip install numpy matplotlib
pip freeze > requirements.txt
deactivate
```

第 17 页这组操作依次创建、启用环境、安装 numpy 和 matplotlib、保存依赖清单、退出环境。PyCharm 选中同一个环境的解释器，才能导入装入该环境的包。第 18 页用断点暂停程序，F8 单步跨过函数，F7 进入函数；在变量区观察输入转换后的值、循环下标与列表，直接检查第一次偏离预期的位置。

== Python 基本类型与列表样例

第 20—23 页 `n=42` 是整数，`x=3.14` 是双精度浮点数，字符串保存文本，列表可变，元组不可变，集合存不同元素，字典保存键到值的映射。`range(1,10,2)` 依次产生 1、3、5、7、9，不包含右端 10。

```python
a = [3, 1, 2]
a.append(4)
a.sort()
print(a)               # [1, 2, 3, 4]
print(a[0], a[-1])     # 1 4
print(a[1:3])          # [2, 3]
print(sum(a), max(a), len(a))  # 10 4 4
print([v*v for v in a if v % 2])  # [1, 9]
```

字符串 `s="  Hello, World  "` 经 strip 得 `"Hello, World"`，按逗号 split 得两段，逗号后的空格仍在第二段中；join 按指定分隔符重新连接，切片 `s[::-1]` 逆序。find 返回首次匹配下标，未找到为 -1，不能把返回值直接作“是否找到”的真假判断，因为下标 0 也是假值。

二维列表的别名可逐步观察：`a=[[0]*3]*2` 后令 `a[0][0]=1`，两行都变为 `[1,0,0]`，因为两行指向同一列表；改为 `a=[[0]*3 for _ in range(2)]`，只改变第一行。

== 两道语法题与提交练习

E02689 大小写互换：字母变为对应的另一种大小写，数字与标点保持；课件用 `print(input().swapcase())` 一行实现。若按 ASCII 手写，判断大写、小写的范围后分别加减字符码差，不能对所有字符统一加 32。

E02676 统计 1、5、10 的个数：课件先读 k，再以 `list(map(int,input().split()))` 读入一行整数，分别调用 `nums.count(1)`、`nums.count(5)`、`nums.count(10)` 并逐行输出。每次 count 都扫描整张表，三次仍为线性时间；若待统计的取值很多，可改成一次遍历累计字典。

上机实践的 sum.py 从标准输入取两个整数，输入 `3 4` 输出 `7`。可用如下写法兼容空格和换行分隔：
```python
import sys
x, y = map(int, sys.stdin.read().split())
print(x + y)
```
把输入保存为文件后用重定向运行，再查看输出；读入的是文本，先转整数才能相加，否则字符串相加得到 `34`。
