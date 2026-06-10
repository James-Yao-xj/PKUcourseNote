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
  #text(size: 24pt, weight: "bold")[W. V. Quine（蒯因）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自老师上课讲义与阅读材料，仅限于知识分享，请勿用于任何商业用途]\

]

= 背景简介

Willard Van Orman Quine（1908–2000）：20世纪最有影响力的美国哲学家之一，分析哲学传统中的核心人物。他的工作横跨逻辑学、语言哲学、认识论、形而上学和科学哲学。

Quine深受罗素和卡尔纳普的影响，但他最终走向了对逻辑经验主义（Logical Empiricism）的根本性批判。他的哲学可以理解为一种*自然化的认识论*（naturalized epistemology）——将认识论从"第一哲学"的地位拉下来，使其成为经验心理学的一部分。

主要著作：
- 1951: "Two Dogmas of Empiricism"（《经验论的两个教条》）
- 1953: _From a Logical Point of View_
- 1960: _Word and Object_（《语词与对象》）
- 1995: _From Stimulus to Science_（《从刺激到科学》）

= 经验论的两个教条

Quine在1951年发表的"Two Dogmas of Empiricism"是分析哲学史上最具革命性的论文之一。他指出，传统经验论依赖两个未经证实的教条：

== 教条一：分析-综合的区分（The Analytic-Synthetic Distinction）

自休谟、康德以来，哲学家们一直区分两类真理：
- *分析真理*：仅凭意义为真，不依赖事实（如"所有单身汉都是未婚的"）
- *综合真理*：依赖事实为真（如"巴黎在法国"）

Quine论证：*分析-综合的严格区分是无法维持的。* 所谓"分析真理"要么依赖于同义性（synonymy）这一同样模糊的概念，要么最终需要诉诸于经验事实。不存在一种纯粹的、非经验的"意义真理"。

这个论证的核心步骤：
1. "分析性"概念需要"同义性"概念来解释
2. "同义性"概念要么通过定义来解释（但定义本身依赖于先前的同义性判断），要么通过可互换性来解释（但这又需要模态概念，而模态概念本身就有问题）
3. 因此，分析-综合的区分是"经验的教条"——一个形而上学的信仰，而非一个可被经验证实的区分

== 教条二：还原论（Reductionism）

还原论认为：每一个有意义的陈述都可以被还原为关于直接经验的陈述（如感觉材料的语言），并且每个陈述都可以独立地接受经验的验证或否证。

Quine的批判：*我们的知识不是一个一个孤立的陈述面对经验的审判，而是整个知识体系作为一个整体面对经验的裁決。* 这就是他的"整体论"（holism）或"确证整体论"（confirmation holism）。

= 知识论的自然化（Naturalized Epistemology）

== 从"第一哲学"到经验心理学

传统认识论（自笛卡尔以来）设想自己处于科学"之前"或"之上"，为科学知识提供哲学基础。Quine颠覆了这一图景：

#quote[
Epistemology, or something like it, simply falls into place as a chapter of psychology and hence of natural science. It studies a natural phenomenon, viz., a physical human subject.
(Quine, "Epistemology Naturalized", 1969)
]

*认识论不是科学的"基础"，而是科学的一部分。* 我们研究人类如何从感觉刺激（stimulus）中构建出科学理论，这个研究本身就是一项经验科学的事业。

在 _From Stimulus to Science_ 中，Quine追溯了从最原始的感觉刺激（"surface irritations"）到复杂的科学理论的认知过程。这是一个从物理输入到理论输出的自然历史。

== 自然主义的含义

Quine的自然主义包含几个关键承诺：
- 没有"第一哲学"——不存在先于科学、为科学奠基的哲学
- 哲学与科学的连续性——哲学问题和科学问题之间没有根本的方法论区别
- 对传统认识论问题的重新理解——"我们如何知道？"不再是关于辩护（justification）的规范性问题，而是关于因果机制（causal mechanism）的描述性问题

= 翻译的不确定性（Indeterminacy of Translation）

== 原始翻译（Radical Translation）的思想实验

