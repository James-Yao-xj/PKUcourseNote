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
  #text(size: 24pt, weight: "bold")[Alan Turing（图灵）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自老师上课讲义，仅限于知识分享，请勿用于任何商业用途]\

]

= 背景简介

Alan Turing（1912–1954）：英国数学家、逻辑学家和计算机科学家，被誉为"人工智能的第一位哲学家"。他的工作横跨数学、逻辑、密码学和哲学，奠定了现代计算机科学和人工智能的理论基础。

主要贡献：
- 1936年："On Computable Numbers"（《论可计算数》），提出通用图灵机概念
- 1939–45年：二战期间从事密码分析工作
- 1950年："Computing Machinery and Intelligence"（《计算机器与智能》），提出著名的图灵测试

Turing was an exemplary scholar, especially as AI's first philosopher. Vision, drive, interdisciplinarity, integrity.

= 指定阅读解读：Computing Machinery and Intelligence (1950), pp. 433–4, 442–54

指定的阅读覆盖了这篇经典论文的两个关键部分：开篇的"模仿游戏"设定（pp. 433–4）和后来对各类异议的回应（pp. 442–54）。

== pp. 433–4：模仿游戏的设定

=== 问题的替代而非回答

图灵开篇即宣布："I propose to consider the question, 'Can machines think?'"但他立即指出，试图通过定义"机器"和"思考"来回答这个问题是"危险的"——如果按照这些词的日常用法来定义，答案将沦为"盖洛普民意调查"式的统计结果。因此，*他不用定义来回答这个问题——他用另一个问题来替代它。*

=== 模仿游戏的规则

原始的模仿游戏涉及三个人：一个男人（A）、一个女人（B）和一个询问者（C）。询问者通过打字与另外两人交流，目标是通过提问来确定谁是男人、谁是女人。图灵提出的新形式是：*"当一台机器在游戏中扮演A的角色时，会发生什么？"* 如果询问者在经过充分交流后无法可靠地区分机器和人类，那么机器就通过了测试。

图灵特别强调：测试的设计隔离了"物理能力和智力能力"（physical and intellectual capacities）。询问者看不到、摸不到、听不到参与者的声音——只有打字文本。这使问题集中在*智力*上，而非外表或声音的模仿。

=== 样例题问

图灵给出了几个示例Q&A来展示测试的范围：
- Q: "请为Forth桥主题写一首十四行诗。" A: "别算我。我从来不会写诗。"
- Q: "34957加上70764。" A: "（约30秒后）105621。"
- Q: "你会下棋吗？" A: "是的。" （随后进行K和R对K的国际象棋问题）

这些例子展示测试可以涵盖从算术推理到幽默、从游戏到文学的任何人类活动的领域——同时不因机器不擅长某些非智力特征（如在选美比赛中缺乏魅力）而惩罚它。

== pp. 442–4：对各种异议的回应

在论文的后半部分（pp. 442–54），图灵系统性地回应了九个对机器智能的异议。指定的页面覆盖了其中最关键的几种：

=== 数学异议（The Mathematical Objection）（pp. 444–5）

这是最重要的哲学异议——基于Gödel不完备定理：

"存在某些特定的数学问题，对于这些机器，可以证明它们无法给出正确答案，而人类理智可以。"

图灵的回应是层层递进的：
1. *人类也会犯错*："我们自己回答问题也常常错，因此不足以因机器展现可错性而沾沾自喜。"
2. *优越性是相对的*：我们的优越感只能针对那一台我们赢得了"卑微胜利"的机器——不可能同时战胜所有机器。"可能存在比任何给定机器更聪明的人，但也可能存在更聪明、更强的机器……以此类推。"
3. *机器学习*：使用机器学习方法，机器也可以像人类一样"掌握或证明相关事实"——这不再是关于固定形式系统的问题。

=== 意识异议（The Argument from Consciousness）（pp. 445–6）

"除非一台机器能够写一首十四行诗或创作一首协奏曲，基于它所感受到的思想和情感，而不仅仅是符号的偶然跌落，我们才能同意机器等于大脑——也就是说，不仅写出它，而且*知道它写了它*。"

图灵的回应是：这是一个唯我论式的异议。"A可能认为'A在思考，而B只是假装'——然而，不是假装的标准是什么？"按照这个异议的极端逻辑，唯一的方法是成为那台机器并感受到自己在思考。这意味着"知道一台机器在思考"的唯一方法是"成为那台机器"——这将使关于他人心灵的交流完全不可能。

