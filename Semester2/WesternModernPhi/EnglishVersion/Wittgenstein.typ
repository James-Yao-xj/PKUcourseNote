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
  #text(size: 24pt, weight: "bold")[Ludwig Wittgenstein]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[Notes compiled from the instructor's lecture materials; for knowledge sharing only; not for any commercial use]\

]

= Background

Ludwig Wittgenstein (1889–1951) is one of the most distinctive and influential philosophers of the 20th century. His philosophical career divides into two starkly different phases, each producing a landmark work:

- *Early* (1910s–1920s): _Tractatus Logico-Philosophicus_ (1921), deeply influenced by Frege and Russell
- *Later* (1930s–1951): _Philosophical Investigations_ (1953), a fundamental critique of his own early thought

Wittgenstein was deeply influenced by Frege and Russell — he explicitly thanked them in the Preface to the _Tractatus_ — but his later work departed radically from the mainstream path of analytic philosophy.

The Preface to _Philosophical Investigations_ states that the book's topics include "the concepts of meaning, of understanding, of a proposition and sentence, of logic, the foundations of mathematics, states of consciousness, and other things" — but its structure is not a linear argument; rather, it consists of "sketches of landscapes made in the course of long and meandering journeys... approaching the same, or almost the same, points from different directions."

= Early Thought: _Tractatus Logico-Philosophicus_ (1921)

== The World Is the Totality of Facts

The _Tractatus_ begins with a series of succinctly numbered propositions:

#quote[
The world is all that is the case.
The world is the totality of facts, not of things.
]

Traditional philosophy holds that the world is composed of individual "things" (such as tables, apples). Wittgenstein points out that the *basic unit* of the world is not things, but "facts" — the state of affairs in which things stand in certain relations.

- A state of affairs (Sachverhalt) is a combination of objects
- Objects are simple, indecomposable — they are the *substance of the world*
- All possible facts together constitute "logical space"
- The actual world is merely that portion of logical space that is realized

For example, "the apple is on the table" is a fact, while "the apple" and "the table" are merely elements that compose the fact.

== The Picture Theory of Language

Core view: *A proposition is a picture of reality*.

- Names in a proposition correspond to objects in the world
- The arrangement of names in the proposition (logical form) corresponds to the way objects combine in a state of affairs
- Therefore, language (in ideal circumstances) can "picture" the world — propositions and facts share the same logical form

But this also means: *Language can only picture what can be pictured.*

== Drawing the Limit: Saying and Showing

The core aim of the _Tractatus_ is to *draw a limit to thought and language*:

#quote[
Thus the aim of the book is to draw a limit to thought, or rather — not to thought, but to the expression of thoughts: for in order to be able to draw a limit to thought, we should have to find both sides of the limit thinkable (i.e. we should have to be able to think what cannot be thought). It will therefore only be in language that the limit can be drawn, and what lies on the other side of the limit will simply be nonsense.
]

Wittgenstein's conclusion:
- *What can be said* (facts expressible by propositions) must be said clearly
- *What cannot be said* (ethics, aesthetics, religion, the meaning of life, logical form itself) must be passed over in silence

=== The Ladder Metaphor

#quote[
My propositions serve as elucidations in the following way: anyone who understands me eventually recognizes them as nonsensical, when he has used them — as steps — to climb up beyond them. (He must, so to speak, throw away the ladder after he has climbed up it.)
]

Wittgenstein's own propositions — including all the propositions in the _Tractatus_ — belong to the category of "what cannot be said." They are nonsensical, but they are the rungs that help the reader "see" this point.

=== The Aphorism of Silence

#text(font: "Bookman Old Style", size: 15pt)[
  #quote("What we cannot speak about we must pass over in silence.")
]

The correct method of philosophy: say only the propositions of natural science (what can be said clearly), and when someone wants to say something metaphysical, point out to them that certain signs in their propositions have been given no meaning.

= Later Thought: _Philosophical Investigations_ (1953)

== From Logical Analysis to Language-Games

The later Wittgenstein completely abandoned his early Picture Theory. He no longer sought the "essence" or "logical form" of language, but instead studied the *actual ways* language is used in human life.