Quine的翻译不确定性论题是其语言哲学的核心。设想一个语言学家面对一个从未接触过的语言（"原始翻译"情景），他需要根据土著人的言语行为来构建一本翻译手册。

Quine的论证：*不同的翻译手册可能与所有可能的言语行为证据都一致，但彼此之间却互不相容。* 也就是说，翻译不是被行为证据唯一确定的。

经典的"Gavagai"例子：土著人在看到兔子时说"Gavagai"。这个词应该翻译为：
- "兔子"（Rabbit）？
- "兔子的不可分离部分"（Undetached rabbit part）？
- "兔子的时间阶段"（Temporal rabbit stage）？
- "兔性"（Rabbithood）——即兔子的共相？

所有这些翻译都与所有可观察的言语行为一致。当你指着兔子问"这是同一个gavagai吗？"——无论你怎么指，你指的都是同一个兔子、同一个兔子部分、同一个兔子阶段的实例。

== 哲学后果

翻译不确定性的深层含义：
- *意义不是一个独立的实体*：不存在独立于翻译手册的"命题意义"等待被发现
- *指称的不可测知性*（inscrutability of reference）：即使在我们的母语中，也没有事实上的事实（fact of the matter）决定我们的语词"真正"指称什么
- *本体论的相对性*（ontological relativity）：关于"存在什么"的问题，只能用一种背景语言来回答；不存在绝对的回答

= 本体论承诺（Ontological Commitment）

Quine的口号："To be is to be the value of a variable."（存在就是成为一个变元的值。）

这意味着：
- 我们不应该问"X存在吗？"这种空洞的形而上学问题
- 而是应该问：为了使我们最好的科学理论为真，我们的理论必须量化（quantify over）哪些实体？
- *本体论承诺是通过量化结构来揭示的*，而非通过单独的"存在"谓词

Quine自己的本体论是简约的：他承认物理对象和集合（类）的存在，但拒绝命题、意义（meanings）、性质和可能世界等"内涵实体"（intensional entities）。

= 对模态逻辑和本质主义的批判

Quine是模态逻辑的著名批评者。他认为：
- 模态语境（"必然……"、"可能……"）是指称上不透明的（referentially opaque）——它们破坏了同一性替换原则
- "本质属性"（essential properties）概念是无意义的——一个对象具有"必然"具有的属性，取决于我们如何描述它，而非对象本身有什么本质
- 因此，量化模态逻辑（quantified modal logic）是建立在混乱之上的

这一立场使他与Kripke形成了鲜明的对立（参见Kripke笔记）。

= Quine与西方现代哲学传统的关联

Quine的哲学可以看作是弗雷格-罗素-维特根斯坦传统的批判性推进：

#grid(
  columns: (1.5fr, 2.5fr, 3fr),
  column-gutter: 6pt,
  row-gutter: 4pt,
  inset: 6pt,
  stroke: gray,

  align(center)[*学者*],
  align(center)[*继承关系*],
  align(center)[*核心分歧*],

  [弗雷格],
  [继承逻辑分析的方法论传统],
  [Quine拒绝弗雷格关于"思想"（Gedanke）作为抽象实体的观点，认为意义实体在哲学上是可疑的],

  [罗素],
  [继承逻辑构造主义和"奥卡姆剃刀"精神],
  [Quine不接受罗素的"亲知"概念和感觉材料认识论，认为所有的知识最后都是理论构造的],

  [卡尔纳普],
  [早年深受逻辑经验主义影响],
  [Quine的"两个教条"直接摧毁了卡尔纳普的分析-综合区分和还原论纲领],

  [维特根斯坦],
  [继承对语言和意义的深入关注],
  [Quine不赞成维特根斯坦式的"治疗性"哲学方法和"意义即使用"的观点，更倾向于科学的系统理论建构],
)

= 指定阅读解读：From Stimulus to Science (1995), Chapter II: Naturalism, pp. 15–26

指定的页码（15–26）覆盖了Quine晚期著作的第二章"Naturalism"，这是Quine对其"自然化认识论"纲领的最成熟表述。

== 第二章的结构与起点

