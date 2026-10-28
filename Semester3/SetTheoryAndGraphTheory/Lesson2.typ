#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[集合论与图论]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[集合论与图论]\
  #v(10pt)
  #text(size: 16pt)[_2026年9月15日 笔记_]
]
本讲把数列极限的“从某一项以后”推广到集合。判断集合是否收敛，关键是固定一个元素，观察它在后续各项中出现和缺席的规律。

= 数列的上下极限

补充来源：《集图笔记(1)》PDF 第 3—5 页；集合运算基础见 Lesson1.typ。

实数列 $a_n$ 收敛到 $a$，是指
$ forall epsilon>0, exists N in NN^+, forall n>=N, abs(a_n-a)<epsilon. $
单调递增且有上界的数列收敛到各项的上确界；单调递减且有下界时，极限为各项的下确界。允许扩充实数 $plus.minus oo$ 后，无界的单调情形也可统一处理。

对一般数列，考察尾部上、下确界：
$ b_n=sup {a_k | k>=n}, quad c_n=inf {a_k | k>=n}. $
$b_n$ 递减，$c_n$ 递增，由此定义
$ limsup_(n -> oo) a_n=lim_(n -> oo) b_n, quad liminf_(n -> oo) a_n=lim_(n -> oo) c_n. $
它们总可在扩充实数中定义；两者相等且为有限实数 $a$，当且仅当 $a_n -> a$。

= 集合列的上下极限

设 $(A_n)_(n>=1)$ 为集合列，令
$ B_n=union.big_(k=n)^oo A_k, quad C_n=inter.big_(k=n)^oo A_k. $
$B_n$ 递减，表示从第 $n$ 项起所有出现过的元素；$C_n$ 递增，表示从第 $n$ 项起一直出现的元素。

定义
$ L^+=limsup_(n -> oo) A_n=inter.big_(n=1)^oo union.big_(k=n)^oo A_k, $
$ L^-=liminf_(n -> oo) A_n=union.big_(n=1)^oo inter.big_(k=n)^oo A_k. $

== 成员资格的量词刻画

$ x in L^+ <=> forall N>=1, exists k>=N, x in A_k, $
$ x in L^- <=> exists N>=1, forall k>=N, x in A_k. $
上极限包含属于无限多个 $A_n$ 的元素，下极限包含从某项起属于所有 $A_n$ 的元素，故 $L^- subset.eq L^+$。

*证明上极限的刻画*

若 $x$ 只出现有限次，设最后一次是第 $t$ 项，则 $x in.not union.big_(k=t+1)^oo A_k$，从而不属于所有尾部并的交。反之，无限次出现意味着在任意晚的尾部仍有某一项包含 $x$，因此 $x in L^+$。

== 收敛与逐点稳定

$A_n -> A$ 是指 $L^-=L^+=A$。等价地，对每个固定的 $x$，存在可依赖于 $x$ 的 $N_x$，使得
$ forall n>=N_x, quad x in A_n <=> x in A. $

若 $x in A=L^-$，它最终一直出现；若 $x in.not A=L^+$，它只出现有限次。这证明收敛推出逐点稳定，反向由同样的量词刻画得到。

若 $A_1 subset.eq A_2 subset.eq dots$，则 $A_n -> union.big_(n=1)^oo A_n$；若 $A_1 supset.eq A_2 supset.eq dots$，则 $A_n -> inter.big_(n=1)^oo A_n$。

例如 $A_n=[n,+oo)$ 递减且极限为 $emptyset$，但没有一项本身是空集；$A_n=(-oo,n]$ 递增且极限为 $RR$。前例也说明稳定时刻 $N_x$ 一般不能取成对所有元素统一的常数。

== 补充例：振荡、端点与移动元素

数列 $a_n=(-1)^n+1/n$ 的偶数子列趋于 1，奇数子列趋于 −1。任意足够晚的尾部仍有这两类项，故上极限为 1、下极限为 −1。

集合列若奇数项为 $[0,1]$、偶数项为 $[1,2]$，1 从不缺席，故下极限为 ${1}$；区间内其他点每隔一项出现，故上极限为 $[0,2]$。两个极限不同，集合列不收敛。

若 $A_n=(0,1/n)$，每个固定正数 x 最终大于等于 $1/n$，而 0 从未属于任何项，故极限为空。改成 $[0,1/n]$，0 始终出现，极限改为 ${0}$；端点是否包含需要从成员资格判断。

若 $A_n={n}$，取随 n 移动的 $x_n=n$，虽每次有 $x_n in A_n$，每个固定 x 却至多出现一次，故极限仍为空。集合极限中的量词固定 x，再令 n 增大。

== 用出现时刻逐步计算两个极限

取 $A_n={0} union {k in NN^+ | k>=n} union B_n$，其中偶数 n 时 $B_n={-1}$，奇数 n 时 $B_n=emptyset$。先不要直接化简无穷交并，而按元素分类。