图灵对此幽默地回应道：与其争论不休，"不如接受一个礼貌的约定：每个人都思考。"

=== 关于"真正的思考"的标准

在整篇论文中，图灵始终反对将"思考"视为某种神秘的本质或不可检验的内在状态。他的哲学策略是*操作主义的*——不定义思考"是什么"，而是提供一个可操作的测试来评估它。但这并不意味着他是"行为主义者"——他只是认为，如果我们最终无法以一个操作化的方式来区分"真正的思考"和"仅仅是模仿"，那么这个区分本身可能就没有我们想象的那样清晰和有用。

== 阅读提示

这篇论文的持久影响力在于它成功地将一个深奥的哲学问题（"什么是思想？"）转化为一个技术性的、可讨论的形式——同时保持了对该问题的深刻哲学敏感度。图灵不是简单地回避形而上学问题，而是以工程学家的精确度和哲学家的审慎来处理它。

= 图灵测试（The Imitation Game）

== 核心问题与方法

图灵在1950年的论文中提出了一个根本性问题："Can machines think?"（机器能思考吗？）但他没有直接回答这个问题，而是用一个行为测试替代了它。

#quote[
I propose to consider the question, 'Can machines think?' This should begin with definitions of the meaning of the terms 'machine' and 'think'... Instead of attempting such a definition I shall replace the question by another, which is closely related to it and is expressed in relatively unambiguous words.
]

图灵提出的"模仿游戏"（Imitation Game）是：一个询问者（C）通过打字与两个房间中的参与者（A和B）交流，其中A是机器、B是人类。如果询问者在经过充分交流后无法可靠地区分机器和人类，那么机器就通过了测试。

== 对图灵测试的常见误解

许多教科书错误地描述了图灵测试：

- 误解一："图灵拒绝'机器能思考吗？'这个问题"——实际上，图灵只是用一个更清晰的行为测试来代替它，而非拒绝这个问题本身
- 误解二："通过测试就等同于思考"——图灵本人并不认为通过测试是思考的充分条件；他将测试视为概念工具，是思考的起点而非答案的终点
- 误解三："图灵测试是行为主义的"——Searle等人如此批评，但图灵的意图远比行为主义更加微妙

图灵自己在1952年BBC广播中说："你可以把它叫做测试，看看机器是否在思考，但最好避免回避问题，说那些通过的机器是（比如说）'A级'机器……我的建议只是说，这是我们应当讨论的问题。它和'机器能思考吗'不太一样，但似乎足够接近我们目前的目的，并且引发了大致相同的困难。"

== 测试的设计哲学

图灵测试的设计有其深思熟虑之处：
- 通过打字交流排除物理外观的干扰（"no engineer or chemist claims to be able to produce a material which is indistinguishable from the human skin"）
- 允许机器展示各种人类能力（数学、棋类、诗歌创作等）
- 不因机器不擅长某些非智力性的人类特征（如享受美食）而惩罚它

图灵幽默地评论道："Possibly a machine might be made to enjoy this delicious dish [strawberries and cream], but any attempt to make one do so would be idiotic."

= 数学异议与哥德尔定理

== 哥德尔不完备定理的背景

Gödel's Theorem: No axiomatization, that is, no finite collection of basic principles and rules (i.e., no algorithm), can ever be strong enough to establish all and only the truths of arithmetic.

哥德尔自己写道："The human mind is incapable of formulating ... all its mathematical intuitions, i.e., if it has succeeded in formulating some of them, this very fact yields new intuitive knowledge ... This fact may be called the 'incompletability' of mathematics."

== Lucas-Penrose 论证（The Mathematical Objection）

Lucas在1961年提出：由于哥德尔不完备定理，任何机器（作为一个形式系统）都存在它无法证明的真命题，但人类心灵可以"看到"这些命题为真。因此，人类心灵超越了任何机器。

#quote[
However complicated a machine we construct, it will ... correspond to a formal system, which in turn will be liable to the Gödel procedure of finding a formula unprovable-in-that-system. This formula the machine will be unable to produce as being true, although a mind can see that it is true. ... Thanks to Gödel's theorem, the mind always has the last word.
]

== 图灵的回应

图灵在1950年就预见了这种异议，并给出了两个层面的回应：

*第一回应*：人类自己也会犯错。"We too often give wrong answers to questions ourselves to be justified in being very pleased at such evidence of fallibility on the part of the machines."

