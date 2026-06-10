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
  #text(size: 24pt, weight: "bold")[Susanne K. Langer（朗格）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自指定阅读材料，仅限于知识分享，请勿用于任何商业用途]\

]

= 背景简介

Susanne K. Langer（1895–1985）：美国哲学家，20世纪符号学美学（semiotic aesthetics）的核心人物。她的工作横跨逻辑哲学、心灵哲学和艺术哲学。她深受恩斯特·卡西尔（Ernst Cassirer）符号形式哲学的影响，同时继承并批判了分析哲学传统中的符号理论。

核心问题：*艺术是符号吗？如果是，它是什么样的符号？*

主要著作：
- 1942: _Philosophy in a New Key: A Study in the Symbolism of Reason, Rite, and Art_（《哲学新解》）
- 1953: _Feeling and Form: A Theory of Art_（《情感与形式：一种艺术理论》）
- 1967–82: _Mind: An Essay on Human Feeling_（三卷本《心灵：论人类情感》）

Langer明确将 _Feeling and Form_ 定位为 _Philosophy in a New Key_ 的续篇——前者提出了符号理论的基础，后者将其系统地应用于艺术。

= 核心问题与方法

== 哲学的使命

Langer继承了查尔斯·皮尔士（Charles Peirce）对哲学任务的理解：

#quote[
The business of philosophy is to unravel and organize concepts, to give definite and satisfactory meanings to the terms we use in talking about any subject (in this case art); it is, as Charles Peirce said, "to make our ideas clear."
]

Langer明确说明她的书*不做什么*：
- 不提供评判"杰作"的标准
- 不建立品味准则
- 不预测艺术的边界和可能性
- 不教人如何进行艺术创作

这些"规范和裁决"在Langer看来都超出了哲学的领域。哲学的任务是*澄清概念*，而非颁布规则。

== 符号理论的基础

Langer的哲学建立在 _Philosophy in a New Key_ 中发展的符号理论上。核心区分：

*推理性符号*（Discursive Symbolism）：
- 语言和科学属于此类
- 具有语法和词汇的固定结构
- 符号之间的关系是逻辑的、线性的
- 能够表达"思想"而非"情感"

*呈现性符号*（Presentational Symbolism）：
- 艺术作品属于此类
- 不具有固定的"词汇"或"语法"
- 符号作为整体直接呈现其意义
- 能够表达"情感"——即人类感觉的形式（forms of feeling）

这是一个根本性的区分：*艺术不是用一种"艺术语言"来说话；艺术是一种全然不同的符号模式。*

= 艺术作为情感的形式

== 核心命题

Langer的核心主张：*艺术作品是"呈现性符号"，它们表达的不是艺术家的私人情感，而是"情感的形式"——即情感生活的逻辑结构。*

关键区别：
- *表现*（Expression）vs *自我表现*（Self-expression）：当一个人愤怒地尖叫时，他在自我表现——释放情感。但当一个演员在舞台上表演愤怒时，他在*表现*愤怒——将愤怒作为一种可被感知和理解的形式呈现出来。
- 艺术涉及后者，而非前者。

== "情感"的含义

Langer使用的"feeling"（情感/感受）一词范围极广，包括：
- 感官感受（sensation）
- 情绪（emotion）
- 身体感觉（bodily awareness）
- 思想的情调（the affective tone of thought）
- 一切可以被主观感受到的经验品质

艺术表达的是*这些感受的形式*——紧张与释放、上升与下降、展开与收缩、冲突与解决——而非某个具体的人在某个具体时刻的感受内容。

== 艺术符号的独特性

Langer强调，艺术符号（如一曲音乐、一幅画）与语言符号有着本质区别：

- 语言符号具有*固定的涵义单位*（词汇）和*组合规则*（语法），其意义可以通过翻译来传达
- 艺术符号是*不可翻译的*——一幅画的"意思"只能用这幅画本身来表达
- 艺术符号的意义与符号的物质载体*不可分离*——改变声音就改变了音乐，改变色彩就改变了绘画

#quote[
A work of art is a single, indivisible symbol, although a highly articulated one; it is not, like a discourse, composite, analyzable into more elementary symbols.
]

= 与西方现代哲学的对话

== 与维特根斯坦的关系

Langer的符号理论与早期维特根斯坦有深层对话：

- *重合点*：两者都坚持"能说的"（可以用语言表达的）和"不能说的"（只能显示的）之间的严格界限。维特根斯坦在《逻辑哲学论》中说"不可说的必须保持沉默"；Langer则说不可说的可以通过艺术来*呈现*（present），尽管不能被陈述（asserted）。
- *分歧点*：维特根斯坦认为"不可说之物"（伦理、美学、生命意义）只能被显示，任何尝试说它的努力都导向无意义；Langer则认为，*艺术恰恰是一种"显示"的系统性方式*——它不是无意义的（nonsense），而是一种不同的意义模式。

== 与海德格尔的关系

Langer与海德格尔共享一些深层关切：
- 两者都反对将一切意义还原为"陈述性真理"或"命题知识"
- 两者都认为艺术是真理的发生方式——尽管Langer（受卡西尔影响）使用"符号"概念，海德格尔使用"存在"概念
- 两者都关注"世界"如何通过符号/语言/艺术被"开启"

