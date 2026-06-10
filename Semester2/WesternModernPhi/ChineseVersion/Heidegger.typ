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
  #text(size: 24pt, weight: "bold")[Martin Heidegger（海德格尔）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自老师上课讲义，仅限于知识分享，请勿用于任何商业用途]\

]

= 引语

#quote[
Das Aushalten in der Fragwürdigkeit erscheint als der einzige menschliche Weg, um die Dinge in ihrer Unerschöpflichkeit, d.h. Unverfälschtheit zu bewahren.
(To hold out in this constant questioning appears as the only human way to preserve things in their inexhaustibility, i.e., without distortion.)
— Heidegger, _Die Frage nach dem Ding_ (_What is a Thing_)
]

人只有不断追问、不强行定论，才能让事物保持它本来的丰富与真实，不被我们扭曲。这是海德格尔哲学的核心精神——哲学不是找到答案，而是*保持追问*。

另一个著名的说法："Aristotle was born, worked, and died. Let us, therefore, turn to his thought." 这表达了海德格尔对传记主义的拒绝——重要的不是哲学家的生平故事，而是思想本身。

= 指定阅读解读：Being and Time (1927), Introduction & §7 (pp. 49–63)

指定阅读包括《存在与时间》的导论（Introduction）和第七节（§7：现象学方法），这是海德格尔阐明其核心问题和方法的纲领性段落。

== 导论：追问存在的意义（pp. 21–40 / H. 2–H. 15）

海德格尔的出发点是：*"存在的意义"问题已经被哲学遗忘了千年。* 自从柏拉图和亚里士多德以来，形而上学一直在讨论"存在者"（what-is / das Seiende），但它从未追问使得存在者能够作为存在者而*显现*的那个更根本的问题：*"存在"本身是什么意思？*

海德格尔在导论中做了三件事：
1. *论证重新追问存在的必要性*：存在被当作"最普遍的概念"（所以似乎无需追问）、"不可定义的概念"（所以似乎无法追问）、"自明的概念"（所以似乎无必要追问）。正是这三种成见（universality, indefinability, self-evidence）共同使得存在问题被系统性地遗忘了。
2. *揭示此在的优先地位*：存在总是某个存在者的存在。但不同存在者以不同的方式存在（石头"现成存在"、人"去存在"）。其中，*此在（Dasein）*具有特殊地位——因为此在能够*追问自己的存在*。因此，要理解"存在"的意义，必须首先对*此在*进行存在论分析。
3. *阐明"摧毁"存在论史的任务*：不是否定传统，而是松动已经僵化的概念硬壳，让传统中被遗忘的原始经验重新被听到。

== §7：现象学方法（pp. 49–63 / H. 27–H. 39）

第七节是全书的*方法宣言*。海德格尔在这里讲清楚了什么是他所说的"现象学"。

=== A. 现象概念（pp. 49–52 / H. 28–H. 31）

海德格尔将"现象"（phenomenon / Phänomen）追溯到希腊词 φαινόμενον ("that which shows itself / 那显示自身者")。

- *现象* = 存在者中自身显示自身的东西
- *显象*（semblance / Schein）= 某物可能将自身显示为它所*不是*的东西
- *现象学中的"现象"* = 恰恰是那种首先*不*自身显示自身的东西，但它在自身不显示自身之物中*被一同显现*。这就是*存在的意义*本身——它在日常经验中被遮蔽着（covered up），但正是它使得存在者的显现成为可能。

=== B. 逻各斯概念（pp. 52–5 / H. 32–H. 34）

λόγος（logos / 话语）的原初意义不是"理性"或"判断"，而是*"使……被看见"*（to make manifest what one is talking about）。话语的功能是通过*显示*（apophainesthai）让事物从自身出发被看到。

=== C. 现象学的初步概念（pp. 55–63 / H. 34–H. 39）

"现象学"（phenomenology / Phänomenologie）= λέγειν τά φαινόμενα = *让那自身显示自身者从它自身出发被看到*，就如同它从它自身出发所显示的那样。

海德格尔强调：现象学不是一种"立场"或"流派"——它不过是一种*方法*。"Abandon the label 'phenomenology' — the only question is whether the investigation genuinely lets things show themselves."（现象学这个标签无所谓——唯一重要的问题是：研究是否真的让事物自身显示自身。）

*现象学与存在论的关系*：
- 存在论（ontology）研究存在的意义
- 但存在的意义在日常生活中被遮蔽——它恰恰是那个"不自身显示自身"的东西
- 因此，唯一通向存在论的道路就是现象学——*通过让存在者如何显现自身来揭示那个在显现中被遮蔽的存在*

== 阅读提示

