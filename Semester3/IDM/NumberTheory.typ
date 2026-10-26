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
  #text(size: 24pt, weight: "bold")[离散数学基础：初等数论]
]

来源：初等数论课件（282 页）。

= 整除、素数与唯一分解

$a | b$ 表示存在整数 $k$ 使 $b=a k$。整除保持整数线性组合。带余除法将 $a$ 唯一写成 $b q+r$，其中 $b>0$ 且 $0<=r<b$。

大于 1 的整数只有 1 和自身两个正因子时为素数。每个大于 1 的整数唯一分解成素数幂的乘积。素数有无穷多个：若只有有限个，所有素数之积加 1 的素因子不在原列表中。

= 最大公因数与 Bézout 等式

最大公因数取素因子指数的逐项最小值，最小公倍数取最大值。对正整数 $a,b$：
$ gcd(a,b) dot "lcm"(a,b)=a b. $
若 $a=b q+r$，则 $gcd(a,b)=gcd(b,r)$，因为两对数有相同的公因子。重复相除，最后一个非零余数是 gcd。

Bézout：存在整数 $x,y$ 使 $a x+b y=gcd(a,b)$。由辗转相除逐步回代得到系数。例如
$ 300=168+132, quad 168=132+36, quad 132=3 dot 36+24, quad 36=24+12, $
从而 $12=9 dot 168-5 dot 300$。

互素等价于存在整数线性组合等于 1。因此 $gcd(a,b)=1$ 且 $a | b c$ 可推出 $a | c$；两个互素数都整除 $c$ 时，它们的乘积也整除 $c$。

= 同余与剩余类

$a equiv b "(" mod m ")"$ 表示 $m | a-b$。固定模数的同余为等价关系，商集由 $m$ 个剩余类组成；加减乘及非负整数次幂保持同余。

约去因子 $c$ 时模数必须相应调整：
$ c a equiv c b "(" mod m ")" <=> a equiv b "(" mod (m/gcd(c,m)) ")". $
只有 $gcd(c,m)=1$ 时能保持原模数直接约去。

= 一次同余方程与模逆

$a x equiv b "(" mod m ")"$ 有解当且仅当 $d=gcd(a,m)$ 整除 $b$。有解时先除以 $d$，得到模 $m/d$ 下唯一解；模 $m$ 下有 $d$ 个不同解类。

例：$8x equiv 4 "(" mod 6 ")"$ 化为 $4x equiv 2 "(" mod 3 ")"$，故 $x equiv 2 "(" mod 3 ")"$，模 6 为 2 与 5。

$a$ 模 $m$ 的逆存在当且仅当 $gcd(a,m)=1$。扩展欧几里得求出 $a x+m y=1$，则 $x$ 是模逆。例：$3 dot 5-2 dot 7=1$，故 5 模 7 的逆为 3。

= 欧拉函数、欧拉定理与费马小定理

$phi(n)$ 统计 1 至 $n$ 中与 $n$ 互素的数，$phi(1)=1$。由容斥原理：
$ phi(n)=n product_(p | n, p "为素数") (1-1/p). $
例如 $phi(60)=60(1-1/2)(1-1/3)(1-1/5)=16$。

若 $gcd(a,n)=1$，则 $a^(phi(n)) equiv 1 "(" mod n ")"$。证明取一组简化剩余系，乘以 $a$ 只是置换，所有元素相乘再约去可逆因子。

素数 $p$ 时 $phi(p)=p-1$，得到费马小定理：若 $p$ 不整除 $a$，$a^(p-1) equiv 1 "(" mod p ")"$；对任意整数 $a$ 均有 $a^p equiv a "(" mod p ")"$。

验证某底数不满足费马同余可证明该数为合数；满足该同余本身不能证明是素数。

= 模运算的应用

求幂的末位就是模 10 计算；$3^455$ 因 $3^4 equiv 1 "(" mod 10 ")"$，只剩指数 3，末位为 7。大指数可用逐次平方，每步取模，乘法次数 $O(log k)$。

星期计算把天数对 7 取模，逐年增加 1，跨闰日再加 1。将一、二月看作上一年的末两个月，可把闰年的影响集中到年界，再按公历 4 年、100 年、400 年规则计闰日。
