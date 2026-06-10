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
  #text(size: 24pt, weight: "bold")[Bertrand Russell（罗素）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自老师上课讲义，仅限于知识分享，请勿用于任何商业用途]\

]

= 背景简介

Bertrand Russell（1872–1970）：20世纪分析哲学（analytic philosophy）的核心奠基人之一。他在逻辑学、语言哲学、认识论、数学哲学和政治哲学等领域都做出了奠基性贡献。他的哲学事业可以理解为对*逻辑清晰性*（logical clarity）和*精确性*（precision）的不懈追求。

主要著作包括 _Principia Mathematica_（1910–13，与怀特海合著）、"On Denoting"（1905）、_The Problems of Philosophy_（1912）、"Knowledge by Acquaintance and Knowledge by Description"（1911）等。1950年获诺贝尔文学奖。

Russell相信：*哲学应该模仿数学*——通过逻辑分析来澄清概念、消除形而上学混乱。哲学的问题常常源于：语法误导（grammatical confusion）、描述歧义（ambiguous descriptions）、表层语法与逻辑形式的不一致。

= 亲知与描述：认识论基础

== Knowledge by Acquaintance（亲知）

Russell区分了两种根本不同的知识类型。*亲知*（acquaintance）是直接的、非推论的知识。我们亲知的对象包括：

- *感觉材料*（sense-data）：如我视野中此刻出现的一块红色
- *我们自己的心理状态*：如我此刻感到的疼痛
- *共相*（universals）：如"红性"（redness）、"相似性"（similarity）等
- *（可能的）自我*：Russell对此持不确定的态度

关键特征：亲知是直接的——在认知者和被认知对象之间没有推论中介。

== Knowledge by Description（描述性知识）

当我们通过一个确定描述知道某物时，我们不需要与该对象有直接亲知。

#quote[
Every proposition which we can understand must be composed wholly of constituents with which we are acquainted.
(Russell 1911)
]

这是Russell的*根本认识论约束原则*：任何我们能够理解的命题，必须完全由我们亲知的要素构成。

当我们说"The F is G"（"那个F的东西是G"）时，我们可能从未与该对象有直接接触。例如：
- "法国现任国王是秃头"
- "班里最高的学生"

我们理解这些命题，即使对象并不存在。这是因为我们亲知了构成该描述的共相（如"国王"、"秃头"等性质）。

== 关键区别

#grid(
  columns: (4fr, 6fr),
  column-gutter: 8pt,
  row-gutter: 6pt,
  inset: 7pt,
  stroke: gray,

  [*Acquaintance（亲知）*], [*Description（描述）*],
  [直接关系（direct relation）], [由属性中介的（mediated by properties）],
  [无需推论], [需要通过命题形式],
  [确定性（certain）], [可错性（fallible）],
  [逻辑上的原子], [逻辑上的构造物],
)

= 论指称（On Denoting）：Russell的摹状词理论

这是Russell最著名的哲学贡献（1905年发表），被公认为"分析哲学的典范"。

== 问题：不存在者的悖论

考虑以下陈述：
- "法国现任国王是秃头"

按照人类直觉，这句话似乎是有意义的（我们可以理解它），但它似乎是*假的*——因为法国根本没有国王。

但如果这句话是假的，那么它的否定就应该为真：
- "法国现任国王不是秃头"

这也似乎是假的——因为没有国王可以被说有头发或无头发。

这个问题涉及到语言如何能够谈论不存在的事物。Meinong的理论认为"法国现任国王"*必须在某种意义上存在*（"存而不在"，subsist），否则我们就不能有意义地谈论它。Russell认为这个结论是荒谬的。

== Russell的解决方案：量化分析

Russell指出，表面上的主谓结构掩盖了真正的逻辑形式。"The F is G" 实际上是一个*量化结构*（quantificational structure），由三个子命题组成：

1. *存在性*：至少有一个东西具有属性F
2. *唯一性*：最多有一个东西具有属性F
3. *谓词归属性*：那个具有属性F的东西也具有属性G


因此，"法国现任国王是秃头"被分析为：
- (1) 存在一个法国国王
- (2) 至多有一个法国国王
- (3) 那个法国国王是秃头

