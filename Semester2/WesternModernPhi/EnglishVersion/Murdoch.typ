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
  #text(size: 24pt, weight: "bold")[Iris Murdoch]\
  #v(10pt)
  #text(size: 12pt)[_Notes compiled from the instructor's lecture materials; for knowledge sharing only; not for any commercial use_]\

]

= Background

Iris Murdoch (1919–1999): Irish-born British philosopher and novelist. Her philosophy integrates the analytic and continental traditions, influenced by Wittgenstein, Heidegger, Sartre, and Simone Weil. She published 26 novels, winning the Booker Prize in 1978.

1938–42 Oxford University (Somerville College), classmates with Elizabeth Anscombe, Philippa Foot, and Mary Midgley. 1948–63 taught at Oxford. She swam against the prevailing behaviorist current at Oxford, insisting on the centrality of inner moral life and defending moral realism under the banner of Plato.

Major philosophical works:
- 1953/87: _Sartre: Romantic Rationalist_
- 1970: _The Sovereignty of Good_
- 1977: _The Fire and the Sun: Why Plato Banished the Artists_
- 1992: _Metaphysics as a Guide to Morals_

= Core Thought: Returning to the Inner

== Critique of Modern Moral Philosophy

Murdoch holds that modern moral philosophy (behaviorism, existentialism, utilitarianism) jointly constructs an image of "modern man," but this image is impoverished:

#quote[
I find the image of man which I have sketched above both alien and implausible. That is, more precisely: I have simple empirical objections (I do not think people are necessarily or essentially 'like that'), I have philosophical objections (I do not find the arguments convincing), and I have moral objections (I do not think people ought to picture themselves in this way).
]

The features of this image of "modern man":
- *Behaviorism*: Equating the existence of meaning and action with what is publicly observable
- *Existentialism*: Eliminating the substantive self, emphasizing the lonely and omnipotent choosing will
- *Utilitarianism*: Assuming that morality concerns (and can only concern) public actions

In this picture, morality is reduced to public, visible *behavioral choices* and *decisions of the will*, while inner moral life — the quality of attention, the way of seeing, the capacity to love — is entirely neglected.

== Recovery of the Inner

Murdoch's core claim: *Moral philosophy must take the inner life of persons seriously.* We are not merely agents, but also perceivers, attenders, imaginers.

She illustrates this with a vivid example:

M is a mother who feels hostility toward her daughter-in-law, D. M finds D to be a good-hearted girl, but not exactly common yet certainly unpolished and lacking in dignity and refinement — in short, her son has married "beneath him." But M behaves with perfect propriety, never letting her true feelings show. M engages in an inner struggle; she may be tempted to enjoy caricatures of D in her imagination…

#quote[
M looks at D, she attends to D, she focuses her attention. M is engaged in an internal struggle. She may for instance be tempted to enjoy caricatures of D in her imagination. … This activity, as I said, could be described in a variety of ways, but one very natural way is by the use of specialized normative words, what one might call the secondary moral words in contrast to the primary and general ones such as "good". M stops seeing D as "bumptious" and sees her as "gay", etc.
]

The key point: moral change occurs in *a shift in the inner way of seeing* — not through a public behavioral choice, but through patient, loving attention that re-sees another person.

= Moral Realism and the Concept of "The Good"

== "The Good" Is an Objective Reality

Murdoch inherits G.E. Moore's position: *"Good" is an objective, indefinable reality.* She opposes modern philosophy's reduction of "good" to a function of the will or a projection of emotion.

#quote[
I have spoken of efforts of attention directed upon individuals and of obedience to reality as an exercise of love, and have suggested that 'reality' and 'individual' present themselves to us in moral contexts as ideal end-points … Here we retrieve the deep sense of the indefinability of good … Good is indefinable … because of the infinite difficulty of the task of apprehending a magnetic but inexhaustible reality.
]

The Good is not an object we can fully grasp; it is a "magnetic but inexhaustible reality" toward which we can only asymptotically approach through sustained moral effort.

== "Unselfing"

Murdoch holds that our "fat, relentless ego" constantly interferes with our moral attention to others and the world. Therefore, moral progress requires a process of "unselfing."

Beauty is an important instrument of "unselfing":

#quote[
I am looking out of my window in an anxious and resentful state of mind, oblivious of my surroundings, brooding perhaps on some damage done to my prestige. Then suddenly I observe a hovering kestrel. In a moment everything is altered. The brooding self with its hurt vanity has disappeared. There is nothing now but kestrel. And when I return to thinking of the other matter it seems less important...
]

