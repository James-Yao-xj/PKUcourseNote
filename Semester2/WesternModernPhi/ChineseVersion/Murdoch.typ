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
  #text(size: 24pt, weight: "bold")[Iris Murdoch（默多克）]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[笔记整理自老师上课讲义，仅限于知识分享，请勿用于任何商业用途]\

]

= 背景简介

Iris Murdoch（1919–1999）：爱尔兰裔英国哲学家和小说家。她的哲学融合了分析哲学与大陆哲学传统，受维特根斯坦、海德格尔、萨特和西蒙娜·薇依的影响。出版26部小说，1978年获布克奖。

1938–42年牛津大学（Somerville College），与Elizabeth Anscombe、Philippa Foot、Mary Midgley为同窗。1948–63年在牛津任教。她逆当时牛津主导的行为主义潮流而行，坚持对内在道德生活的关注，在柏拉图旗帜下捍卫道德实在论。

主要哲学著作：
- 1953/87: _Sartre: Romantic Rationalist_
- 1970: _The Sovereignty of Good_（《善的至上性》）
- 1977: _The Fire and the Sun: Why Plato Banished the Artists_
- 1992: _Metaphysics as a Guide to Morals_

= 核心思想：回归内在

== 对现代道德哲学的批判

默多克认为，现代道德哲学（行为主义、存在主义、功利主义）共同塑造了一个她称之为"现代人"的形象，但这个形象是残缺的：

#quote[
I find the image of man which I have sketched above both alien and implausible. That is, more precisely: I have simple empirical objections (I do not think people are necessarily or essentially 'like that'), I have philosophical objections (I do not find the arguments convincing), and I have moral objections (I do not think people ought to picture themselves in this way).
]

这个"现代人"形象的特征：
- *行为主义*：将意义和行动的存在等同于可公开观察的东西
- *存在主义*：消除了实质性的自我，强调孤独而全能的选择意志
- *功利主义*：假定道德只涉及（也只能涉及）公共行为

在这个图景中，道德被还原为公共的、可见的*行为选择*与*意志决断*，而内在的道德生活——注意力的品质、观看的方式、爱的能力——则被完全忽视了。

== 恢复"内在"（Recovery of the Inner）

默多克的核心主张是：*道德哲学必须严肃对待人的内在生活。* 我们不仅仅是行动者，也是感知者、关注者、想象者。

她用一个生动的例子来说明这一点：

M是一位母亲，她对儿媳D怀有敌意。M觉得D虽然是个好心肠的女孩，但不够优雅、缺乏教养、穿着不得体——总之，儿子娶了一个"配不上他的人"。但M表现得极为得体，从未让她的真实感受显露出来。M在心中进行内在的斗争，她可能被诱惑去想象和夸大D的缺点……

#quote[
M looks at D, she attends to D, she focuses her attention. M is engaged in an internal struggle. She may for instance be tempted to enjoy caricatures of D in her imagination. … This activity, as I said, could be described in a variety of ways, but one very natural way is by the use of specialized normative words, what one might call the secondary moral words in contrast to the primary and general ones such as "good". M stops seeing D as "bumptious" and sees her as "gay", etc.
]

关键点：道德变化发生在*内在观看方式的转变*中——不是通过公开的行为选择，而是通过耐心的、充满爱的关注来重新看待他人。

= 道德实在论与"善"的概念

== "善"是客观实在的

默多克继承了G.E. Moore的立场：*"善"（Good）是一个客观的、不可定义的实在。* 她反对现代哲学将"善"还原为意志的功能或情感的投射。

#quote[
I have spoken of efforts of attention directed upon individuals and of obedience to reality as an exercise of love, and have suggested that 'reality' and 'individual' present themselves to us in moral contexts as ideal end-points … Here we retrieve the deep sense of the indefinability of good … Good is indefinable … because of the infinite difficulty of the task of apprehending a magnetic but inexhaustible reality.
]

善不是一个我们可以完全把握的对象；它是一种"磁性的但无穷尽的实在"（magnetic but inexhaustible reality），我们只能通过持续的道德努力来趋近它。

== "去自我化"（Unselfing）

默多克认为，我们的"肥大而顽固的自我"（fat, relentless ego）不断干扰我们对他人和世界的道德关注。因此，道德进步需要一种"去自我化"的过程。

美（Beauty）是"去自我化"的重要工具：

#quote[
I am looking out of my window in an anxious and resentful state of mind, oblivious of my surroundings, brooding perhaps on some damage done to my prestige. Then suddenly I observe a hovering kestrel. In a moment everything is altered. The brooding self with its hurt vanity has disappeared. There is nothing now but kestrel. And when I return to thinking of the other matter it seems less important...
]