差异在于：Langer保持着分析哲学的清晰性和系统性，她的"符号"理论远比海德格尔的"存在之真理"更为精确和可操作。

== 对逻辑经验主义的批判

Langer的符号理论对逻辑经验主义的"意义标准"构成了有力的挑战。如果只有"推理性符号"（即科学语言）才被认为"有意义"，那么：
- 整个艺术领域要么被排除在意义之外（被视为"情感的宣泄"），要么被强制还原为某种次级的话语形式
- 人类经验中那些*只能通过呈现性符号来表达的维度*——音乐、视觉艺术、舞蹈的建筑性情感——都被哲学抹去了

Langer恢复了艺术在人类意义体系中的根本地位：*艺术不是科学的穷人亲戚，而是一种自主的、根本的、不可替代的符号模式。*

= 指定阅读解读：Feeling and Form (1953), Chapter 1: "The Concept of the Symbol"

第一章是Langer艺术符号理论的基石。她在这一章中完成了两件重要的工作：界定本书的范围和哲学使命，以及建立"符号"的基本概念框架。

== 哲学的任务与本书的限制（Introduction, pp. vii–xii）

Langer在引言中明确说明，本书是 _Philosophy in a New Key_（1942）的续篇——它预设读者已熟悉前作中发展的符号理论。

她清楚列出了本书*不做什么*：
- 不提供评判"杰作"的标准
- 不建立品味准则
- 不预测什么是可能的或不可能的艺术形式
- 不教任何人如何进行艺术创作
- 不将艺术理论与某个"世界假说"（如Stephen Pepper提出的）相协调

她写道："所有这些规范和裁决在我看来都超出了哲学家的领域。哲学的事业是阐明和组织概念，赋予我们谈论任何主题时所使用的术语以确定和令人满意的意义。"

== 第一章的核心：符号的定义与分类

第一章建立了Langer整个美学理论的基石——*符号*（symbol）的概念。Langer区分了：

*信号*（Sign）：指示某物的存在或即将发生——动物也对信号做出反应（烟是火的信号）。信号具有直接的、刺激-反应的功能。

*符号*（Symbol）：不仅指示对象，而且用于*思考*对象。符号是*概念的载体*（vehicle for the conception of objects）——人不仅对"烟"做出反应，还能*想到*火，在火不在场时"谈论"它。这正是人类心智与动物心智的分界线。

== 推理符号系统（Discursive Symbolism）

语言是典型的推理符号系统。其特征包括：
- *词汇*：固定的、约定俗成的涵义单位（字词），每一个都有相对确定的意义
- *语法*：组合规则决定了复杂表达式的合法形成方式
- *可翻译性*：推理符号系统中的陈述可以被翻译成同一语言的等价表述或另一语言

== 呈现性符号系统（Presentational Symbolism）

Langer的突破性贡献在这里：她论证了*存在另一种根本不同的符号模式*——呈现性符号。这种符号：
- *没有固定的词汇或语法*——幅画不是由"最小意义单位"按照规则组合而成的
- *整体性地承载意义*——它的各个部分不能像句子中的词那样被分离和独立定义；任何一个局部的变化都改变整个作品的意义
- *不可翻译*——一幅画的意义无法用文字（或任何其他媒介）完全传达
- *表达的是情感生活的形式*——不是情感的内容（"我昨天很悲伤因为……"），而是情感的结构和动态（紧张与释放、上升与下降、展开与收缩、冲突与解决）

== "有意义的形式"（Significant Form）

Langer继承了Clive Bell的"有意义的形式"概念，但赋予了它精确的符号学基础。艺术作品是一种"有意义的形式"——一种直接呈现情感生活逻辑结构的符号形式。它不是*关于*情感的陈述（像心理学论文那样），而是一个*呈现了*情感形式的*符号整体*。

#quote[
A work of art is a single, indivisible symbol, although a highly articulated one; it is not, like a discourse, composite, analyzable into more elementary symbols.
]

== 阅读提示

第一章为全书建立了方法论原则和概念工具。Langer的雄心是宏伟的：她试图证明艺术不是一个神秘莫测的"非理性"领域，而是像科学和语言一样，是人类符号能力的一种*根本的*、*自主的*、*不可替代的*模式。在科学触及不到的维度——人类情感生活的形式——艺术是唯一的符号模式。

= 总结：朗格思想的哲学意义

1. *拓展了"意义"的概念*：意义不限于命题（"X意味着Y"的真假判断），还包括通过呈现性符号来表达的、不可翻译为推理性语言的情感形式

2. *艺术是认知性的*：艺术不是"美的消遣"或"情感的释放"，它是人类认识自己和世界的一种根本方式——它让我们*看到*情感生活的形式

3. *符号理论的系统化*：Langer继承了卡西尔的"人是符号动物"（animal symbolicum）命题，将其具体化为一套关于不同符号模式的理论

4. *连接分析哲学与大陆哲学*：她既接受分析哲学对清晰性和精确性的追求，又回应了大陆哲学（特别是海德格尔）关于艺术、情感和非命题性意义的关切

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The aim of philosophy is to make our ideas clear. But what does it mean to make an idea of art clear? Not to reduce art to a formula, but to understand what kind of phenomenon we are dealing with when we make or behold a work of art."
  — Susanne K. Langer, _Feeling and Form_
]
