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
  #text(size: 24pt, weight: "bold")[Kurt Gödel（哥德尔）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自老师上课讲义，仅限于知识分享，请勿用于任何商业用途]\

]

= 背景简介

Kurt Gödel（1906–1978）：奥地利-美国逻辑学家和数学家，最著名的贡献是*不完备定理*（Incompleteness Theorems, 1931）。他不仅是数学家，也是哲学兴趣浓厚的思想家，特别关注形式系统、逻辑、数学真理以及存在论问题。

Gödel在维也纳学派的逻辑和哲学传统中成长，深受Frege、Russell和Cantor的影响。但他最终走向了与维也纳学派主流（逻辑经验主义）截然不同的哲学立场。

他的不完备定理是在怎样的历史背景下产生的？Frege的逻辑主义计划、Russell与Whitehead的《数学原理》、Hilbert的形式主义纲领——这些人都追求同一个伟大抱负：*为数学提供一个绝对严格的、不可动摇的逻辑基础。* Frege相信所有数学真理都可还原为纯逻辑真理；Russell试图通过类型论修复Frege系统中的缺陷（罗素悖论）；Hilbert则提出用有限的、构造性的推理来证明形式数学系统的完全性和一致性。Gödel证明：这个目标是不可能实现的。

= 指定阅读解读：On Formally Undecidable Propositions (1931), pp. 173–9

指定的页码（173–9）是哥德尔1931年论文的开篇部分，这是20世纪最重要的数学-哲学论文之一。

== 论文的结构与起点

哥德尔开篇即阐明其核心目标：证明在 _Principia Mathematica_（PM）及相关系统中，*存在形式不可判定的命题*——即这些命题及其否定在系统内部都无法被证明。

指定的页面涵盖了：
1. 对形式系统（特别是PM）的初步描述
2. 哥德尔编号方案的基本思想
3. 元数学（meta-mathematics）概念的算术化策略

== 核心论证策略

哥德尔的方法论创新是：*将关于形式系统的元数学陈述映射到形式系统内部的算术陈述。*

- 每个符号、每串公式、每个证明序列都被分配一个唯一的自然数（Gödel number）
- 关于可证明性的元数学陈述（"命题P在系统S中可证"）被翻译成关于自然数的算术陈述
- 然后哥德尔构造了一个命题G，该命题在算术上等价于"我在系统S中不可证"
- 如果S是一致的，则G在S中不可证（否则S将证明一个假命题）；但G恰恰陈述了它自己的不可证性——因此G为真

== 对数学基础的冲击

这篇论文直接摧毁了Hilbert的形式主义纲领：
- Hilbert希望用一个"有限的"（finitary）、"构造的"（constructive）元数学来证明数学系统的一致性和完全性
- 哥德尔证明：任何足够强以至包含算术的一致形式系统都无法证明自己的一致性（第二不完备定理）
- 真理与可证明性之间有一个不可弥合的裂隙——*有些真命题在任何给定的形式系统中都不可证*

== 论文的哲学推论

哥德尔本人从这一数学结果中得出了明确的柏拉图主义结论：
- 数学真理不能等同于"在一个形式系统中的可证明性"
- 数学对象（如自然数、集合）具有独立于我们形式系统的客观存在
- 人类心灵能够"看到"某些形式系统无法证明的数学真理——这暗示了心灵与机器的某种根本性差异

值得注意的是，哥德尔在该论文中的表述是极其谨慎和技术化的——他小心翼翼地将其结果的哲学推论与数学内容区分开来。后来的"Gibbs Lecture"（1951）才将他论文中隐含的哲学立场明确地表达出来。

= 哥德尔不完备定理

== 定理的三种非正式表述

第一不完备定理可以以三种方式表述：

1. *"没有任何一套公理系统，能够完整且准确无误地刻画算术的全部真理。"*
   (No axiomatization can determine the whole truth and nothing but the truth concerning arithmetic.)