In the experience of beauty, the self temporarily vanishes; we purely attend to something that is not ourselves. This is precisely the model of moral attention: selflessly, lovingly directed toward reality.

Murdoch credits this concept to Simone Weil's notion of "décreation."

= Moral Language: Thick and Thin Concepts

== Primary vs Secondary Moral Words

Murdoch distinguishes two kinds of moral vocabulary:
- *Primary moral words*: such as "good," "bad" — abstract, universal, thin in content
- *Secondary moral words*: such as "generous," "tactful," "courageous," "bumptious," "gay" — concrete, rich, simultaneously descriptive and evaluative

This was later developed by Bernard Williams into the distinction between "thin concepts" and "thick concepts." However, Williams and modern textbooks almost never acknowledge Murdoch's priority in this contribution.

The importance of thick concepts: they demonstrate that moral language is not merely the expression of personal attitudes or the issuance of commands — the words themselves carry nuanced perception and understanding of the world.

== The Contingent Privacy of Language

Murdoch puts forward a radical and profound view: *Moral language is inevitably situational, private, and difficult to access.*

#quote[
This dependence of language upon contexts of attention has consequences. Language is far more idiosyncratic than has been admitted. Reasons are not necessarily and qua reasons public. They may be reasons for a very few, and none the worse for that. "I can't explain. You'd have to know her." … Moral language which relates to a reality infinitely more complex and various than that of science is often unavoidably idiosyncratic and inaccessible.
]

This means:
- Moral understanding, unlike scientific knowledge, cannot be fully made public
- "Knowing the meaning of a word" has two senses: one linked to ordinary public language, the other deeper — knowledge of value concepts requires "deep" understanding
- The process of understanding is "forward, in the direction of the more and more private," not "backward, tracing to some impersonal public language rules"

= Against the Behaviorist-Existentialist-Utilitarian Trinity

== Dismantling the Idol of "Will"

Murdoch points out that modern moral philosophy deifies "will" and "choice." Existentialism (especially Sartre) reduces morality entirely to the lonely, arbitrary decision of the will — as if, when facing a moral dilemma, a person has only an empty, isolated "moment of choice."

But Murdoch holds that *the real moral work happens before choice* — in everyday attention, imagination, and reflection, we gradually shape the way we see the world. So-called "choice" is merely the tip of an iceberg of long-term inner work.

#quote[
The idea that 'good' is a function of the will stunned philosophy with its attractiveness, since it solved so many problems at one blow: metaphysical entities were removed, and moral judgments were seen to be, not weird statements, but something much more comprehensible, such as persuasions or commands or rules.
]

But the cost is immense — it erases the entire domain of inner moral life.

== Critique of "Scientism"

Murdoch acutely identifies the root of the maladies of modern moral philosophy: "the domination of inexact ideas of science which haunt philosophers and other thinkers."

#quote[
Psychoanalysis … The notion of an 'ideal analysis' is a misleading one. There is no existing series the extension of which could lead to such an ideal. This is a moral question; and what is at stake here is the liberation of morality, and of philosophy as a study of human nature, from the domination of science: or rather from the domination of inexact ideas of science which haunt philosophers and other thinkers.
]

= The Wittgenstein-Heidegger-Murdoch Dialogue

Murdoch's philosophy can be seen as a critical dialogue with Wittgenstein and Heidegger:

- *Engaging Wittgenstein*: Murdoch cites Wittgenstein on the language of sensation — "If we construe the grammar of the expression of sensation on the model of 'object and name,' the object drops out of consideration as irrelevant" (PI §293). She endorses Wittgenstein's critique of referentialism, but holds that Wittgenstein is too focused on public language, neglecting the private depth of inner moral experience.

- *Engaging Heidegger*: Murdoch agrees with Heidegger's critique of "das Man" and everyday fallenness — "one of the characteristics of morality is that one cannot entirely rest at the level of convention, and that in some ways one ought not to remain there." But she emphasizes achieving authenticity more through *love and attention* (rather than solely through Being-towards-death).

- *Murdoch's unique contribution*: Restoring Platonic moral realism within the analytic tradition — the Good is objective, but can only be asymptotically approached through sustained, loving attention.

= Assigned Reading Analysis: The Sovereignty of Good (1970), "The Idea of Perfection", pp. 1–9

The assigned pages (1–9) are the opening of "The Idea of Perfection," the first essay in Murdoch's _The Sovereignty of Good_ — the core text of her moral philosophy.