指定阅读的这两个部分建立了海德格尔整个哲学大厦的地基和蓝图。导论说清楚了"为什么"（为什么必须重新追问存在）、"以什么为入口"（以此在的分析为入口）、"怎么走"（通过现象学方法）。§7则展开了"现象学"的方法论内涵——不是把它还原为一种技术规程，而是把它恢复为一种根本的哲学态度：*让事物从自身出发显示自身。*

= 此在（Dasein）

== 什么是此在？

Dasein（being-there/此在）是海德格尔引入的核心概念，用来替代传统哲学中的"意识"（consciousness）、"心灵"（mind）、"主体"（subject）等概念。海德格尔用此在来指称*人*，但不是将人理解为一种现成的实体（如笛卡尔的"思维之物"），而是将人理解为一种*存在方式*。

#quote[
By using Dasein as a replacement for "consciousness" and "mind," Heidegger intended to suggest that an individual is in the world in the mode of "uncovering" and is thus disclosing other entities as well as itself. In other words, Dasein is the "there" — or the locus — of Being and thus the metaphorical place where entities "show themselves" as what they are.
]

关键特征：
- 此在不是与"外在世界"对立的内在"心灵"
- 此在从一开始就*在世界之中*（Being-in-the-world / In-der-Welt-sein）
- 不存在脱离世界的"纯粹意识"——这是海德格尔对笛卡尔以来整个近代哲学传统的根本性批判
- 此在的特征不是"我思"（cogito），而是"去存在"（to be / Zu-sein）

此在与其他存在者的根本区别在于：此在能够*追问*自己的存在。石头存在，但它不关心自己的存在；此在不仅存在，还与其存在*有关系*。

= 三种存在方式（Three Modes of Being）

海德格尔区分了三种根本不同的存在方式：

== 上手状态（Zuhandenheit / Readiness-to-hand / Availableness）

这是*人与世界最本源的关系*——是海德格尔最重要的发现之一。

*例子：锤子。* 当我们使用锤子时，我们并不意识到锤子本身——我们意识到的是我们想要完成的任务（钉钉子、做东西）。锤子处于"上手"状态：它融入我们的活动中，成为我们身体的延伸，不被当作独立的"对象"来审视。

- 此时事物的意义在于其*功能*，而非其*实体*
- 事物"隐退"（withdraw）到使用背景中
- 我们不是先遭遇一个"物"，然后赋予它一个"意义"——在使用中，我们就直接在事物的意义中

*例子：打字时的手机。* 当你专注于发消息时，手机本身消失了——你直接在与对话者交流。

== 现成在手状态（Vorhandenheit / Presence-at-hand / Occurrentness）

当事物*从使用中退出*——当工具坏了、缺失了、或不顺手时——它才作为"对象"显现。

*例子：手机死机了。* 突然，你不再通过手机交流——手机本身作为一个笨重的、黑色的、不工作的物体出现在你面前。你开始"检查"它、"审视"它。

海德格尔的关键判断：*传统哲学和科学错误地将这种派生状态（现成在手状态）当作事物的本源状态。* 当笛卡尔把物质定义为"广延之物"（res extensa）时，他描述的不是我们与世界遭遇的原始方式，而是从原初的上手经验中*抽象出来*的理论化的方式。

== 生存（Existenz / Existence）

这是*此在特有的存在方式*。与物的"现成存在"不同，此在没有固定的本质——其本质就是"去存在"。

- 此在通过*选择和行动*不断成为自己
- 此在的可能性不是"逻辑可能性"，而是*生存的可能性*——这种可能性构成了此在的存在
- "此在的'本质'在于它的生存"（The 'essence' of Dasein lies in its existence）

= 指引总体（Totalities of Relevance）

== 事物的意义不是孤立的

海德格尔的另一个关键洞见：*事物的意义不来自自身，而来自与其他事物的相互指引。*

锤子 → 钉子 → 木板 → 房子 → 居住（保护、家庭……）
手机 → 消息 → 朋友 → 关系 → 共同体……

- *指引总体*（totality of involvements / Bewandtnisganzheit）：每个工具的意义都依赖一个由其他工具、目的和实践构成的整体网络
- 没有这个网络，锤子就不叫"锤子"，而只是一块木头加一块金属
- 这个总体*先于*个体事物：我们先理解了整个"工作坊"的意义，才能理解"锤子"的意义

== 前语言指引 vs 语言指引

- *前语言指引*：在使用中无需思考的自然关联。锤子"指向"钉子——这不是我们在思考后得出的推论，而是我们在使用中直接"看"到的
- *语言指引*：词语对意义的符号化表达（如"锤子"这个词指向锤子这个东西）

海德格尔认为：*前语言指引更根本。* 语言"寄生"于前语言的、实践中的世界理解。这与后期维特根斯坦有深层呼应。

核心论断：*"在世界的照面结构中，起首要作用的不是事物，而是指引；不是实体，而是功能。"*

= 常人、沉沦与本真性

== 常人（das Man / The They）