因为子命题(1)是假的，所以整个合取命题是*假的*——不必诉诸于任何神秘的不存在实体！

== 哲学意义

摹状词理论是Russell"逻辑构造主义"（logical constructionism）的核心体现：
- 确定的描述*不是*指称表达式——它们是量化结构
- "非存在对象"等神秘实体被消除了（"robust sense of reality"）
- 表面语法严重误导我们对逻辑形式的理解
- *哲学的任务就是通过逻辑分析揭示真正的逻辑形式*

#quote[
The names that we commonly use, like 'Socrates,' are really abbreviations for descriptions … The only words one does use as names in the logical sense are words like 'this' or 'that.'
(Russell 1918)
]

= 个体与共相（Particulars vs Universals）

== 个体（Particulars）

个体是具体、个别的事物。在Russell的严格逻辑意义上：
- 感觉材料的实例（如"这一块红色"）
- 它们是*逻辑上独立的实体*（logically independent entities）
- 真正的逻辑专名只指向个体——如指示词"this"、"that"

== 共相（Universals）

共相是可重复的实体：
- *属性*（如"红性" redness）
- *关系*（如"大于"、"在……之前"）
- *相似性*（similarity）

Russell捍卫*共相实在论*（realism about universals）：没有共相，逻辑和数学就不可能。这直接与唯名论（nominalism）对立。

= 意义与指称（Meaning vs Denotation）

Russell与Frege都关注意义与指称的区分，但有根本的分歧：

== Frege的方案
- 区分Sinn（涵义）和Bedeutung（指称）
- 涵义是公共的、客观的抽象实体
- 涵义决定指称
- 存在一个"语义层级"：符号 → 涵义 → 指称

== Russell的方案
- 命题是由*实在的成分*（real constituents）构成的复合体
- 没有隐藏的"涵义实体"（sense-entities）
- 确定描述不是单称词项而是量化结构
- 强调*逻辑分析*而非语义层级

关键对比：
- Frege → 语义层级（semantic hierarchy）
- Russell → 逻辑构造主义（logical constructionism）

= 多重关系判断理论（Multiple Relation Theory of Judgement）

Russell的早期判断理论试图解释：当我们判断"苏格拉底是必死的"时，发生了什么？

Russell认为，判断不是判断者与一个抽象命题之间的二元关系（像Frege所认为的），而是*判断者与多个实在成分之间的多重关系*：

- 判断者（J）与苏格拉底、必死性、逻辑形式之间具有一种*多重关系*
- 没有"命题"作为一个独立的抽象实体

这避免了向"假命题"（false propositions）做出本体论承诺的问题——如果判断是对命题的态度，那么假判断似乎意味着"假命题"必须存在。多重关系理论消除了这一困难。

= 逻辑原子主义（Logical Atomism）

Russell的逻辑原子主义是其哲学系统的最终形态：

- *世界*由逻辑原子（个体、简单的共相）构成
- *事实*是原子之间的简单关系
- *命题*是对事实的逻辑图像
- *逻辑形式*是原子结合的方式
- *逻辑分析的终点*是那些不能再被分析的、简单的东西

#quote[
The fundamental epistemological principle in the analysis of propositions containing descriptions is this: Every proposition which we can understand must be composed wholly of constituents with which we are acquainted.
(Russell 1911)
]

这与Wittgenstein早期在《逻辑哲学论》中的观点密切呼应——后者正是受Russell深刻影响的结果。

= 精确性的价值

Russell认为*精确性*本身具有哲学价值：

- 哲学问题常常源于语法误导——语言的表层形式与深层逻辑结构不一致
- 哲学的首要任务不是构建宏大的形而上学体系，而是*澄清混淆*（clarification）
- 逻辑分析是实现这一目标的核心工具
- 哲学不是不同于科学的另一种"真理来源"，而是科学精神的延续——以同样的精确性和严格性来处理更抽象的问题

= 指定阅读解读：Knowledge by Acquaintance and Knowledge by Description (1911), pp. 108–18