*第二回应*：人类的优越性只能针对某一台特定机器体现，无法同时战胜所有机器。"There would be no question of triumphing simultaneously over all machines. In short, then, there might be men cleverer than any given machine, but then again there might be other machines cleverer again, and so on."

*其他回应*：
- 某些公理系统对人类来说也过于复杂，无法把握
- 机器学习可以让机器像人类一样学习并证明相关事实

= Searle的中文屋论证（The Chinese Room）

== 论证结构

Searle的"中文屋"思想实验试图反驳"强AI"（Strong AI）——即"适当编程的计算机确实就是一个心灵"。

Searle设想：一个不懂中文的人被关在房间里，按照英文规则手册处理中文字符。从外部看，他似乎在"理解"中文，但实际上他根本不懂。Searle认为，计算机就像这个人一样——只是操作符号，并不真正理解。

Key premise: "In the Chinese case I have everything that artificial intelligence can put into me by way of a program, and I understand nothing."

== 对Searle论证的批评

- *组合回应（combination reply）*：如果Searle被放置在真实说话者的大脑中，而他仍然不理解，这是否意味着他的测试本身有缺陷？
- *Searle*声称将心理状态归因于"不是由和我们一样的材料构成的东西"是不自然的，也是错误的
- 中文屋论证并未真正支持Searle的结论——它暴露了更好实验的需求

= 模仿世界论证（The Imitation World）

== 从图灵测试到模仿世界

现代AI的发展（如ChatGPT）使传统图灵测试的充分性受到质疑。课程提出了一个升级版的哲学测试：

*模仿世界论证*（Imitation World Argument）：
+ P1: 在一个替代历史中，机器将具有"人类心灵性"（human mindedness）
+ P2: 我们的人类心灵性 = 替代历史中的"人类心灵性"
+ C: 机器能够获得人类心灵性

这是对传统图灵测试的哲学深化，从"能否在对话中欺骗人类"升级到"能否在完整的社会历史中成为人类"。

== 从机器人存在主义的论证（Argument from Robot Existentialism）

反对论证认为：
+ P1: 在替代历史中，机器将是不本真的（inauthentic）
+ P2: 我们的人类心灵性 ≠ 替代历史中的"人类心灵性"
+ C: 机器不能获得人类心灵性

= 围绕模仿世界的十大异议

#grid(
  columns: (1fr, 8fr),
  column-gutter: 4pt,
  row-gutter: 3pt,
  inset: 5pt,

  [(1)], [*生物学异议*：反对强AI，认为生物性对心灵是必要的],
  [(2)], [*不现实性*：这种替代历史完全不切实际],
  [(3)], [*认识论上不可信*：无知需要荒谬来支撑],
  [(4)], [*言语之争*：这只是词语定义的争论],
  [(5)], [*哥德尔式异议*：Lucas-Penrose论证的延续],
  [(6)], [*功能主义预设*：论证假设了多重可实现性],
  [(7)], [*语义外在论*：不同世界蕴含不同概念],
  [(8)], [*现象学异议*：模仿世界不可设想],
  [(9)], [*Searle的异议*：不要走认识论路线],
  [(10)], [*概念局限性*：我们的概念可能无法把握重要差异],
)

= 图灵的思想遗产

== 图灵、哥德尔与AI哲学的关系

图灵的思考与哥德尔不完备定理共同构成了一个关于心灵与机器的哲学框架：

- *哥德尔*揭示了形式化理性的边界——任何封闭系统都无法涵盖全部真理
- *图灵*提出了一个更务实的问题：与其争论机器"能否"思考，不如问它们在何种程度上能够表现出智能行为
- *现代发展*：大语言模型（如ChatGPT）既不依赖固定的公理系统，也不是传统意义上的符号主义AI，这使得哥德尔定理的挑战形式发生了变化——问题不再是"形式系统能否模拟人类"，而是"统计机器是否可能产生真正的理解"

== 关键的哲学洞察

图灵最深远的贡献不在于给出了"机器能否思考"的明确答案，而在于：
1. 将哲学问题转化为可操作的经验测试
2. 认识到智能不是一种"全有或全无"的属性，而是有程度差异的能力谱系
3. 预见了机器学习和自适应系统的重要性
4. 超越了简单的行为主义和朴素的心灵主义二分法

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The original question, 'Can machines think?' I believe to be too meaningless to deserve discussion. Nevertheless I believe that at the end of the century the use of words and general educated opinion will have altered so much that one will be able to speak of machines thinking without expecting to be contradicted."
  — Alan Turing, 1950
]