== The Paper's Starting Point: Philosophy's Two-Way Movement (p. 1)

Murdoch opens with philosophy's "return to the beginning" movement:

#quote[
Philosophy has in a sense to keep trying to return to the beginning: a thing which it is not at all easy to do. There is a two-way movement in philosophy, a movement towards the building of elaborate theories, and a move back again towards the consideration of simple and obvious facts. McTaggart says that time is unreal, Moore replies that he has just had his breakfast. Both these aspects of philosophy are necessary to it.
]

Murdoch positions herself at the "return movement" end — not constructing ever more complex theoretical edifices, but returning to those simple, obvious facts that contemporary moral philosophy has "theorized away." She particularly identifies two forgotten facts: "an unexamined life can be virtuous" and "*love* is a central concept in morality."

== Critique of the "Modern Man" Image (pp. 2–8)

Murdoch develops her analysis through a critical engagement with Stuart Hampshire, sketching the image of "modern man" constructed by the contemporary mixture of behaviorism + existentialism + utilitarianism:

*First, all meaning lies in publicly observable behavior.* Hampshire maintains: "deliberation is qualifying only when expressed as audible speech or visible action"; "the inner world is unavoidably parasitic upon the outer world"; "nothing counts as an action unless it brings about a recognizable change in the world."

*Second, the idolization of will and choice.* In Hampshire's framework, "I identify with my will" — I am what I choose and do, not what I perceive and feel. Thoughts have nothing to do with me (they "go their own way"); only the will's choices express "me."

*Third, the fantasy of the "ideal rational man."* Hampshire portrays an "ideally rational man" — one who is conscious of all his memories, whose desires are all subordinated to definite future possibilities, who can fully distinguish present situations from unconscious past memories. This ideal person does not exist — and Murdoch asks: would we want him to exist? "Ideal rationality would deprive us of art, of dreams, of imagination, of likes and dislikes not tied to instinctual needs."

== M and D: A Demonstrative Moral Narrative (pp. 16–17)

Murdoch introduces a concrete story to illuminate her own alternative moral picture:

#quote[
A mother, whom I shall call M, feels hostility to her daughter-in-law, whom I shall call D. M finds D quite a good-hearted girl, but while not exactly common yet certainly unpolished and lacking in dignity and refinement. … M does not like D's accent or the way D dresses. M feels that her son has married beneath him.
]

Key design: M *never expresses* her true feelings — her behavior is consistently impeccable. This means that, in this case, *all the moral work happens entirely internally.* M engages in inner struggle through sustained, patient "attending" to D — "she may be tempted to imagine and caricature D." But she strives to "see D with just and loving attention."

*Moral transformation occurs when M* changes the way she sees D\* — when she no longer sees D as "bumptious" but as "gay" — this transformation occurs not through a single public "choice," but through sustained, patient exercise of attention.

== The Significance of Secondary Moral Words (pp. 22)

In the assigned pages, Murdoch develops her account of "secondary moral words." Words like "generous," "tactful," "courageous," "vulgar," "bumptious" are simultaneously evaluative and descriptive — they both report facts and carry value. The richness of this kind of vocabulary demonstrates: "morality is not an isolated decision of the will, but a *way of seeing* the world."

== Reading Guidance

In these 9 pages, Murdoch accomplishes a delicate philosophical task: through a careful reading of Hampshire (as the spokesman for "modern man"), she reveals the intrinsic limitations of the behaviorist-existentialist-utilitarian mixture — its placing of all the weight of morality on the public, visible, describable-as-"bringing-about-a-change-in-the-world," while *systematically neglecting the invisible but more fundamental domain of inner moral life.*

= Summary: The Core of Murdoch's Moral Philosophy

Murdoch's philosophy can be summarized in the following core theses:

1. *The real field of morality is inner life*: Attention and ways of seeing are the core categories of morality, not merely public behavioral choices

2. *The Good is an objective reality*: The Good is not a projection of the will or a discharge of emotion, but a "magnetic but inexhaustible reality" toward which we approach through moral effort

3. *Language and moral understanding are situational*: Moral language is unavoidably, to some extent, private and difficult to access — in contrast with the public language of science

4. *Love is the core capacity of moral cognition*: Love is not the opposite or an appendage of morality, but the capacity to see others and the world as they truly are

5. *"Unselfing" is the key to moral progress*: The experience of beauty and loving attention can help us temporarily escape the tyranny of the self

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "It is always a significant question to ask about any philosopher: what is he afraid of?"
  — Iris Murdoch, _The Sovereignty of Good_
]