2. *"任何对算术的公理化系统，必定二者择一：要么是不完备的（抓不住某些算术真理），要么是不可靠的（把某些算术假话也装了进去）。"*
   (Any axiomatization of arithmetic must either be incomplete — fail to capture some arithmetical truths — or be unsound — capture some arithmetical falsehoods.)

3. *"没有任何理论能同时满足这四个条件：足够强、一致、完备、可公理化。"*
   (No theory can be sufficiently strong, consistent, complete, and axiomatizable.)

== 哥德尔编码（Gödel Numbering）

Gödel的证明技术核心是哥德尔编码：将形式语言中的每个表达式分配一个唯一的自然数，使得：

(i) 没有两个表达式被分配相同的自然数
(ii) 存在一个算法，能确定任何给定表达式被分配了什么自然数，也能确定任何给定自然数被分配给了什么表达式（如果有的话）

通过哥德尔编码，Gödel使形式系统能够"谈论自身"——类似于程序能够处理自己的源代码。这是自指（self-reference）的数学基础。

= 数学柏拉图主义（Mathematical Platonism）

Gödel的核心哲学立场是*数学柏拉图主义*：

- *数学对象客观存在*：数、集合、命题不是人类的发明，而是独立于人类思维的客观实在
- *数学真理是"被发现"而非"被创造"的*：数学家的工作更像是探索者发现新大陆，而不是诗人创造新意象
- *即使在一个形式系统内无法被证明的数学命题仍然可以是真实的*：可证明性（provability）不等于真理性（truth）

这与形式主义（如Hilbert）和逻辑经验主义（维也纳学派主流）截然不同。对Gödel而言，不完备定理恰恰证明了他的柏拉图主义：形式系统只是有限的"工具"，不能完全捕捉数学真理的全部。

== 逻辑与知识的绝对性

Gödel深受Frege影响，认为：
- 逻辑规律不是约定俗成的——它们独立于人类思维而存在
- 逻辑真理和数学真理一样，是"发现"的，而非"发明"的
- "人类心灵无法表述其所有数学直觉"——每当我们成功形式化了一些数学直觉，这一事实本身就产生了新的直觉知识（这可以被称为数学的"不可完备化性" incompletability）

= 对不完备定理的常见误解

*误解一*："Gödel定理意味着某些算术真理是无法被证明的。"
——事实：Gödel定理涉及的是*给定公理系统内*的可证明性，而非绝对意义上的不可证明。一个系统无法证明的命题，可能在另一个更强的系统中可以被证明。

*误解二*："Gödel定理适用于所有领域。"
——事实：不完备定理特别涉及算术（或任何足够强以至于包含算术的系统），并非适用于所有领域。

*误解三*："Gödel定理证明了上帝的存在。"
——事实：这是对Gödel思想的严重误解。Gödel本人确实有他独立的"存在论证明"（ontological proof），但这与不完备定理是完全不同的话题。

*误解四*："Gödel证明了存在断言自身不可证明的算术命题。"
——事实：这是一个过度简化。

= Gödel与AI：数学异议的哲学脉络

== 从Gödel到Turing到Lucas

课程讲座梳理了一个重要的哲学脉络：

*Cantor*的工作（对角线论证）奠定了"无限有不同的阶"这一概念，这是后来所有"自指"论证的数学基础。

*Gödel*的不完备定理 → 任何足够强的形式系统都存在不可判定的命题

*Turing*将此转化为关于机器的数学异议（The Mathematical Objection）：
"我们已知机器会失败的那类问题是这样的：'考虑如下规格的机器……这台机器会对任何问题回答"是"吗？'……这是一个数学结果：据说它证明了机器的无能，而人类理智不受此限制。"

*Lucas*（1961）在"Minds, Machines and Gödel"中论证：
#quote[
However complicated a machine we construct, it will correspond to a formal system, which in turn will be liable to the Gödel procedure of finding a formula unprovable-in-that-system. This formula the machine will be unable to produce as being true, although a mind can see that it is true. … Thanks to Gödel's theorem, the mind always has the last word.
]

