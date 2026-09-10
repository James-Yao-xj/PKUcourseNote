#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[Introduction to Computer System]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[第二讲]\
  #text(size: 24pt)[bits, byte and Integers]
  #v(5pt)
  #text(size: 16pt)[_笔记整理自2026年9月10日课程_]
]


= Before class

The sequence of the textbook and the class is a bit different. Use the slides to follow the class and carefully review the slides right after class. Then you can read the textbook and pick the parts you need.

= Binary Representations

== Base 2 number Representation

- represent $15123_10$ as $11101101101101_2$

Why computers use binary?

We can use electricity volts to determine the state of a bit. For example, 0V represents 0 and 5V represents 1. It is easy to distinguish between 0 and 1.

#align(center)[
#image("Volts.png",width: 80%)]

Main cause: Binary is the most practical system to use!

== Encoding Byte Values

- Byte = 8 bits
- Binary $00000000_2$ to $11111111_2$
- Decimal: $0_10$ to $255_10$
- Hexadecimal $00_16$ to $"FF"_16$

== Different Data types have different lengths.
#align(center)[
#table(
    columns: 5,
    align: center,
    inset: 7pt,
    stroke: 0.6pt,

    table.header(
      [数据类型],
      [16 位系统],
      [32 位系统],
      [64 位 Linux/macOS],
      [64 位 Windows],
    ),

    [`char`],    [1], [1], [1], [1],
    [`short`],   [2], [2], [2], [2],
    [`int`],     [2], [4], [4], [4],
    [`long`],    [4], [4], [8], [4],
    [`long long`],[8], [8], [8], [8],
    [`float`],   [4], [4], [4], [4],
    [`double`],  [8], [8], [8], [8],
    [指针],      [2], [4], [8], [8],
    [`size_t`],  [2], [4], [8], [8],
  )]
== Boolean Algebra

- And, &
- Or, |
- Not, ^
- Xor, \~

#align(center)[
  #image("Bool.png", width: 80%)
]

== Bit-Level Operations in C

(Need to check the slides for details)

可以按位进行计算。

- $~01000001_2 -> 10111110_2$
- $~0"x"00 -> 0"x""FF"$


== Logic Operations in C

*Compare with the bit level operations*

- &&, ||, !
  - view 0 as false
  - Anything nonzero as "True"
  - Always renturn 0 or 1


== Shift operations

- Left shift: $"<<"$
  - shift bit-vector $bold(x)$ left $bold(y)$ positions, throw away extra bits on left.
  - example: $"01100010 << 3 = 00010000"$
- Right shift: $">>"$
  - shift bit-vector $bold(x)$ right $bold(y)$ positions, throw away extra bits on right.
  - example: $"01100010 >> 3 = 00001100"$
- Undefined behavior: shift by negative number or shift by more than the length of the bit-vector.

= Encoding integers

Unsigned:
$
"B2U"(X) = sum_(i = 0) ^ (w - 1) x_i dot 2 ^ i
$

negative number? 

- Early: 原码表示，但是0存在正的或者负的

Two's Complement: 负数的表示方法，现代计算机中使用的就是这种方法。

$
"B2T"(X) = -x_(w - 1) dot 2 ^ (w - 1) + sum_(i = 0) ^ (w - 2) x_i dot 2 ^ i
$

The first bit is the sign bit. 0 means positive, 1 means negative.

有无符号的关键是解释方式的不同，存储的具体的数据可能是一样的。




= Why should I use Unsigned?
*Don't use without understanding implications*


#align(center)[```cpp
unsigned i;
for(i = cnt; i >= 0; i--){
  //This is the loop
}
```]

在这个代码中，循环终止的条件永远达不到。

#align(center)[
  ```cpp

  #define DELTA sizeof(int)
  

  ```
]

