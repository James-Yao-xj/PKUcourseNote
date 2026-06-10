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
  #text(size: 24pt, weight: "bold")[Ludwig Wittgenstein（维特根斯坦）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自老师上课讲义，仅限于知识分享，请勿用于任何商业用途]\

]

= 背景简介

Ludwig Wittgenstein（1889–1951）是20世纪最独特也最具影响力的哲学家之一。他的哲学生涯分为两个截然不同的阶段，每个阶段都产生了一部里程碑式的著作：

- *早期*（1910s–1920s）：《逻辑哲学论》（_Tractatus Logico-Philosophicus_, 1921），深受Frege和Russell的影响
- *后期*（1930s–1951）：《哲学研究》（_Philosophical Investigations_, 1953），对他自己早期思想的根本性批判

Wittgenstein深受Frege和Russell的影响——在《逻辑哲学论》序言中他明确感谢了他们——但他的后期工作彻底背离了分析哲学的主流路径。

《哲学研究》序言中说：本书的主题包括"意义的概念、理解的概念、命题和句子的概念、逻辑、数学基础、意识状态，以及其他事物"——但它的结构不是线性的论证，而是"在漫长而蜿蜒的旅程中绘制的风景素描……从不同的方向不断地接近相同的或几乎相同的点"。

= 早期思想：《逻辑哲学论》（1921）

== 世界是事实的总和

《逻辑哲学论》以一系列简洁的编号命题开始：

#quote[
The world is all that is the case.
The world is the totality of facts, not of things.
]

传统哲学认为世界由一个个独立的"事物"（如桌子、苹果）构成。Wittgenstein指出，世界的*基本单位*不是事物，而是"事实"（facts）——即事物处于某种关系中的状态。

- 事态（state of affairs / Sachverhalt）是对象（objects）的结合方式
- 对象是简单的、不可再分的——它们是*世界的实体*（substance of the world）
- 所有可能的事实共同构成了"逻辑空间"（logical space）
- 现实世界只是逻辑空间中实现了的那一部分

例如，"苹果在桌子上"是一个事实，而"苹果"和"桌子"只是构成事实的元素。

== 语言的图像理论（Picture Theory of Language）

核心观点：*命题是事实的图像*（A proposition is a picture of reality）。

- 命题中的名称对应于世界中的对象
- 名称在命题中的排列方式（逻辑形式）对应于对象在事态中的结合方式
- 因此，语言（在理想情况下）能够"描画"世界——命题和事实共享同一个逻辑形式

但这也意味着：*语言只能描画那些可以被描画的东西。*

== 划界：说与显示（Saying and Showing）

《逻辑哲学论》的核心目标是*为思想和语言划界*：

#quote[
Thus the aim of the book is to draw a limit to thought, or rather — not to thought, but to the expression of thoughts: for in order to be able to draw a limit to thought, we should have to find both sides of the limit thinkable (i.e. we should have to be able to think what cannot be thought). It will therefore only be in language that the limit can be drawn, and what lies on the other side of the limit will simply be nonsense.
]

Wittgenstein的结论是：
- *能说的*（可以被命题表达的事实）必须说清楚
- *不能说的*（伦理、美学、宗教、生命的意义、逻辑形式本身）必须保持沉默

=== 梯子隐喻

#quote[
My propositions serve as elucidations in the following way: anyone who understands me eventually recognizes them as nonsensical, when he has used them — as steps — to climb up beyond them. (He must, so to speak, throw away the ladder after he has climbed up it.)
]

Wittgenstein自己的命题——包括《逻辑哲学论》中的所有命题——都属于"不能说的"范畴。它们是无意义的（nonsensical），但它们是帮助读者"看到"这一点的阶梯。

=== 沉默的箴言

#text(font: "Bookman Old Style", size: 15pt)[
  #quote("What we cannot speak about we must pass over in silence.")
]

哲学的正确方法：只说自然科学的命题（可以说清楚的），当有人想说形而上学的东西时，向他指出他的命题中的某些符号没有赋予意义。

= 后期思想：《哲学研究》（1953）

== 从逻辑分析到语言游戏

后期Wittgenstein彻底放弃了他早期的图像理论。他不再试图寻找语言的"本质"或"逻辑形式"，而是研究语言在人类生活中的*实际使用方式*。

