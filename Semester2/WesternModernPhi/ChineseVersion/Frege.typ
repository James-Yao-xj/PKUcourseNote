#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[Western Modern Philosophy]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[Gottlob Frege（弗雷格）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自老师上课讲义，仅限于知识分享，请勿用于任何商业用途]\

]

= 背景简介

Gottlob Frege（1848–1925）：德国数学家、逻辑学家和哲学家，被公认为分析哲学和现代逻辑的奠基人。他的工作从根本上改变了逻辑学、数学哲学和语言哲学的发展方向。

Frege的学术生涯几乎完全在耶拿大学度过，但他的影响力是通过罗素、维特根斯坦和卡尔纳普等人的继承和批判而广泛扩散的。他的核心雄心是*逻辑主义*（Logicism）——证明所有算术真理都可以被还原为纯逻辑真理。

= Frege的主要著作

#table(
  columns: (4fr, 15fr),
  inset: 6pt,
  align: (center + horizon, left + horizon),
  [1873],[On a Geometrical Representation of the Imaginary Forms in the Plane \ 博士论文《论平面上想象形式的几何表示》],
  [1879], [Concept Script: A Formal Language of Pure Thought Modelled Upon That of Arithmetic \ 《概念文字：一种模仿算术语言构造的纯思维的形式语言》\ *现代逻辑诞生的标志*],
  [1882], [On the Scientific Justification of a Concept Script \ 《论概念文字的科学根据》],
  [1884], [The Foundations of Arithmetic: A Logico-Mathematical Enquiry Into the Concept of Number \ 《算术基础：对数概念的逻辑-数学研究》——逻辑主义纲领的首次系统阐述],
  [1891], [Function and Concept \ 《函数与概念》],
  [1892], [On Sense and Meaning \ 《论意义与指称》、《论概念与对象》——Frege语言哲学的核心文献],
  [1893-1903], [Basic Laws of Arithmetic \ 《算术的基本规律》(两卷本)——逻辑主义纲领的巅峰之作],
  [1910-13],[Lectures on Concept Script \ 《概念文字讲座》],
  [1918-23], [Thoughts, Negation, Compound Thoughts \ 《思想》、《否定》、《复合思想》——对逻辑和思想本质的最终思考]
)

= Concept Script（概念文字）：现代逻辑的诞生

== 动机：克服语言的缺陷

Frege的目标是构建一个完全精确的、无歧义的形式语言，用于纯逻辑的推导。他相信自然语言（如德语、英语）充满了歧义和不精确，不能胜任严格的逻辑推理。

#quote[
So that nothing intuitive could intrude here unnoticed, everything had to depend on the chain of inference being free of gaps. In striving to fulfil this requirement in the strictest way, I found an obstacle in the inadequacy of language: however cumbersome the expressions that arose, the more complicated the relations became, the less the precision was attained that my purpose demanded. Out of this need came the idea of the present Begriffsschrift.
]

因此，所有需要被证明的真理可以分为两类：
1. 可以只用逻辑就证明的真理（纯逻辑真理）
2. 必须依靠事实才能证明的真理（经验真理）

Frege要探明：算术真理属于哪一类？他试图将"序列中的序概念"还原为"逻辑后承概念"，由此过渡到"数"的概念——全程不允许任何直观（intuition）在未被察觉的情况下渗入。

== 概念文字的核心创新

Frege的概念文字（Begriffsschrift）是史上第一个*谓词逻辑*（predicate logic）的形式系统。它的核心创新包括：

- *函数-自变元分析*（function-argument analysis）：将命题分解为函数和自变元，而非传统的主谓结构。例如，"苏格拉底是有死的"被分析为：函项 $f(x)$ = "$x$ 是有死的"，自变元 $x$ = 苏格拉底
- *量词*（quantifier）：首次引入全称量词和存在量词的明确表示
- *判断线*（judgment stroke）与内容线（content stroke）：区分被思考的命题内容（├—）与被断言的判断（├─）
- *真值*（truth-value）：句子（命题）的指称是其真值（True 或 False），而非对象

这使得推理链条可以*机械地*检查，真正实现"无缝隙的逻辑推导"。

= 意义与指称（Sinn und Bedeutung）

这是Frege对语言哲学最深远的贡献。1892年发表《论意义与指称》。

== 问题：同一性陈述的认知价值

Frege从一个看似简单的难题出发：

"a = a" 和 "a = b" 之间的区别是什么？
- "启明星 = 启明星"是平凡的分析真理，不提供任何新信息
- 但"启明星 = 长庚星"是一个天文学发现！它提供了新信息