0 每次都出现，故属于下极限，也属于上极限。−1 只在偶数项出现，任意晚的尾部都能找到它，但它不会从某一项起持续出现，所以只属于上极限。任意固定正整数 k 仅在 n≤k 时出现；一旦 n>k，它永久消失，故不属于任何一个极限。其他数始终不出现。

由此得到下极限为 ${0}$，上极限为 ${-1,0}$。

#align(center)[#table(columns: (1fr, 2fr, 1fr, 1fr), align: center, inset: 7pt, stroke: 0.6pt,
  table.header([固定元素], [后续出现规律], [在下极限中], [在上极限中]),
  [0], [每项都出现], [是], [是],
  [−1], [每隔一项出现], [否], [是],
  [正整数 k], [n 超过 k 后永久消失], [否], [否],
)]

把两者写为交并式时，$union.big_(n>=m)A_n$ 表示“第 m 项后至少出现一次”，再对所有 m 取交就表示“任意晚还会出现”。反过来，$inter.big_(n>=m)A_n$ 表示“从第 m 项起一直出现”，再对 m 取并就表示“最终稳定出现”。两层量词的顺序正是两种极限的差别。

= 集合极限的运算

对固定集合 $B$，由德摩根律得到
$ B-(limsup A_n)=liminf(B-A_n), $
$ B-(liminf A_n)=limsup(B-A_n). $
上极限的补等于补列的下极限，下极限的补等于补列的上极限。

逐项运算满足
$ limsup(A_n union B_n)=(limsup A_n) union (limsup B_n), $
$ (liminf A_n) union (liminf B_n) subset.eq liminf(A_n union B_n), $
$ liminf(A_n inter B_n)=(liminf A_n) inter (liminf B_n), $
$ limsup(A_n inter B_n) subset.eq (limsup A_n) inter (limsup B_n). $

第一式的关键是：一个元素在逐项并中无限次出现，则至少在其中一列中无限次出现。第三式要求两列最终都一直包含该元素，取两个起始时刻的较大者即可。其余包含由定义得到。

*原稿等式的修正与反例*

手写稿中 $A_n=B_n union C_n$ 的下极限等式应改为上面的包含。取 $B_n$ 在奇数项为 ${x}$、偶数项为空，$C_n$ 相反，则
$ liminf B_n=liminf C_n=emptyset, quad liminf(B_n union C_n)={x}. $
逐项交恒为空，而两列的上极限均为 ${x}$，也说明交的上极限包含可以严格。

若 $A_n -> A$、$B_n -> B$，则有限次集合运算保持收敛：
$ A_n union B_n -> A union B, quad A_n inter B_n -> A inter B, $
$ A_n-B_n -> A-B, quad A_n triangle B_n -> A triangle B. $
对每个固定元素，取两列稳定时刻的较大者，逐项运算后的成员资格也从此稳定。

= 集合的特征函数

固定全集 $E$，对 $A subset.eq E$ 定义
$ X_A(x)=cases(1 & x in A, 0 & x in E-A). $
以下函数等式均指在全集 $E$ 上处处相等：

+ $X_A equiv 0 <=> A=emptyset$，$X_A equiv 1 <=> A=E$。
+ $A subset.eq B <=> forall x in E, X_A(x)<=X_B(x)$。
+ $A=B <=> forall x in E, X_A(x)=X_B(x)$。
+ $X_(A inter B)(x)=X_A(x) X_B(x)$。
+ $X_(A union B)(x)=X_A(x)+X_B(x)-X_A(x) X_B(x)$。
+ $X_(E-A)(x)=1-X_A(x)$。
+ $X_(A-B)(x)=X_A(x)(1-X_B(x))$。
+ $X_(A triangle B)(x)=abs(X_A(x)-X_B(x))$。

$X_A(x)=0$ 只说明当前元素不属于 $A$，而 $X_A equiv 0$ 才说明 $A$ 为空集。

集合列收敛还等价于特征函数逐点收敛：
$ A_n -> A <=> forall x in E, X_(A_n)(x) -> X_A(x). $
只取 $0,1$ 两值的数列若收敛到其中一个值，取 $epsilon=1/2$，可知从某项起必须恒等于该值；这恰好就是成员资格逐点稳定。

= 广义交并中的自然数

原课堂问题：设 $cal(B)={{1,2},{2,3},{1,3},{emptyset}}$，计算 $inter.big union.big cal(B)$。

先得 $union.big cal(B)={1,2,3,emptyset}$。本课采用纯集合论解释，自然数也用集合表示，因此这些元素仍然是集合；又因为其中有 $emptyset$，所以
$ inter.big union.big cal(B)=emptyset. $
这里区分 $emptyset$ 与 ${emptyset}$：原集族含有后者，第一次广义并才将其中的 $emptyset$ 取出。自然数的具体集合表示见 Lesson10.typ。