Quine在该章中追溯了从最原始的感觉刺激到科学理论的自然历史。他的核心问题是：我们如何从"视网膜的照射"（surface irritations）开始，最终构建出关于夸克、黑洞和DNA的复杂科学理论？

第二章的关键进展是：*Quine在这里不只是消极地批判传统认识论，而是积极地描述他自己的替代方案。*

== 从刺激到观察句（Observation Sentences）

Quine的自然化认识论从最"基础的"层面开始：*观察句*（observation sentences）。观察句有两个特征：
1. 它们是"当场可判定的"——说话者只需当场查验感官刺激就能判断其真假
2. 它们是"主体间一致的"——同一语言共同体的所有成员在相同刺激条件下会对该句的真值达成一致

"下雨了"、"这是红色的"——这些就是观察句的范例。它们位于"科学之网"的最外层，直接面对经验的裁決。

注意：即使在观察句层面，*社会性和公共性已经进入了*——观察句不仅是关于私人感觉的，而是关于公共可验证的事态的。

== 理论语言的进化

Quine描述了一个从观察句到越来越抽象的理论句的渐进过程：
- 观察句：直接对感官刺激做出反应
- 观察范畴词：将观察句进行分类（"这只狗"、"那只猫"）
- 理论实体：电子、基因、黑洞——这些不能直接观察到，但通过*假设-演绎方法*与观察句间接关联
- 数学和逻辑：位于科学网络的最内层——最远离直接经验，但也最难以被经验反驳所动摇

== "所有科学都是人类建构"（p. 19）

Quine的核心自然主义论点被浓缩在第二章的一句关键陈述中：

*我们的整个科学理论——从最日常的常识到最抽象的理论物理——只是人类用于预测和控制未来感觉刺激的概念装置。* 没有"上帝的视角"（God's eye view），没有独立于该装置的"真实世界"与"理论"之间的外部比较点。

但这并不意味着Quine是"反实在论者"或"相对主义者"。他认为，*科学是我们最好的——唯一的——认识世界的方式。* "自然化认识论"的要点不是否认科学的认知权威，而是指出：科学不需要为自身寻找一个"先验的"或"形而上学的"基础——它自己就可以研究自己是如何从刺激中成长起来的。

== 对"第一哲学"的最终拒绝（pp. 22–6）

在第二章的后半部分，Quine明确拒绝了笛卡尔以来的"第一哲学"传统。传统哲学将自己设想为科学的基础——哲学的任务是首先确立一些不可怀疑的原则，然后科学的合法性才能建立在这些原则之上。

Quine的回应：
1. 这是不可能的——认识论本身也要利用科学知识（例如心理学、语言学、进化论）
2. 这是不必要的——科学可以通过*自我修正*来改进自己；它不需要一个"外部的"哲学裁判
3. 哲学的使命被重新定义：哲学不是科学的基础，而是科学的延伸——它是"最广义的自然科学"的一部分

== 阅读提示

第二章是理解Quine晚年成熟哲学的最佳入口。它不像"两个教条"那样消极否定，而是积极地描绘了一个从感觉刺激到科学的完整的"自然化认识论"图景。它的核心信息是双重的：(1) 认识论是可能的——但只能是作为经验科学的一部分；(2) 哲学不是消失了，而是被重新定位了——它不再是国王而是公民，不再站在科学之上，而是与科学并肩行走。

= 总结：Quine的哲学遗产

Quine的思想可以浓缩为几个核心论题：

1. *取消分析-综合区分*：不存在纯粹的"意义真理"——所有知识最终都与经验相连续
2. *确证整体论*：我们的信念体系以整体方式面对经验的裁決——任何个别陈述都可以在面对反证时通过调整系统的其他部分来保留
3. *自然化的认识论*：认识论是心理学的一章——我们研究人类如何从感觉刺激中构建科学
4. *翻译不确定性*：意义不是一个独立于翻译手册的事实
5. *本体论承诺标准*："存在就是成为一个变元的值"——通过量化结构来揭示本体论承诺

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "Our talk of external things, our very notion of things, is just a conceptual apparatus that helps us to foresee and control the triggering of our sensory receptors in the light of previous triggering of our sensory receptors."
  — W. V. Quine, _From Stimulus to Science_
]
