#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [#text(10pt, black)[#align(center)[离散数学基础]] #line(length: 100%, stroke: gray)],
  footer: context [#align(center)[#counter(page).display("1")]],
)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[离散数学基础\ 第三讲]\
  #v(10pt)
  #text(size: 16pt)[_2026年9月15日_]
]

本讲将二元关系写成点对、矩阵与有向图。三种表示记录的是同一件事：谁与谁相关；做逆和复合时，只改变读取和连接点对的方式。

= 有序对与笛卡尔积

有序对 $chevron.l x,y chevron.r$ 的两个位置不能随意交换；$chevron.l x,y chevron.r = chevron.l u,v chevron.r$ 当且仅当 $x=u$ 且 $y=v$。笛卡尔积定义为
$ A times B = {chevron.l x,y chevron.r | x in A and y in B}. $
若 $abs(A)=n$、$abs(B)=m$，则 $abs(A times B)=n m$。

== 基本性质

- $A times emptyset = emptyset times A = emptyset$。
- 一般没有交换律：$A times B$ 与 $B times A$ 的序偶位置不同。
- 一般没有结合律：$(A times B) times C$ 的元素是 $chevron.l chevron.l x,y chevron.r,z chevron.r$，而 $A times (B times C)$ 的元素是 $chevron.l x,chevron.l y,z chevron.r chevron.r$。
- 对并、交有分配律：
  $ A times (B union C) = (A times B) union (A times C), $
  $ A times (B inter C) = (A times B) inter (A times C). $
  左侧因子为并、交时也成立。
- 若 $A subset.eq C$ 且 $B subset.eq D$，则 $A times B subset.eq C times D$。反过来只有在 $A,B$ 均非空时，才可推出两个因子的包含关系；若某个因子为空，乘积为空，便无法由乘积判断另一因子。

*分配律的元素证明：* $chevron.l x,y chevron.r in A times (B union C)$ 当且仅当 $x in A$ 且 $(y in B "或" y in C)$，等价于 $chevron.l x,y chevron.r in (A times B) union (A times C)$。

== 课件例题：判断真伪

1. $A times B = A times C => B=C$：一般为假。取 $A=emptyset$、$B={1}$、$C={2}$，两边乘积均为空。若另加 $A != emptyset$，则命题为真。
2. $A - (B times C) = (A-B) times (A-C)$：一般为假。取 $A=B={1}$、$C={2}$，左边为 ${1}$，右边为空集。
3. $A=B$、$C=D => A times C = B times D$：真，由等量代入即可。
4. 存在 $A subset.eq A times A$：真，取 $A=emptyset$。

= 二元关系

*定义：* 非空且所有元素都是有序对的集合，以及空集，都称为二元关系。$chevron.l x,y chevron.r in R$ 记作 $x R y$；不成立时可写作 $chevron.l x,y chevron.r in.not R$，避免把带斜线的关系符号误读为另一个关系。

$R subset.eq A times B$ 称为从 $A$ 到 $B$ 的关系；$R subset.eq A times A$ 称为 $A$ 上的关系。若 $abs(A)=n$，则 $A$ 上共有 $2^(n^2)$ 个关系，因为 $A times A$ 有 $n^2$ 个序偶，每个序偶都可独立选择是否属于关系。

== 常见关系

- 空关系：$emptyset$；全域关系：$E_A=A times A$。
- 恒等关系：$I_A={chevron.l x,x chevron.r | x in A}$。
- 若 $A subset.eq RR$，小于等于关系为 $L_A={chevron.l x,y chevron.r | x,y in A, x <= y}$。
- 若 $A subset.eq ZZ-{0}$，整除关系为 $D_A={chevron.l x,y chevron.r | x,y in A, x | y}$，这里 $x | y$ 表示 $x$ 整除 $y$。
- 在集族 $cal(A)$ 上，包含关系由 $X subset.eq Y$ 定义。

== 关系矩阵与关系图

设 $A={x_1,dots,x_n}$，$R$ 为 $A$ 上的关系。按固定顺序排列行、列，定义
$ r_(i j) = cases(1 & "若" chevron.l x_i,x_j chevron.r in R, 0 & "否则"), quad M_R=(r_(i j))_(n times n). $
关系图以 $A$ 的元素为顶点，每个 $chevron.l x_i,x_j chevron.r in R$ 对应一条从 $x_i$ 指向 $x_j$ 的边；$chevron.l x_i,x_i chevron.r$ 对应自环。矩阵、图与关系本身一一对应。

例如 $A={1,2,3,4}$，$R={chevron.l 1,1 chevron.r,chevron.l 1,2 chevron.r,chevron.l 2,3 chevron.r,chevron.l 2,4 chevron.r,chevron.l 4,2 chevron.r}$，按 $1,2,3,4$ 排序，
$ M_R = mat(1,1,0,0; 0,0,1,1; 0,0,0,0; 0,1,0,0). $