如果名称的意义仅仅在于它所指称的对象，那么"启明星 = 长庚星"应该和"启明星 = 启明星"一样平凡——但显然不是。因此，必须有比"指称"更多的东西。

== Frege的解决方案

Frege区分了三个层面：

*指称*（Bedeutung/reference）：名称所指的对象本身。对于句子而言，指称是*真值*（the True 或 the False）。

*涵义*（Sinn/sense）：对象的"给予方式"（mode of presentation/Art des Gegebenseins）。同一个对象可以以不同的方式被给予。"启明星"和"长庚星"的涵义不同——一个呈现为黎明时可见的星，一个呈现为黄昏时可见的星——但它们指称同一个对象（金星）。

*表象*（Vorstellung/representation）：私人的、主观的心理图像——与逻辑无关。

#quote[
The sense of a proper name is grasped by everybody who is sufficiently familiar with the language or totality of designations to which it belongs; but this serves to illuminate only a single aspect of the reference, supposing it to have one. Comprehensive knowledge of the reference would require us to be able to say immediately whether any given sense belongs to it. To such knowledge we never attain.
]

关键结果：
- 涵义决定指称（Sense determines reference）
- 同一个指称可以对应多个涵义
- 涵义是公共的（可被所有说话者把握），表象是私人的

== 对悖论的分析（Paradox of Analysis）

如果对于任何 "A = B"，"A" 和 "B" 要么有相同的意义要么没有：
- 如果意义相同，则 "A = B" 是平凡的（trivial）
- 如果意义不同，则 "A = B" 是错误的（incorrect）

Frege的解决方案：在 "A = B" 中，"A" 和 "B" 可以有不同的*涵义*但相同的*指称*。因此 "A = B" 既不是平凡地为真（因为它提供了关于涵义的新信息），也不是错误（因为指称相同）。

= 函数与概念：Frege的逻辑本体论

== 对象、函数与概念

Frege提出了一个彻底的区分：

*对象*（Object）：任何不是一个函数的东西。一个对象的表达式不包含任何空位（empty place）。——"I call anything a proper name if it is a sign for an object."

*函数*（Function）：包含空位的不饱和表达式。如 "$f(x) = 2x + 1$"

*概念*（Concept）：一种特殊的函数——其值总是真值（True或False）。如"\_\_\_是一张桌子"这个函数将每个自变元映射到 True 或 False。

#text(size: 15pt)[
  "A concept is a function whose value is always a truth-value." (Frege, 1891)
]

== Proper Name vs Concept Word

- *专名*（proper name）：指代单个对象的表达式（如"月亮"、"火星"）
- *概念词*（concept word）：指代一个概念（如"___是人"、"___是动物"）

Frege特意避免使用"common name"这个传统术语，因为它导致人们错误地认为普通名词以和专名本质上相同的方式关联于对象。这正是他拒绝的——概念词不直接关联于对象，它们通过概念这个"中介层"来关联。

#quote[
The word "common name" leads to the mistaken assumption that a common name is related to objects in essentially the same way as is a proper name … that is why I prefer "concept word" to "common name".
]

= 概念马悖论（The Concept Horse Paradox）

这是Frege哲学中最著名也最富启发的难题之一。

Frege想说出一个明显正确的事实："马是一个概念"（The concept _horse_ is a concept）。

但问题在于：这句话中的主语"马这个概念"处于主语位置。按照自然语言的语法，处于主语位置的表达式似乎指称一个*对象*。然而，如果"马这个概念"指称一个对象，那么说"这个对象是一个概念"就自相矛盾——因为对象和概念是截然不同的逻辑类型。

#quote[
If I say 'the concept horse is a concept', then the first 'concept' (in 'the concept horse') is in fact an object, and the second 'concept' (the predicate) is the actual concept. There is an unavoidable linguistic distortion here.
]

*这是一个深刻的洞见：语言本身的结构迫使我们把概念"物化"（reify）成对象才能谈论它。* 这个悖论揭示了自然语言与逻辑结构之间的根本张力——而这正是Frege构建概念文字的深层原因。

= Frege与Russell、Wittgenstein的对话

== 对Russell的影响

Russell深受Frege的启发，但也发现了Frege系统中的致命缺陷——Russell's Paradox（罗素悖论）：
- 考虑所有那些不属于自身的概念的集合
- 这个集合是否属于自身？
- 如果它属于自身，则它必须不属于自身；如果它不属于自身，则它必须属于自身
- 这个悖论直接摧毁了Frege的 Basic Law V

当Russell在1902年致信Frege告知这一悖论时，Frege正在准备《算术的基本规律》第二卷的出版。他在附录中以一句著名的话回应："A scientist can hardly encounter anything more undesirable than to have the foundation collapse just as the work is finished."