#quote[
This book is written for such men as are in sympathy with its spirit. This spirit is different from the one which informs the vast stream of European and American civilization in which all of us stand. That spirit expresses itself in an onwards movement, in building ever larger and more complicated structures; the other in striving after clarity and perspicuity in no matter what structure.
(Philosophical Remarks, Foreword)
]

Not pursuing vast, complex theoretical edifices, but only pursuing *clarity*, *perspicuity*, *seeing through*.

=== A Story: Is the Question Itself Reasonable?

When a child asks "Why don't people in Australia fall off the edge of the earth?" Wittgenstein would not explain gravity or physical facts, but instead ask back: why don't you fall off the paper? (turning a piece of paper upside down).

Wittgenstein is concerned first and foremost not with the answer, but with *whether the question itself is reasonable*. Many philosophical problems confuse us not because they are too profound, but because their very formulation is *confused*.

== The Critique of Referentialism (PI §§1–43)

Referentialism holds that: the meaning of a word is the object it refers to. This was a shared premise of Frege and Russell (although they developed it in different ways).

Wittgenstein attacks this at the very opening of _Philosophical Investigations_:

- *Augustine's picture of language*: every word has a meaning, and this meaning is the object it stands for. This is "a too simple picture of language."
- Wittgenstein replaces this with the concept of the "language-game" — a language-game is "the whole, consisting of language and the actions into which it is woven" (PI §7).
- Different kinds of words are like different tools in a toolbox — hammer, saw, ruler, glue — they operate in different ways, not all in one way ("standing for an object").

== Meaning as Use

Wittgenstein proposed a revolutionary thesis:

#quote[
For a large class of cases of the employment of the word "meaning" — though not for all — this word can be explained in this way: the meaning of a word is its use in the language.
]

"Meaning is use" is the core insight of the later Wittgenstein:
- Don't ask what a word "stands for" — instead, look at *how it is used* in linguistic life
- The meaning of a word does not lie in some mysterious entity it refers to (Form, universal, sense-datum), but in *what function it performs* in our actual communicative practices
- "Meaning" is not an abstract object, but a *social practice*

Note Wittgenstein's caution: "for a large class of cases... though not for all" — he is not giving a "theory of meaning," but *describing* a way of looking at meaning.

== Language-Games (PI §7, §23)

"Language-game" is the core conceptual tool of Wittgenstein's later philosophy:

- It is not a theory, but an *object of comparison* — by likening language to a game, it displays certain features of language
- Different language-games have different rules, different aims, different participants
- There is no "essence" shared by all language-games
- The expression "language-game" is meant to highlight: *speaking language is part of an activity, or of a form of life*

=== The Variety of Language-Games (PI §23)
- Giving orders and obeying them
- Describing the appearance of an object, or giving its measurements
- Constructing an object from a description (a drawing)
- Reporting an event
- Speculating about an event
- Forming and testing a hypothesis
- Making up a story and reading it
- Play-acting
- Guessing riddles
- Telling jokes
- Requesting, thanking, cursing, greeting, praying

== Family Resemblance (PI §§65–68)

Traditional philosophy (including the early Wittgenstein himself) sought to find the "common essence" of all language use — something shared by all instances of "language."

Wittgenstein rejects this impulse. In its place comes the concept of *family resemblance*:

- Just as in a large family, member A and member B share similar eyes, B and C share a similar nose, C and D share a similar temperament — but there is no single feature shared by *all* members
- The various uses of language are the same — they resemble each other in overlapping and criss-crossing ways, but have no common essence
- "These phenomena have no one thing in common which makes us use the same word for all — but they are related to one another in many different ways"
- "Don't think, but look!"

== The Rule-Following Problem (PI §185)

This is one of the most profound and difficult sections in Wittgenstein's later philosophy.

=== The Problem Scenario

#quote[
Then we get the pupil to continue one series (say "+ 2") beyond 1000 — and he writes 1000, 1004, 1008, 1012.

We say to him, "Look what you're doing!" — He doesn't understand. We say, "You should have added two: look how you began the series!" — He answers, "Yes, isn't it right? I thought that was how I had to do it." — Or suppose he pointed to the series and said, "But I did go on in the same way". — It would now be no use to say, "But can't you see ...?" — and go over the old explanations and examples for him again.
]