== 从一张表读出关系的全部信息

设 $A={a,b,c}$，关系 $R={(a,b),(a,c),(c,b)}$。按 a、b、c 排行列，a 行为 0、1、1，b 行全零，c 行为 0、1、0。行表示起点，所以 a 有两条出边；列表示终点，所以 b 有两条入边。定义域是出现过的第一坐标 ${a,c}$，值域是出现过的第二坐标 ${b,c}$。

求逆时，每个点对交换坐标，得到 ${(b,a),(c,a),(b,c)}$；图上把所有箭头反向，矩阵上则转置。定义域和值域也随之交换。只看“有三个顶点”不能断言定义域有三个元素：b 在基集中，却没有任何出边。

按本课先左后右的复合约定，R 与自身复合时，只有 a→c→b 能衔接，故平方只有 (a,b)。点对 (a,b) 本来就在 R 中，因此这个例子的两步可达结果没有超出原关系。每次运算都可在点对、图和矩阵之间交叉核对。

= 关系的运算

== 定义域、值域与域

$ "dom" R={x | exists y, chevron.l x,y chevron.r in R}, $
$ "ran" R={y | exists x, chevron.l x,y chevron.r in R}, $
$ "fld" R="dom" R union "ran" R. $
例如 $R={chevron.l 1,2 chevron.r,chevron.l 1,3 chevron.r,chevron.l 2,4 chevron.r,chevron.l 4,3 chevron.r}$，则定义域为 ${1,2,4}$，值域为 ${2,3,4}$，域为 ${1,2,3,4}$。

== 逆关系与复合

逆关系交换每个序偶的两个位置：
$ R^(-1)={chevron.l y,x chevron.r | chevron.l x,y chevron.r in R}. $
所以 $(R^(-1))^(-1)=R$，$"dom" R^(-1)="ran" R$，$"ran" R^(-1)="dom" R$。

本课程采用*右复合*：$F circle G$ 表示先经过 $F$，再经过 $G$，
$ F circle G={chevron.l x,z chevron.r | exists y, chevron.l x,y chevron.r in F and chevron.l y,z chevron.r in G}. $
例如 $F={chevron.l 3,3 chevron.r,chevron.l 6,2 chevron.r}$、$G={chevron.l 2,3 chevron.r}$，则 $F circle G={chevron.l 6,3 chevron.r}$，而 $G circle F={chevron.l 2,3 chevron.r}$；复合一般不交换。

复合满足结合律 $(F circle G) circle H=F circle (G circle H)$，并有 $(F circle G)^(-1)=G^(-1) circle F^(-1)$。若 $R$ 是 $A$ 上的关系，则 $R circle I_A=I_A circle R=R$。

对并有分配律，对交一般只有包含关系：
$ F circle (G union H)=(F circle G) union (F circle H), $
$ F circle (G inter H) subset.eq (F circle G) inter (F circle H). $
第二式可能严格包含，因为右侧两种复合可以分别使用不同的中间元素。

== 限制与像

关系 $R$ 在集合 $A$ 上的限制只保留第一元素位于 $A$ 的序偶：
$ R |_ A={chevron.l x,y chevron.r in R | x in A}, quad R[A]="ran" (R |_ A). $
这里 $R[A]$ 称为 $A$ 在 $R$ 下的像。对于集合 $A,B$，
$ R |_ (A union B)=(R |_ A) union (R |_ B), quad R[A union B]=R[A] union R[B], $
$ R |_ (A inter B)=(R |_ A) inter (R |_ B), quad R[A inter B] subset.eq R[A] inter R[B]. $
像的交式未必取等号：同一个像元素可分别由 $A$、$B$ 中不同的原像得到。

== 关系的幂与布尔矩阵

若 $R$ 是 $A$ 上的关系，定义 $R^0=I_A$，$R^(n+1)=R^n circle R$。由结合律得
$ R^m circle R^n=R^(m+n), quad (R^m)^n=R^(m n). $
图中 $chevron.l x,y chevron.r in R^n$ 当且仅当存在从 $x$ 到 $y$ 的恰好 $n$ 步有向走法。