这篇论文是Russell认识论的核心文献。指定的页码（pp. 108–18）涵盖了论文的前三分之一，建立了亲知（acquaintance）与描述（description）的根本区分，并阐述了其认识论意义。

== 论文的开端（pp. 108–9）：问题的提出

Russell开门见山：我们经常知道自己关于"the so-and-so"的命题为真，却不知道"so-and-so"究竟是谁或什么。例如："我知道得票最多的候选人将当选，尽管我不知道谁是得票最多的候选人。"问题在于：在此类情形中，*我们到底知道什么*？当知识的对象仅仅是被描述时，知识的对象是什么？

随后，Russell给出了"亲知"的经典定义：

#quote[
I say that I am acquainted with an object when I have a direct cognitive relation to that object, i.e. when I am directly aware of the object itself.
]

亲知 = 直接的认知关系 = 对象被呈现给主体的关系。这不是判断（judgment）的关系，而是呈现（presentation）的关系。

== 亲知的对象种类（pp. 109–11）

Russell在pp. 109–14系统列举了我们能够亲知的对象的种类：

1. *感觉材料*（sense-data）：如我看到颜色、听到声音时直接意识到的对象。感觉材料通常是复杂的——视野中的一块色块包含空间关系。
2. *内省的对象*：在自我意识中，我们似乎直接意识到包含认知和意动关系的变动复合体。"当我看到太阳时，我常常不仅意识到太阳，也意识到我*正在看太阳*这一事实。"
3. *共相*（universals）：如"白性"（whiteness）、"差异性"（diversity）等抽象对象。对共相的直接意识被称为"conceiving"（把握），而被把握的共相被称为"concept"（概念）。
4. *自我*（possible self）：Russell对这一点的态度是谨慎的——他认为自己很可能亲知自我，但不愿意在本文中充分展开论证。

== 认识论约束原则（pp. 116–18）：论文的核心定理

在这些定义的基础上，Russell陈述了他最著名的认识论原则：

#quote[
Every proposition which we can understand must be composed wholly of constituents with which we are acquainted.
]

这被称为*Russell的认识论约束原则*。它的推论包括：
- 如果我们能理解一个包含"拿破仑"的命题，那么"拿破仑"必须是一个我们亲知的要素——但拿破仑已经死了，我们不可能亲知他。因此，"拿破仑"在逻辑意义上不是一个真正的名称，而是一个*缩略的描述*。
- 真正的逻辑专名只能是"this"、"that"这样的指示词——它们直接指向我们亲知的对象（感觉材料）。
- 日常语言中的"名称"只是我们对描述的非正式缩写。

在p. 118，Russell进一步将此原则延伸到判断（judging）："每当一种假设或判断的关系发生时，与假设或判断的心灵相关的那些词项必须是该心灵所亲知的词项。"这意味着，我们不能对未经亲知的要素进行判断——即使我们看似在判断关于"拿破仑"的事，我们实际上是在判断关于某些我们亲知的共相的事（这些共相构成了"拿破仑"的描述）。

== 论文的哲学意义

- 这篇论文彻底改变了分析哲学对"知识"的理解——知识不再是一个统一的"true justified belief"，而是被本质性地分裂为两种基本类型
- 它为Russell的摹状词理论提供了*认识论基础*——之所以需要摹状词的分析，正是因为我们的大多数知识不是亲知，而是通过描述间接获得的
- 它划定了"逻辑原子主义"的界限：逻辑分析的终点就是那些我们只能亲知而不能进一步分析的简单要素

= Russell思想的当代意义

Russell的方法在今天仍然至关重要：
- 分析哲学的核心方法论——将哲学问题转化为逻辑-语言分析——直接源于Russell
- 对AI和计算机科学的影响：类型论（Theory of Types）和逻辑系统的形式化
- 对认识论的贡献：亲知vs描述的区分仍然是关于直接知识与间接知识讨论的基本框架
- 对形而上学的教训：不要被语言的表面形式所迷惑——"存在"不是一个谓词，"无"不是一个名字

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "Three passions, simple but overwhelmingly strong, have governed my life: the longing for love, the search for knowledge, and unbearable pity for the suffering of mankind."
  — Bertrand Russell, _The Autobiography of Bertrand Russell_
]