The pupil says "I went on in the same way" — he has written 1000, 1004, 1008, 1012 — he thinks he has understood the rule. But how do we prove he is wrong? All the explanations we gave him were *finite examples*. Any finite set of examples can be "continued" in infinitely many ways.

=== Three Interpretations (from course notes)

*Strong Realism / Platonism*:
- "After 2, 4, 6, … 996, 998, 1000 should come 1002, 1004, 1006…" is an *objective fact*
- Objection: there are infinitely many possible ways to continue a given sequence
- Possible response: successful evolution (evolution selected the correct inductive pattern)
- Rebuttal: this is realism, not strong realism

*Constructivism / Anti-Realism*:
- There is no objective fact determining whether the correct continuation of 996, 998, 1000 is 1002, 1004, 1006…
- The standard of correct application of any rule does not exceed the range of our limited human capacity to apply that rule
- The "correctness" of a rule comes from humans — use, practice, convention

*Deflationism*:
- The question that strong realism and constructivism attempt to answer is *fundamentally misguided*
- The question "what constitutes a rule or standard of correctness" does not need to be *solved*; it needs to be *dissolved/deflated*
- Rules do have the features we ordinarily take them to have — there is no need to seek a "deeper foundation" for them
- Objection: "begging the question"
- Possible response: reject the question itself
- Rebuttal: but is this really Wittgenstein?

=== Deeper Significance

The rule-following problem reveals:
- *There are no human-independent, eternal rules* — rules are constructed by humans; correctness comes from use, practice, convention
- *Correctness is limited, human-made, relative*, not absolute
- Wittgenstein is not *denying* the existence of correctness, but questioning the deep assumptions of the question "what makes a rule application correct"
- Ultimately, rule-following *does not rest on interpretation*, but on *practice* and *form of life*

== The Private Language Argument (PI §243–)

Wittgenstein argues: a language that is *logically comprehensible to only one person* is impossible.

- If the meaning of a word lies in its use, and use is essentially a *public* practice (governed by rules, subject to correction), then "private rules" are a contradiction
- A "sensation word" meaningful only to oneself — without a public criterion of use — is not a word at all
- Therefore, the Cartesian "private inner realm" as the source of meaning is an illusion

= From Early to Later: Key Tensions

#grid(
  columns: (5fr, 5fr),
  column-gutter: 8pt,
  row-gutter: 6pt,
  inset: 7pt,
  stroke: gray,

  [*Early (_Tractatus_)*], [*Later (_Philosophical Investigations_)*],
  [Language is a picture of facts], [Language is a toolbox — functionally diverse],
  [Propositions and facts share logical form], [There is no such thing as "logical form"],
  [What cannot be said must be passed over in silence], [Silence itself is a language-game],
  [The task of philosophy is logical clarification], [The task of philosophy is descriptive — "leave everything as it is" (PI §124)],
  [There is an essence of language], [There are only family resemblances — "Don't think, but look!"],
  [Meaning through reference], [Meaning through use],
)

= Assigned Reading Analysis: Philosophical Investigations (1953), §§1, 2, 7, 23, 43, 65–68, 143, 185

_Philosophical Investigations_ is the masterpiece of the later Wittgenstein. The eight assigned passages constitute the skeleton of its core argument.

== §1: Augustine's Picture of Language and "Five Red Apples"

Wittgenstein opens with a passage from Augustine's _Confessions_ that captures a seemingly natural but deeply misleading picture of language: every word has a meaning, and that meaning is the object the word stands for. He then imagines a scenario: a person goes to a shop with a slip marked "five red apples," and the shopkeeper opens the drawer marked "apples," consults the color sample for "red," and counts out "five." This simple scenario reveals that different words operate in *radically different ways* — "apple" is a name, "red" is a standard, "five" is an operation — and cannot be uniformly reduced to "standing for an object."

== §2: The Builders' Language-Game