若 $M_R$ 为关系矩阵，则 $M_(R^n)$ 是 $M_R$ 的 $n$ 次*布尔矩阵乘积*；其中乘法为“且”，加法为“或”：
$ (M_(F circle G))_(i j)=( (M_F)_(i 1) and (M_G)_(1 j) ) or dots or ( (M_F)_(i n) and (M_G)_(n j) ). $
例如课件关系 $A={a,b,c,d}$、$R={chevron.l a,b chevron.r,chevron.l b,a chevron.r,chevron.l b,c chevron.r,chevron.l c,d chevron.r}$ 有
$ M_R=mat(0,1,0,0; 1,0,1,0; 0,0,0,1; 0,0,0,0), quad M_(R^2)=mat(1,0,1,0; 0,1,0,1; 0,0,0,0; 0,0,0,0). $
于是 $chevron.l a,c chevron.r in R^2$（路径 $a arrow b arrow c$），但 $chevron.l a,d chevron.r in.not R^2$；此例还满足 $R^4=R^2$。

== 有穷集上关系幂的最终周期性

*定理：* 若 $abs(A)=n$ 且 $R subset.eq A times A$，则存在自然数 $s<t$ 使 $R^s=R^t$。

*证明：* $A$ 上只有 $2^(n^2)$ 个不同关系，而 $R^0,R^1,dots,R^(2^(n^2))$ 共列出 $2^(n^2)+1$ 个关系。由鸽巢原理，至少两个相等。

令 $p=t-s$。由幂的加法公式，对任意 $k >= 0$，
$ R^(s+k)=R^s circle R^k=R^t circle R^k=R^(t+k). $
因此从 $s$ 开始，幂序列以 $p$ 为一个周期；对 $k,i >= 0$，$R^(s+k p+i)=R^(s+i)$。所有高次幂都等于 $R^0,dots,R^(t-1)$ 中的某一个。

*课件例：* 若关系图由一个长度为 2 的环和一个长度为 3 的环组成，两部分周期的最小公倍数为 6，所以 $R^6=R^0$，之后每隔 6 次幂重复。对一般关系，周期可能从某个正指数才开始，未必从 $R^0$ 开始。

= 课堂例题：有序对与笛卡儿积

*第二部分第 7、37—44 页。* $(x+2,4)=(5,2x+y)$ 时，分别比较两个位置：$x+2=5$、$2x+y=4$，解得 $x=3,y=-2$。

$A={1,2}$ 时，$cal(P)(A)={emptyset,{1},{2},{1,2}}$，故
$ cal(P)(A) times A={(emptyset,1),(emptyset,2),({1},1),({1},2), $
$ ({2},1),({2},2),({1,2},1),({1,2},2)}. $
第一个坐标是一个集合，第二个坐标是 A 的元素，不能把幂集中的成员再拆开。

课件四个判断：

+ $A times B=A times C$ 未必推出 $B=C$。取 $A=emptyset,B={1},C={2}$，两个积均为空。补上 A 非空后，可固定一个 A 的元素，再比较第二坐标。
+ $A-(B times C)=(A-B) times (A-C)$ 一般错误。取 $A=B={1},C={2}$，左侧为 {1}，右侧为空。
+ $A=B,C=D$ 时 $A times C=B times D$，由相等对象代入得到。
+ 存在 $A subset.eq A times A$，空集就是一个例子。

= 课堂例题：把关系写成点对和矩阵

*第二部分第 63、70、78、86 页。* 在 ${1,2,3,4}$ 上，“x 是 y 的倍数”对应
$ {(1,1),(2,1),(2,2),(3,1),(3,3),(4,1),(4,2),(4,4)}. $
按每个 x 枚举能整除它的 y，可避免把关系方向写反。

对 $R={(1,1),(1,2),(2,3),(2,4),(4,2)}$，按 1、2、3、4 排行列，矩阵为
$ M[R]=mat(1,1,0,0;0,0,1,1;0,0,0,0;0,1,0,0). $
第 3 行全零表示 3 不在定义域；第 3 列仍有 1，表示 3 在值域。

另取 $R={(1,2),(1,3),(2,4),(4,3)}$，定义域 ${1,2,4}$，值域 ${2,3,4}$，域为 ${1,2,3,4}$。

限制例 $R={(1,2),(1,3),(2,2),(2,4),(3,2)}$：保留第一坐标为 1 的点对得 $R harpoon.tr {1}={(1,2),(1,3)}$；像只取其第二坐标，$R[{1}]={2,3}$。限制到 ${2,3}$ 得 ${(2,2),(2,4),(3,2)}$，而 $R[{3}]={2}$。限制与像分别是点对集合、值集合。

= 课堂例题：关系的幂与最终周期

*第二部分第 145—196 页。* 取 $A={a,b,c,d}$，$R={(a,b),(b,a),(b,c),(c,d)}$。按走两步、三步列举：
$ R^2={(a,a),(a,c),(b,b),(b,d)}, $
$ R^3={(a,b),(a,d),(b,a),(b,c)}. $
再复合一次得 $R^4=R^2$。因此从第二次幂起按奇偶循环，而 $R^1$ 还没有点对 $(a,d)$，不能把最初一项也强行纳入周期。