#quote[
This book is written for such men as are in sympathy with its spirit. This spirit is different from the one which informs the vast stream of European and American civilization in which all of us stand. That spirit expresses itself in an onwards movement, in building ever larger and more complicated structures; the other in striving after clarity and perspicuity in no matter what structure.
(Philosophical Remarks, Foreword)
]

不追求庞大复杂的理论建构，只追求*清晰*、*明白*、*看得透*。

=== 一个故事：问题本身是否合理？

当孩子问"为什么澳大利亚的人不会从地球边缘掉下去？"Wittgenstein不会给他解释重力或物理事实，而是反问他：为什么你自己不会从纸上掉下去？（把一张纸倒过来）

Wittgenstein关心的首先不是答案，而是*问题本身是否合理*。许多哲学问题之所以让人困惑，不是因为它们太深奥，而是因为它们的提法本身是*混乱的*。

== 对指称主义的批判（PI §§1–43）

指称主义（referentialism）认为：词语的意义就是它所指称的对象。这是Frege和Russell的共同前提（尽管他们在此基础上做了不同的阐发）。

Wittgenstein在《哲学研究》的开篇就攻击了这一点：

- *奥古斯丁的语言图景*：每个词都有一个意义，这个意义就是该词所代表的对象。这是"一种过于简单的语言观"。
- Wittgenstein用"语言游戏"（language-game）的概念来代替——"语言游戏"是"由语言和那些与语言交织在一起的活动所组成的整体"（PI §7）。
- 不同种类的词就像工具箱里的不同工具——锤子、锯子、尺子、胶水——它们以不同的方式运作，而不是都以一种方式（"代表对象"）运作。

== 意义即使用（Meaning as Use）

Wittgenstein提出了一个革命性的命题：

#quote[
For a large class of cases of the employment of the word "meaning" — though not for all — this word can be explained in this way: the meaning of a word is its use in the language.
]

"意义即使用"（meaning is use）是后期Wittgenstein的核心洞见：
- 不要问一个词"代表什么"——而是看它在语言生活中*被如何运用*
- 词语的意义不在于它所指称的某个神秘实体（理念、共相、感觉材料），而在于它在我们实际的交流实践中*发挥什么功能*
- "意义"不是一个抽象对象，而是一种*社会实践*

注意Wittgenstein的审慎："for a large class of cases...though not for all"——他不是在给出一个"意义理论"，而是在*描述*一种看待意义的方式。

== 语言游戏（Language-Games, PI §7, §23）

"语言游戏"是Wittgenstein后期哲学的核心概念工具：

- 它不是一种理论，而是一种*比较对象*（object of comparison）——通过将语言比作游戏，来显示语言的某些特征
- 不同的语言游戏有不同的规则、不同的目标、不同的参与者
- 不存在所有语言游戏共享的"本质"
- "语言游戏"这个表达意在突出：*说语言是活动的一部分，或者是生活形式（form of life）的一部分*

=== 多样的语言游戏（PI §23）
- 下达命令和服从命令
- 描述一个物体的外观，或给出它的度量
- 从描述（一幅画）构造一个物体
- 报告一个事件
- 推测一个事件
- 形成和测试一个假说
- 编故事和读故事
- 演戏
- 猜谜
- 讲笑话
- 请求、感谢、咒骂、问候、祈祷

== 家族相似（Family Resemblance, PI §§65–68）

传统哲学（包括早期的Wittgenstein自己）试图找到所有语言使用的"共同本质"——某种所有"语言"实例都共享的东西。

Wittgenstein否定了这种冲动。取而代之的是*家族相似*概念：

- 就像在一个大家庭中，成员A和成员B有相似的眼睛，B和C有相似的鼻子，C和D有相似的性格——但没有一个特征是*所有*成员都共享的
- 语言的各种用法也是如此——它们以重叠和交叉的方式相似，但没有共同的本质
- "这些现象并没有一个共同的东西使我们能够以同一个词来涵盖所有——而是它们以许多不同的方式彼此关联"
- "不要想，而是看！"（Don't think, but look!）

== 规则遵循问题（Rule-Following, PI §185）

这是Wittgenstein后期哲学中最深刻也最困难的段落之一。

=== 问题场景

#quote[
Then we get the pupil to continue one series (say "+ 2") beyond 1000 — and he writes 1000, 1004, 1008, 1012.