Wittgenstein imagines the most "primitive" language: a builder and his assistant use four words — "slab," "pillar," "block," "beam" — to communicate. When the assistant hears a call, he brings the corresponding stone. This "complete primitive language" amounts to a whole language-game. It illustrates: language can function meaningfully without definitions, without meta-linguistic descriptions — meaning resides in use.

== §7: The Definition of Language-Game

#quote[I shall also call the whole, consisting of language and the actions into which it is woven, the "language-game".]

A language-game is *the whole interwoven fabric of language and activity*. This is not a theoretical definition but an "object of comparison," meant to let us see the actual workings of language, rather than seeking some hidden essence.

== §23: The Diversity of Language-Games

#quote[But how many kinds of sentence are there? Say assertion, question, and command? — There are countless kinds: countless different kinds of use of what we call "symbols", "words", "sentences". And this multiplicity is not something fixed, given once for all; but new types of language, new language-games, as we may say, come into existence, and others become obsolete and get forgotten.]

Wittgenstein enumerates a series of language-games: giving orders, describing appearances, reporting events, speculating, making up stories, play-acting, guessing riddles, telling jokes, requesting, thanking, cursing, greeting, praying… This list is open-ended. The key insight: *language does not have only one function, as logicians would have us believe.*

== §43: Meaning as Use

#quote[For a large class of cases of the employment of the word "meaning" — though not for all — this word can be explained in this way: the meaning of a word is its use in the language.]

This is the most famous sentence of the later Wittgenstein. But note his caution: "a large class of cases — though not for all." He is not providing a new "theory of meaning," but offering a *descriptive tool* — don't ask "what is the meaning of X?" but look at "how is X used in linguistic life?"

== §§65–68: Family Resemblance

Wittgenstein advances the argument through an imaginary dialogue: an interlocutor insists that there must be a "common essence" shared by all instances of "language." Wittgenstein's answer is: "Don't think, but look!" — look at the overlapping and criss-crossing similarities that actually exist among the various ways language is used, like the similarities among a large family in eyes, nose, gait, temperament — "family resemblances." There is no *single* feature common to all members, yet a network of overlapping and criss-crossing similarities suffices to support our use of the single word "language" to cover all these phenomena.

== §143: Understanding = Mastery of a Technique

Understanding is not a "mental state" or "inner process," but *mastery of a technique*. Wittgenstein imagines someone trying "in their head" to imagine the correct continuation of a melody or a number series — the issue is not "what goes on in their head," but whether they can *actually do it*. The knowledge of understanding is a *practical ability*, not an inner "mental object."

== §185: The Rule-Following Paradox

#quote[Then we get the pupil to continue one series (say "+2") beyond 1000 — and he writes 1000, 1004, 1008, 1012.]

This is one of the most profound passages in the entire book. The pupil has a different "natural" understanding of "going on in the same way" from ours. No finite explanation can rule out *all* possible misunderstandings — for any finite explanation can itself be "understood differently." This exposes a philosophical predicament: the rule itself cannot determine its own application. Wittgenstein's response (developed in subsequent passages) is: at some point, explanation must give way to *practice* — we simply *act* in a certain way, and we naturally tend to continue in the same way. Rule-following is ultimately rooted in the agreement of *form of life*, not in the infinite justification of reason.

= Wittgenstein's Influence on Subsequent Philosophy

Wittgenstein's influence spans multiple fields:

- *Analytic philosophy*: Redefined philosophical method — from theory construction to conceptual clarification
- *Philosophy of language*: Meaning as use — influenced Austin, Searle and others' speech act theory
- *Philosophy of mind*: The Private Language Argument — a powerful challenge to Cartesian dualism
- *Sociology of knowledge*: The practice-based account of rule-following — provided resources for Bloor's "Strong Programme"
- *Ethics*: Though little is said, the insight of "silence" and the concept of "form of life" deeply influenced contemporary metaethics

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The aspects of things that are most important for us are hidden because of their simplicity and familiarity. (One is unable to notice something — because it is always before one's eyes.) The real foundations of their inquiry do not strike people at all. Unless that fact has at some time struck them. — And this means: we fail to be struck by what, once seen, is most striking and most powerful."
  — Ludwig Wittgenstein, _Philosophical Investigations_, §129
]