对 $A={a,b,d,e,f}$，关系由二环 $a -> b -> a$ 与三环 $d -> e -> f -> d$ 组成。要让所有元素同时回到原位，步数必须同时为 2、3 的倍数，最小为 6。因此 $R^0=R^6=I_A$，所求最小重复为 $m=0,n=6$。

幂运算公式也可逐步证明：固定 m，对 n 归纳，
$ R^m compose R^(n+1)=(R^m compose R^n) compose R
 =R^(m+n) compose R=R^(m+n+1). $
再对 $(R^m)^n$ 归纳，指数每步增加 m，得到 $R^(m n)$。

本门离散数学仍用课件的右复合：$F compose G$ 先 F 后 G；相同关系的幂不受左右命名影响。另一门集合论与图论沿用其手写稿的左复合，跨课引用时应按作用次序核对。

= 课堂例题：性质判断必须给见证

#figure(image("/assets/course-examples/139-p240.png", width: 94%), caption: [三个关系图的性质判断原题（课件第 240 页）])


*第二部分第 202—244 页。* 在 A={1,2,3} 上，$R_1={(1,1),(2,2)}$ 缺 3 的自环，因此不自反；又含自环，因此不反自反。$R_2=I_A union {(1,2)}$ 自反；$R_3={(1,3)}$ 反自反。

对称性题中，只有部分自环的关系对称；${(1,1),(1,2),(2,1)}$ 对称，但不是反对称；${(1,2),(1,3)}$ 反对称而不对称；再补 $(2,1)$ 则既不对称（缺 $(3,1)$），也不反对称。

传递性题中，自环子集传递；${(1,2),(2,3)}$ 因缺 $(1,3)$ 不传递；${(1,3)}$ 没有能连接的两条边，自动传递。

课件三张关系图可列出为：

+ 左图：${(1,1),(1,2),(2,1),(1,3),(3,1)}$。对称；既不自反也不反自反；不反对称；路径 $2 -> 1 -> 3$ 缺 $(2,3)$，所以不传递。
+ 中图：${(2,1),(3,1)}$。反自反、反对称、传递；不自反、不对称。
+ 右图：$I_A union {(2,1),(1,3),(3,2)}$。自反、反对称；不对称；$2 -> 1 -> 3$ 缺 $(2,3)$，所以不传递。

反对称只排除不同顶点之间的双向边，允许有向三环。因此不能用“有环”直接否定反对称。

== 运算保持性表及反例（第 244 页）

#table(columns: (1.5fr,1fr,1fr,1fr,1fr,1fr), align: center,
 [运算],[自反],[反自反],[对称],[反对称],[传递],
 [逆],[是],[是],[是],[是],[是],
 [交],[是],[是],[是],[是],[是],
 [并],[是],[是],[是],[否],[否],
 [差],[否],[是],[是],[是],[否],
 [复合],[是],[否],[否],[否],[否])

并不保持传递：${(1,2)}$ 与 ${(2,3)}$ 各自传递，并后缺 $(1,3)$。并不保持反对称：${(1,2)}$ 与 ${(2,1)}$ 各自反对称，并后出现不同元素间的双向边。差不保持自反：$I_A-I_A=emptyset$；差不保持传递：从全关系删去 $(1,3)$ 后还保留 $1 -> 2 -> 3$。

若两个关系都自反，则任意 a 可经 a 在复合中连回 a，因此复合保持自反。其他性质则需分别判断，不能将“每个关系有该性质”直接转为“任意组合都有该性质”。

= 补充例：限制关系性质之后怎样计数

n 元基集上的 n² 个点对可独立选择，所以一般关系有 $2^(n^2)$ 个。若要求自反，n 个对角点对固定取，剩下 $n^2-n$ 个可选，共 $2^(n^2-n)$ 个。

若要求对称，每个非对角无序对的两个方向必须一起取或一起不取；n 个对角位置仍自由，所以共有 $2^(n+binom(n,2))$ 个。若再要求自反，对角固定，共 $2^binom(n,2)$ 个。

若要求反对称，每对不同元素允许“不取、只取正向、只取反向”三种状态，不能双取；每个对角点仍有两种，故为 $2^n 3^binom(n,2)$。n=2 时一般关系 16 个、自反关系 4 个、对称关系 8 个、反对称关系 12 个。对称和反对称的计数不能相减来当作互补，因为它们可以同时成立。

== 补充例：复合不保持对称性

按本课先左后右的约定，取 $F={(1,2),(2,1)}$、$G={(2,3),(3,2)}$。F、G 各自对称，但 $F compose G={(1,3)}$，缺少 (3,1)。交换次序得到 $G compose F={(3,1)}$，恰为前者的逆。中间点必须同时是前一关系的输出和后一关系的输入，不能只把两个图的箭头集合相并。