== 对Wittgenstein的影响

早期维特根斯坦在《逻辑哲学论》的序言中明确感谢了"Frege的伟大著作"。维特根斯坦继承了Frege对逻辑分析的基本洞察，但走向了不同的结论——特别是关于"意义"与"指称"的关系，以及逻辑常项的地位问题。

= 语言的活东西：Waismann的补充

Friedrich Waismann（1896–1959），维也纳学派成员，后期维特根斯坦思想的阐释者，提供了一个对Frege式严格形式语言方案的重要补充视角：

#quote[
One must indeed be blind not to see that there is something unsettled about language; that it is a living and growing thing, adapting itself to new sorts of situations, groping for new means of expression, for ever changing.
]

Frege试图构建一个完美的、固定的、无歧义的逻辑语言；Waismann（和后期维特根斯坦）提醒我们：自然语言本身永远在变化、适应和生长。这两种洞察之间的张力构成了分析哲学的核心动力。

#align(center)[
  #text(size: 16pt, font:"KaiTi")[语言不是死板的逻辑系统，而是永远在变的活东西。]
]

= 指定阅读解读：On Sense and Meaning (1892), pp. 151–9

这篇论文是Frege语言哲学的核心文献。指定的页码（pp. 151–9）涵盖了该文的前半部分，是Frege提出并论证*涵义与指称区分*的关键段落。

== 论文的开端：同一性陈述的认知谜题

Frege从一个看似简单的问题出发：为什么"a = b"形式的陈述有时可以提供有价值的知识，而"a = a"则不能？

- "启明星 = 启明星"——是先天的、平凡的、不提供信息
- "启明星 = 长庚星"——是天文学发现！它扩展了我们的知识

如果名称的意义=其指称对象，那么"启明星 = 长庚星"就应该和"启明星 = 启明星"一样平凡——但事实并非如此。因此，名称必须具有*超出其指称*的某种东西。

== 三重区分：指称、涵义、表象

Frege在第152–4页引入了三重区分：

- *指称*（Bedeutung）：名称所指的对象本身。对句子（命题）而言，指称是*真值*——the True 或 the False。这是Frege的独创性贡献：句子的指称不是一个"事态"或"事实"，而是一个真值。
- *涵义*（Sinn/sense）：对象被给予的方式（mode of presentation / Art des Gegebenseins）。涵义是*公共的*——任何充分熟悉该语言的人都可以把握它。涵义包含了指称对象的"认识论路径"。
- *表象*（Vorstellung/idea）：私人的、主观的心理图像——与逻辑无关。不同的人对"月亮"有不同的心理图像，但这些只属于个人。

核心原理：*涵义决定指称*（sense determines reference）。同一个指称可以对应多个涵义（"启明星"和"长庚星"都指金星，但涵义不同）；同一个涵义可能不决定唯一的指称（但Frege认为在完善的逻辑语言中不应出现这种情况）。

== 第156–8页：主从复合句的指称

Frege进一步分析：在间接引语（如"哥白尼相信地球是圆的"）中，从句的指称从真值变为*通常被作其涵义的东西*。这开启了后世关于"命题态度语境"（propositional attitude contexts）和内涵语境（intensional contexts）的大量讨论。

== 论文的哲学意义

- 这是分析哲学史上第一次系统地区分了语言表达式的两个语义层面
- 它为后来的语义学理论（从Tarski到Davidson再到Kripke）提供了基础框架
- 它解决了同一性陈述的认知悖论，同时为逻辑分析保留了指称主义的核心直觉
- 它的涵义概念为"意义"提供了一个客观的、可被公共把握的锚定点——避免了心理主义的陷阱

= 总结：Frege的哲学遗产

Frege的贡献构成了分析哲学的"起点三角"：

1. *逻辑学*：发明了谓词逻辑（量词、函数-自变元分析），使现代逻辑成为可能
2. *语言哲学*：区分涵义与指称（Sinn und Bedeutung），奠定了语义学理论的基础层级
3. *数学哲学*：提出逻辑主义纲领——数学真理可以还原为逻辑真理（虽然后来被哥德尔证明不可能完全成功）

他最深的洞见或许是：*语言不能被视为透明的媒介。* 自然语言的语法形式常常掩盖深层的逻辑形式——而哲学的使命就是揭示后者。

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The sense of a proper name is grasped by everybody who is sufficiently familiar with the language or totality of designations to which it belongs... Comprehensive knowledge of the reference would require us to be able to say immediately whether any given sense belongs to it. To such knowledge we never attain."
  — Gottlob Frege, "On Sense and Meaning" (1892)
]