日常此在的存在状态是*常人*：
- 从众（conformity）：按照他人的标准生活，做"大家都做的事"
- 随波逐流：不选择自己的存在方式，而是被社会规范和期望所塑造
- 在"平均的日常性"（average everydayness）中失去自身
- 这种状态被称为*沉沦*（Fallenness / Verfallen）

#quote[
We take pleasure and enjoy ourselves as _they_ take pleasure; we read, see, and judge about literature and art as _they_ see and judge; likewise we shrink back from the "great mass" as _they_ shrink back; we find "shocking" what _they_ find shocking. The "they", which is nothing definite, and which all are, though not as the sum, prescribes the kind of Being of everydayness.
(Heidegger, _Being and Time_, §27)
]

"常人"不是任何一个具体的人——它是一种匿名的权威，统治着日常生活的所有领域。

== 本真性（Eigentlichkeit / Authenticity）

本真性即*"被居有的生存"*（owned existence）——此在直面自身的存在，承担起自己的选择和命运。

通向本真性的关键是*向死存在*（Being-towards-death / Sein-zum-Tode）：
- 意识到自身的有限性和必死性
- 死亡是"最本己的、无关联的、不可逾越的可能性"（one's ownmost, non-relational, not-to-be-outstripped possibility）
- 正是因为死亡是不可替代的（没有人能替你去死），它才使每一个此在成为*个体*

#quote[
本真的向死存在，是甘愿成为我当下所是，承认那一直都是我。
]

在"常人"状态中，人们用"人会死"（one dies）这种无人称的说法来逃避对死亡的直面。但正是通过直面自己的必死性，此在才能从"常人"的统治中解放出来，真正拥有自己的人生。

= 情绪与语言：此在的展开方式

== 情绪（Stimmung / Mood）

海德格尔认为，情绪不是"纯粹主观的"心理状态，也不是由外部事物引起的反应。情绪是*此在展开自身的基本方式*——在情绪中，我们发现自己已经"在那里"，在世界之中，以某种方式被世界所"触动"。

- 情绪是"前反思的"（pre-reflective）：它不是思想或判断的产物，而是比反思更原初
- 无聊（boredom）揭示的是一个整体上缺乏意义的世界；焦虑（anxiety）揭示的是世界的陌异性和无根基性

== 语言（Rede / Discourse）

海德格尔认为：*语言本身具有此在的存在方式。* 语言不是在世界上出现的又一个"对象"——语言是*意义的展开*（articulation of intelligibility）。我们*就生活*在语言之中，就像我们生活在世界之中一样。

= 海德格尔与西方现代哲学的关联

#grid(
  columns: (1.5fr, 4fr, 4fr),
  column-gutter: 6pt,
  row-gutter: 4pt,
  inset: 6pt,
  stroke: gray,

  align(center)[*关联对象*],
  align(center)[*呼应/交集*],
  align(center)[*根本分歧*],

  [笛卡尔],
  [继承了"自我"作为哲学起点的重要性],
  [彻底拒绝"我思故我在"中的孤立主体：此在从一开始就在世界之中],

  [维特根斯坦],
  [都反对理论的"表象主义"——反对将知识视为"心灵对世界的正确表象"],
  [海德格尔诉诸于现象学描述（"让事物自身显示自身"），维特根斯坦诉诸于语言游戏的描述],

  [默多克],
  [都承认习俗层面之上的道德可能性，都关注"关注"本身的重要性],
  [默多克强调爱和善作为客观实在，海德格尔强调此在的本真选择],

  [萨特],
  [都从海德格尔的此在分析出发，将"存在先于本质"作为人的基本处境],
  [海德格尔拒绝了萨特的"人道主义"解读：他不是在谈论"人的自由"，而是在追问"存在的意义"],
)

= 总结

海德格尔的思想可以浓缩为几个层次：

1. *方法论*：现象学——让事物自身显示自身，而不是将理论框架强加于事物之上
2. *对传统哲学的批判*：从柏拉图到笛卡尔到胡塞尔的整个西方哲学都犯了同一个根本错误——将世界当作"对象"来面对，遗忘了更原初的"在世界之中存在"
3. *肯定的哲学贡献*：上手状态/现成在手状态的区别、指引总体、常人/本真性的分析、"在世存在"作为此在的基本结构
4. *伦理-生存的意义*：直面死亡、承担选择、走出常人的沉沦——成为本真的自己

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The aspects of things that are most important for us are hidden because of their simplicity and familiarity. (One is unable to notice something — because it is always before one's eyes.) The real foundations of their inquiry do not strike people at all. Unless that fact has at some time struck them. — And this means: we fail to be struck by what, once seen, is most striking and most powerful."
  — Ludwig Wittgenstein, _Philosophical Investigations_, §129 (Hannah Arendt found these words deeply resonant with her own philosophy)
]