We say to him, "Look what you're doing!" — He doesn't understand. We say, "You should have added two: look how you began the series!" — He answers, "Yes, isn't it right? I thought that was how I had to do it." — Or suppose he pointed to the series and said, "But I did go on in the same way". — It would now be no use to say, "But can't you see ...?" — and go over the old explanations and examples for him again.
]

学生说"我在以同样的方式继续"——他写下了1000, 1004, 1008, 1012——他认为他理解了规则。但如何证明他错了？我们给他的所有解释都是*有限的例子*。任何有限的例子都可以以无限多种方式被"继续"。

=== 三种解读（从课程讲义）

*强实在论*（Strong Realism / Platonism）：
- "2, 4, 6, … 996, 998, 1000之后应该是1002, 1004, 1006……"是一个*客观事实*
- 反对：无限多种可能的方式可以继续一个给定的序列
- 可能的回应：成功的进化（进化选择了正确的归纳方式）
- 反驳：这是唯实论（realism），不是强实在论

*建构主义*（Constructivism / Anti-Realism）：
- 不存在客观事实来决定996, 998, 1000的正确延续是不是1002, 1004, 1006……
- 任何规则的正确应用标准不超出我们有限的人类能力对该规则的应用范围
- 规则的"正确性"来源于人——使用、实践、约定

*紧缩论*（Deflationism）：
- 强实在论和建构主义试图回答的问题是*根本性误导的*（fundamentally misguided）
- "什么构成了规则或正确性标准"这个问题不需要*解决*，而需要*消解*（dissolve/deflate）
- 规则确实具有我们通常认为它们具有的那些特征——不需要为它们寻找"更深层的基础"
- 反对："回避问题"（begging the question）
- 可能的回应：拒绝这个问题本身
- 反驳：但这真的是Wittgenstein吗？

=== 深层意义

规则遵循问题揭示了：
- *没有独立于人的、永恒的规则*——规则是人建构的，正确性来自使用、实践、约定
- *正确性是有限的、人为的、相对的*，不是绝对的
- Wittgenstein不是在*否认*正确性的存在，而是在质疑"什么使得规则应用成为正确的"这个问题的深度假设
- 最终，规则遵循*不依赖于解释*（interpretation），而是依赖于*实践*（practice）和*生活方式*（form of life）

== 私人语言论证（Private Language Argument, PI §243–）

Wittgenstein论证：一种*逻辑上只能被一个人理解的语言*是不可能的。

- 如果词语的意义在于其使用，而使用本质上是*公共的*实践（受规则支配、可以被纠正），那么"私人的规则"是一个矛盾
- 一个只对自己有意义的"感觉词"——没有公共的使用标准——根本不是一个词
- 因此，笛卡尔式的"内心私有领域"（private inner realm）作为意义的来源是一个幻觉

= 从早期到后期的转变：关键张力

#grid(
  columns: (5fr, 5fr),
  column-gutter: 8pt,
  row-gutter: 6pt,
  inset: 7pt,
  stroke: gray,

  [*早期（《逻辑哲学论》）*], [*后期（《哲学研究》）*],
  [语言是事实的图像], [语言是工具箱——功能多样],
  [命题与事实共享逻辑形式], [不存在"逻辑形式"这种东西],
  [不能说出的必须保持沉默], [沉默本身就是一种语言游戏],
  [哲学的任务是逻辑澄清], [哲学的任务是描述性的——"让一切如其所是"（PI §124）],
  [存在语言的本质], [只有家族相似——"不要想，而是看！"],
  [意义通过指称], [意义通过使用],
)

= 指定阅读解读：Philosophical Investigations (1953), §§1, 2, 7, 23, 43, 65–68, 143, 185

《哲学研究》是后期维特根斯坦的代表作，指定的八个段落构成了其核心论证的骨架。

== §1：奥古斯丁的语言图景与"五个红苹果"

Wittgenstein以奥古斯丁《忏悔录》中一段话开篇，这段话捕捉了一种看似自然但极具误导性的语言观：每个词都有一个意义，而该意义就是该词所代表的对象。然后他设想了一个场景：一个人拿着写有"五个红苹果"的纸条去商店，店主依次打开标有"苹果"的抽屉、查阅"红"的色样、并数出"五个"。这个简单的场景揭示了：不同的词以*完全不同的方式*运作——"苹果"是名称、"红"是标准、"五"是操作——而不能被统一还原为"代表对象"。

== §2：建筑工的语言游戏