*Turing的回应*（1950，预见了Lucas的论证）：
- 人类自己也经常给出错误答案——我们没有理由因为机器的可错性而沾沾自喜
- 人类的优越性只能针对某一台特定机器体现——无法同时战胜所有机器
- "可能存在比任何给定机器更聪明的人，但同样可能存在比人类更聪明的机器，以此类推"

== 现代AI视角下的不完备性

在当代大模型AI中，这一讨论变得更微妙：
- 大模型并不依赖固定的公理或逻辑推导——它们通过统计学习和模式生成来"预测"输出
- 问题不再是"形式系统能否模拟人类"，而是"统计机器是否可能产生真正的理解"
- Gödel最深远的哲学影响或许是揭示了*形式化理性的边界*：任何封闭系统都无法涵盖全部真理，而理解可能永远超出规则和算法的范围

= 哥德尔宇宙：时间与存在论

晚年Gödel对物理学和哲学也有兴趣，尤其是时间哲学。他提出了著名的*哥德尔宇宙解*（Gödel Universe）——一种允许闭合时间曲线（closed timelike curves）的爱因斯坦场方程解。

这触及了深刻的哲学问题：
- 如果时间旅行在逻辑上可能，那么时间的本质是什么？
- 存在是否具有客观的结构，独立于我们对它的时间性经验？
- 这反映了Gödel一贯的柏拉图主义：物理世界（像数学世界一样）具有独立于人类经验的客观结构

= Gödel与西方现代哲学传统的对比

#grid(
  columns: (1.2fr, 1fr, 2.5fr, 2.8fr),
  column-gutter: 6pt,
  row-gutter: 5pt,
  inset: 7pt,
  stroke: gray,

  align(center)[*学者/流派*],
  align(center)[*时间*],
  align(center)[*核心观点*],
  align(center)[*与Gödel关系*],

  [Frege],
  [1848–1925],
  [数学逻辑主义，数学可归结为逻辑，逻辑是绝对客观的],
  [Gödel深受Frege影响，继承逻辑主义思想，但强调数学柏拉图主义与不完备性],

  [Russell],
  [1872–1970],
  [逻辑主义，集合论悖论发现者；数学基础依赖逻辑与集合论],
  [Gödel在不完备定理中用到Russell的类型论背景，但超越了形式化系统的局限],

  [Hilbert],
  [1862–1943],
  [数学形式主义，追求系统完备性和一致性],
  [Gödel直接挑战Hilbert的形式主义理想：不完备定理表明数学系统不可能完全完备],

  [维也纳学派],
  [20世纪初],
  [逻辑经验主义，数学和逻辑由经验或语言分析决定],
  [Gödel反对逻辑经验主义：数学真理独立于经验，强调客观存在],

  [Cantor],
  [1845–1918],
  [无限集合理论创始人，数学中存在客观的无限],
  [Gödel受Cantor影响，认可数学对象客观存在，尤其是集合和数理对象],

  [Wittgenstein],
  [1889–1951],
  [语言哲学家，早期强调逻辑语言界限，晚期强调语言使用],
  [Gödel批评Wittgenstein对数学真理的"语言限制"观点，认为真理独立于语言],

  [Turing],
  [1912–1954],
  [计算理论创始人，提出通用图灵机和图灵测试],
  [Gödel定理是Turing关于机器智能的"数学异议"的基础；Turing本人对Lucas式论证持批评态度],
)

= 总结

Gödel的哲学遗产可以概括为：

1. *揭示范式化理性的边界*：任何封闭的形式系统都无法涵盖全部数学真理——"真理不等于可证明性"
2. *数学柏拉图主义*：数学世界是客观存在的人类发现，而非人类发明
3. *对AI和心灵哲学的深远影响*：不完备定理引发了关于"人类心灵是否可被机械化"的持续争论
4. *对逻辑主义和形式主义的致命打击*：Frege、Russell和Hilbert的宏大理想被证明在原则上不可能实现

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The human mind is incapable of formulating ... all its mathematical intuitions, i.e., if it has succeeded in formulating some of them, this very fact yields new intuitive knowledge ... This fact may be called the 'incompletability' of mathematics."
  — Kurt Gödel, 1951 Gibbs Lecture
]