在美的体验中，自我暂时消失了，我们纯粹地关注着某种不属于我们自身的东西。这正是道德关注（moral attention）的模型：无私地、充满爱地朝向实在。

默多克将此归功于西蒙娜·薇依的"décreation"概念。

= 道德语言：厚概念与薄概念

== Primary vs Secondary Moral Words

默多克区分了两类道德词汇：
- *基本道德词*（primary moral words）：如"good"（好）、"bad"（坏）——抽象、普遍、内容稀薄
- *次级道德词*（secondary moral words）：如"generous"（慷慨）、"tactful"（得体）、"courageous"（勇敢）、"bumptious"（自以为是）、"gay"（开朗）——具体、丰富、同时兼具描述性和评价性

这后来被Bernard Williams发展为"薄概念"（thin concepts）与"厚概念"（thick concepts）的区分。然而，Williams和现代教科书几乎从未承认默多克的优先贡献。

厚概念的重要性：它们证明道德语言不只是表达个人态度或发布命令——词汇本身承载着对世界的细腻感知和理解。

== 语言的情境隐私性（Contingent Privacy of Language）

默多克提出了一个激进而深刻的观点：*道德语言不可避免地是情境性的、私密的和难以通达的。*

#quote[
This dependence of language upon contexts of attention has consequences. Language is far more idiosyncratic than has been admitted. Reasons are not necessarily and qua reasons public. They may be reasons for a very few, and none the worse for that. "I can't explain. You'd have to know her." … Moral language which relates to a reality infinitely more complex and various than that of science is often unavoidably idiosyncratic and inaccessible.
]

这意味着：
- 道德理解不像科学知识那样可以完全公共化
- "知道一个词的意思"有两种含义：一种与日常公共语言相关联，另一种则更深入——价值概念的知识需要"深度"理解
- 理解过程是"向前的、朝向越来越私密的方向"，而不是"向后追溯到某种非个人的公共语言的规则"

= 反对行为主义-存在主义-功利主义的三位一体

== 对"意志"偶像的拆解

默多克指出，现代道德哲学将"意志"（will）和"选择"（choice）神化了。存在主义（特别是萨特）把道德完全归约为孤独的、任意的意志决断——好像人在面对道德困境时，只有一个空白的、孤立的"选择时刻"。

但默多克认为，*真正的道德工作发生在选择之前*——在日常的关注、想象、反思中，我们逐渐塑造了自己看待世界的方式。所谓"选择"，只是这长期内在工作的冰山一角。

#quote[
The idea that 'good' is a function of the will stunned philosophy with its attractiveness, since it solved so many problems at one blow: metaphysical entities were removed, and moral judgments were seen to be, not weird statements, but something much more comprehensible, such as persuasions or commands or rules.
]

但代价是巨大的——它抹去了整个内在道德生活的领域。

== 对"科学主义"的批判

默多克敏锐地指出，现代道德哲学的种种弊病根源于"不精确的科学观念对哲学家的困扰"（the domination of inexact ideas of science which haunt philosophers and other thinkers）。

#quote[
Psychoanalysis … The notion of an 'ideal analysis' is a misleading one. There is no existing series the extension of which could lead to such an ideal. This is a moral question; and what is at stake here is the liberation of morality, and of philosophy as a study of human nature, from the domination of science: or rather from the domination of inexact ideas of science which haunt philosophers and other thinkers.
]

= 维特根斯坦-海德格尔-默多克的对话

默多克的哲学可以看作是与维特根斯坦和海德格尔的批判性对话：

- *对接维特根斯坦*：默多克引用维特根斯坦关于感觉语言的论述——"如果我们按照'对象与名称'的模式来解释感觉表达的话法，对象就作为无关的东西而从考虑中脱落了"（PI §293）。她认同维特根斯坦对指称主义（referentialism）的批判，但认为维特根斯坦过于关注公共语言，忽视了内在道德经验的私密深度。

- *对接海德格尔*：默多克同意海德格尔对"常人"（das Man）和日常沉沦的批判——"道德的一个特点是，人不能完全停留在习俗层面，而且在某些方面，人也不应当停留在那里"。但她更强调通过*爱和关注*（而非仅仅通过向死存在）来实现本真性。

- *默多克的独特贡献*：在分析哲学传统中恢复柏拉图式的道德实在论——善是客观的，但只能通过持续的、爱的关注来趋近。

= 指定阅读解读：The Sovereignty of Good (1970), "The Idea of Perfection", pp. 1–9

指定的页数（1–9）是默多克《善的至上性》首篇"完美的理念"（The Idea of Perfection）的开篇部分，这是默多克道德哲学的核心文本。