Wittgenstein设想了最"原始"的语言：一个建筑工和他的助手使用四个词——"石板"（slab）、"柱"（pillar）、"块"（block）、"梁"（beam）——进行交流。助手听到叫喊就递来相应的石料。这个"完全原始的语言"相当于一个完整的语言游戏。它说明：语言可以在没有定义、没有元语言描述的情况下有意义地运作——意义就在使用之中。

== §7：语言游戏的定义

#quote[I shall also call the whole, consisting of language and the actions into which it is woven, the "language-game".]

语言游戏是*语言与活动交织在一起的整体*。这不是一个理论定义，而是一个"比较对象"（object of comparison），旨在让我们看到语言的实际运作方式，而非寻找某种隐藏的本质。

== §23：语言游戏的多样性

#quote[But how many kinds of sentence are there? Say assertion, question, and command? — There are countless kinds: countless different kinds of use of what we call "symbols", "words", "sentences". And this multiplicity is not something fixed, given once for all; but new types of language, new language-games, as we may say, come into existence, and others become obsolete and get forgotten.]

Wittgenstein列举了一系列语言游戏：下达命令、描述外观、报告事件、推测、编故事、演戏、猜谜、讲笑话、请求、感谢、诅咒、问候、祈祷……这个列表是开放性的。关键洞见：*语言不像逻辑学家让我们相信的那样只有一种功能。*

== §43：意义即使用

#quote[For a large class of cases of the employment of the word "meaning" — though not for all — this word can be explained in this way: the meaning of a word is its use in the language.]

这是后期维特根斯坦最有名的一句话。但注意他的审慎："一大类情况——尽管不是所有情况"。他不是在给出一个新的"意义理论"，而是在提供一种*描述工具*——不要问"X的意义是什么？"，而是看"X在语言生活中如何被使用？"。

== §§65–68：家族相似

Wittgenstein用一个假想的对话来推进论证：对话者坚持认为必定有一个所有"语言"实例共享的"共同本质"。Wittgenstein的回答是："不要想，而是看！"（Don't think, but look!）——看语言的各种使用方式之间实际存在的重叠和交叉的相似性，就像一个大家庭的成员之间在眼睛、鼻子、步态、性情上的相似性——"家族相似"（family resemblances）。没有*一个*特征为所有成员所共有，但一张重叠交叉的相似性网络足以支持我们用"语言"这一个词来涵盖所有这些现象。

== §143：理解 = 掌握技术

理解不是一种"心理状态"或"内在过程"，而是*掌握一种技术*（mastery of a technique）。Wittgenstein设想有人试图"在脑子里"想象一首曲调或一个数列的正确延续——问题不在于"他脑子里发生了什么"，而在于他是否能*实际地*做到。理解的知识是一种*实践能力*（practical ability），不是一种内在的"精神对象"。

== §185：规则遵循悖论

#quote[Then we get the pupil to continue one series (say "+2") beyond 1000 — and he writes 1000, 1004, 1008, 1012.]

这是全书最深刻的段落之一。学生对"以同样的方式继续"有与我们不同的"自然"理解。没有任何有限的解释能够排除*所有*可能的误解——因为任何有限的解释本身都可以被"不同地"理解。这暴露了一个哲学困境：规则本身不能决定自己的应用。Wittgenstein的回应（在后续段落中展开）是：在某个点上，解释必须让位于*实践*（practice）——我们只是以某种方式*做*，而我们自然地倾向于以同样的方式继续。规则遵循最终根植于*生活方式*（form of life）的一致中，而非理性的无限辩护中。

= Wittgenstein对后续哲学的影响

Wittgenstein的影响遍及多个领域：

- *分析哲学*：重新定义了哲学方法——从理论建构转向概念澄清
- *语言哲学*：意义即使用——影响了Austin、Searle等人的言语行为理论
- *心灵哲学*：私人语言论证——对笛卡尔式二元论的强有力挑战
- *知识社会学*：规则遵循的实践解释——为Bloor等人的"强纲领"提供了资源
- *伦理学*：虽所言极少，但"沉默"的洞见和"生活方式"概念深刻影响了当代元伦理学

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The aspects of things that are most important for us are hidden because of their simplicity and familiarity. (One is unable to notice something — because it is always before one's eyes.) The real foundations of their inquiry do not strike people at all. Unless that fact has at some time struck them. — And this means: we fail to be struck by what, once seen, is most striking and most powerful."
  — Ludwig Wittgenstein, _Philosophical Investigations_, §129
]