== 论文的起点：哲学的两向运动（p. 1）

默多克以哲学的"回归起点运动"开篇：

#quote[
Philosophy has in a sense to keep trying to return to the beginning: a thing which it is not at all easy to do. There is a two-way movement in philosophy, a movement towards the building of elaborate theories, and a move back again towards the consideration of simple and obvious facts. McTaggart says that time is unreal, Moore replies that he has just had his breakfast. Both these aspects of philosophy are necessary to it.
]

默多克将自己定位在"回归运动"一端——不是去构建更复杂的理论大厦，而是回到那些被当代道德哲学"理论化掉"的简单、明显的事实。她特别指出两个被遗忘的事实："未经审视的生活也可以是道德的"以及"*爱*是道德的核心概念"。

== 对"现代人"形象的批判（pp. 2–8）

默多克从对Stuart Hampshire的分析展开，勾勒出当代道德哲学（行为主义 + 存在主义 + 功利主义的混合体）所构造的"现代人"形象：

*第一，一切意义都在于可公开观察的行为。* Hampshire主张："深思只有在被表达为可听见的言语或可见的行动时才具有限定性"；"内在世界不可避免地寄生于外在世界"；"没有任何东西算作行为，除非它是在世界中引起了可识别的变化。"

*第二，意志与选择的偶像化。* 在Hampshire的框架中，"我认同于我的意志"——我是我所选择和所做的，而不是我所感知和所感受的。思想与我无关（它是"自行其路"的），只有意志的选择才表达了"我"。

*第三，"理想理性人"的幻想。* Hampshire描绘了一个"理想理性人"的形象——他对自己的所有记忆都有意识，他的愿望都被附属于明确的未来可能性，他能完全区分当前处境与无意识的过去记忆。这个理想的人不存在——而默多克追问：我们想要他存在吗？"理想的理性将使我们失去艺术、失去梦想、失去想象、失去不附属于本能需求的喜好和厌恶。"

== M与D：一个示范性的道德叙事（pp. 16–17）

默多克引入了一个具体的故事来阐明她自己的替代性道德图景：

#quote[
A mother, whom I shall call M, feels hostility to her daughter-in-law, whom I shall call D. M finds D quite a good-hearted girl, but while not exactly common yet certainly unpolished and lacking in dignity and refinement. … M does not like D's accent or the way D dresses. M feels that her son has married beneath him.
]

关键设计：M*从不表现出*她的真实感受——她的行为始终完美得体。这意味着，在这个案例中，*所有道德工作的发生完全是内在的。* M通过持续地、耐心地"关注"（attend to）D，进行内心的斗争——"她可能被诱惑去想象和嘲笑D"。但她努力"用正义而充满爱的关注去看D"。

*道德的转变发生在M*改变了她看待D的方式*之时*——当她不再把D看作"自以为是"（bumptious），而是看作"开朗"（gay）——这个转变不是通过一次公开的"选择"，而是通过持续的、耐心的注意力的锻炼。

== 次级道德词的意义（pp. 22）

默多克在指定的页数中发展了她关于"次级道德词"（secondary moral words）的论述。像"慷慨"、"得体"、"勇敢"、"粗俗"、"自以为是"这些词语同时兼具评价性和描述性——它们既报告事实，又承载价值。这种词的丰富性证明了："道德不是一种孤立的意志决断，而是一种对世界的*观看方式*（way of seeing）。"

== 阅读提示

默多克在这9页中完成了一项精巧的哲学工作：通过对Hampshire（作为"现代人"的代言人）的仔细解读，她展示了行为主义-存在主义-功利主义混合体的内在局限——它将道德的所有重量放在公开的、可见的、可被描述为"在世界中带来变化"的东西上，而*系统地忽视了那个不可见的、但更根本的内在道德生活的领域。*

= 总结：默多克的道德哲学核心

默多克的哲学可以概括为以下核心命题：

1. *道德的真实场域在内在生活中*：注意力（attention）和观看方式（seeing）是道德的核心范畴，而非仅仅公开的行为选择

2. *善是客观的实在*：善不是意志的投射或情感的宣泄，而是一种"磁性的但无穷尽的实在"，我们通过道德努力趋近它

3. *语言和道德理解是情境性的*：道德语言不可避免地在某种程度上是私密和难以通达的——这与科学的公共语言形成对比

4. *爱是道德认知的核心能力*：爱不是道德的对立面或附属品，而是看清他人和世界真实面貌的能力

5. *"去自我化"是道德进步的关键*：美的体验和爱的关注可以帮助我们暂时摆脱自我的暴政

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "It is always a significant question to ask about any philosopher: what is he afraid of?"
  — Iris Murdoch, _The Sovereignty of Good_
]
