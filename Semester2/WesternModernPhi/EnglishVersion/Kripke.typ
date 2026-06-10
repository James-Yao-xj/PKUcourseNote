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
  #text(size: 24pt, weight: "bold")[Saul Kripke]\
  #v(10pt)
  #text(size: 12pt)[_Notes compiled from assigned reading materials; for knowledge sharing only; not for any commercial use_]\

]

= Background

Saul A. Kripke (1940–2022): American philosopher and logician, one of the most original analytic philosophers of the 20th century. His _Naming and Necessity_ (1972/1980) is one of the most far-reaching works in the history of analytic philosophy, utterly overturning the mainstream theory of names and reference that had held sway since Frege and Russell.

Kripke made foundational contributions to modal logic (possible worlds semantics) while still a teenager, but his greater philosophical impact came from his radical reconstruction of language, metaphysics, and epistemology.

_Naming and Necessity_ originated as three lectures delivered at Princeton University in 1970, published as a book with minimal revision. The sheer originality of its content and the power of its arguments made it a classic of analytic philosophy.

= The Theory of Names: Critique of Descriptivism

== Descriptivism: The Frege-Russell Tradition

Since Frege and Russell, the mainstream view in analytic philosophy regarding proper names has been:

*The meaning of a proper name is equivalent to a definite description or cluster of descriptions associated with it.*

For example: the meaning of the name "Aristotle" might be "the greatest student of Plato," "the teacher of Alexander the Great," "the author of the _Nicomachean Ethics_," etc.

This theory has many attractive features:
- It explains why "Aristotle = the author of the _Nicomachean Ethics_" is not trivially true (it provides information)
- It explains how names can refer to objects (through descriptions)
- It explains how we can talk about non-existent things (such as "Santa Claus," "the golden mountain")

== Kripke's Critique: The Modal Argument

Kripke's core argument is: *if proper names are equivalent to descriptions, they should have the same modal properties — but they do not.*

Consider:
1. "Aristotle" (proper name)
2. "The teacher of Alexander the Great" (description)

If (1) and (2) have the same meaning, then:
- "If Aristotle exists, then Aristotle is the teacher of Alexander the Great" should be a necessary truth (analytic truth) — but it clearly is not! Aristotle could perfectly well have never taught Alexander.

Kripke's conclusion: *Names are "rigid designators"; they designate the same object in every possible world.* Descriptions are not rigid — "the teacher of Alexander the Great" could designate different people (or no one at all) in different possible worlds.

== Rigid Designator

Definition: A term is a rigid designator if and only if it designates the same object in every possible world in which that object exists.

- *Proper names* ("Aristotle," "Paris") are rigid designators
- *Natural kind terms* ("water," "gold," "tiger") are also rigid designators
- *Definite descriptions* ("the teacher of Alexander the Great," "the present King of France") are typically *not* rigid designators

== The Causal-Historical Theory of Reference

If a proper name does not determine its reference through a description, how does it do so?

Kripke's alternative (sketched rather than fully developed) is: *A proper name is connected to the object it names through a "causal-historical chain."*

- Initially, the object is assigned a name in some form of "initial baptism"
- Then, through a chain of communication (speakers passing on the referential intentions of others to the next person), the use of the name is propagated throughout the linguistic community
- As long as a speaker stands at the end of an appropriate historical causal chain, they can successfully use the name to refer to the original object — even if they possess no uniquely identifying description of that object

Important feature: This theory is not "you must know facts about the object" but rather "you must stand in an appropriate historical relation to the object."

= Necessity and Possible Worlds

== Possible Worlds Semantics

Kripke's conception of possible worlds differs from the extreme realism of David Lewis and others:

- *Possible worlds are not "distant planets"* — they are *ways the world could have been*
- Possible worlds are "stipulated," not "discovered"
- When we say "Aristotle might not have taught Alexander," we are not talking about some other planet where someone resembling Aristotle did not teach someone resembling Alexander — we are saying: this actual world might have been such that Aristotle did not become Alexander's teacher

== Necessary A Posteriori

The traditional distinction since Kant has been:
- Analytic = necessary = a priori
- Synthetic = contingent = a posteriori

Kripke breaks these equations. He argues for:

The existence of *Necessary _a posteriori_ truths*:
- "Water is H₂O" — this truth was *discovered empirically* (a posteriori), but once discovered, we recognize: in any possible world, water is necessarily H₂O (necessarily water)
- "Hesperus is Phosphorus" — both are rigid designators (proper names), both designate the same object, so this identity statement is *necessary* — even though it required astronomical observation to know (a posteriori)
- "This table is made of this piece of wood" — if it is indeed made of this piece of wood, then in every possible world, it originates from this piece of wood (the essentiality of origin)

== Contingent A Priori

Kripke also argues for the existence of contingent a priori truths:
- "The standard meter bar S is one meter long" — this is an *a priori* truth (it holds by definition), but it is *contingent* (the meter bar S could have different lengths at different temperatures; the length of one meter is a contingent physical fact)

= Essentialism

== The Rehabilitation of Essential Properties

Under the powerful critiques of Quine and others, the traditional Aristotelian distinction between "essence" and "accident" was regarded in the mid-20th century as obsolete metaphysics. Kripke's work restored philosophical respectability to essentialism.

Kripke's essentialism involves two key concepts:

*Essentiality of Origin*:
- An organism necessarily originates from the particular gametes (sperm and egg) from which it actually originated
- A table is necessarily made from the particular piece of wood from which it was actually made

*Essentiality of Kind*:
- If something is water, it is necessarily H₂O in every possible world
- If something is gold, it is necessarily the element with atomic number 79 in every possible world
- If something is a tiger, it necessarily has the internal biological structure of tigers in every possible world

== Response to Quine

Quine had mocked essentialism: saying that a person is "essentially rational" and "contingently two-legged" depends entirely on how we describe them — mathematicians and philosophers might emphasize rationality, while acrobats might emphasize the legs.

Kripke's response: Quine confuses *ways of referring* with *properties of the referred-to object*. We can refer to the same object in different ways, but this does not mean the properties attributed to the object are "relative to description" — objects have essential and accidental properties independently of our ways of describing them.

= The Mind-Body Identity Theory Problem

Kripke applies his theory of rigid designators to the mind-body problem, posing a powerful challenge to mind-brain identity theory:

Mind-brain identity theory holds: pain = C-fiber firing. This is a "a posteriori identity" — like "water = H₂O."

But Kripke points out: there is an important *asymmetry* here.
- "Water = H₂O" — we can explain why water might *appear* not to be H₂O (because the phenomenal properties of water — transparency, drinkability — are not necessarily connected to H₂O's chemical structure; this is an illusion)
- "Pain = C-fiber firing" — if we feel pain, we just feel pain. Can we feel that "pain might not be C-fiber firing"? Kripke holds that this appearance is harder to explain away as illusion than the appearance that "water is not H₂O" — because the *essence* of pain seems to be the way it is felt.

This argument shows that mind-brain identity theory faces a special challenge — at the very least, it requires more philosophical explanation than the "water = H₂O" analogy provides.

= Kripke's Relation to the Western Modern Philosophical Tradition

#grid(
  columns: (1.5fr, 3fr, 3fr),
  column-gutter: 6pt,
  row-gutter: 4pt,
  inset: 6pt,
  stroke: gray,

  align(center)[*Scholar*],
  align(center)[*What Kripke Inherited*],
  align(center)[*What Kripke Opposed*],

  [Frege-Russell],
  [Retained the tradition of rigorous logical analysis of reference and meaning],
  [Completely rejected the descriptivist view that "proper names are equivalent to descriptions" — names are not "truncated descriptions"],

  [Quine],
  [Inherited the tools of modal logic and quantification theory],
  [Opposed Quine's critique of modal concepts — Quine held essentialism to be meaningless; Kripke holds that essentialism has rigorous truth conditions],

  [Wittgenstein],
  [Inherited the centrality of the "meaning" problem],
  [Explicitly opposed the application of the "family resemblance" concept to natural kind terms — natural kinds possess "real essences"],

  [Kant],
  [Used the terminology of the "a priori / a posteriori" and "necessary / contingent" distinction],
  [Broke the Kantian equation of "necessary = a priori" — there exist necessary a posteriori truths],
)

= Assigned Reading Analysis: Naming and Necessity (1972/80), pp. 22–4, 26–31, 34–6, 47–9, 71, 83–5

The assigned pages span the core passages of Kripke's three lectures, constituting his systematic critique of descriptivism and the unfolding of his own alternative theory.

== Lecture 1: The Modal Critique of Descriptivism (pp. 22–4, 26–31)

=== pp. 22–4: The Modal Asymmetry Between Names and Descriptions

This is the starting point of Kripke's argument. He proposes an intuitive but devastating test: *If the meaning of "Aristotle" were equivalent to "the greatest student of Plato," then in any possible world where there is a unique person satisfying the latter, that person would be Aristotle — but this is patently false.*

Kripke points out: when we think "Aristotle might not have become a philosopher," we are thinking about *Aristotle himself* — that concrete individual who actually lived in 4th-century BCE Athens — in a scenario where he did not become a philosopher. We are not asking: "the person who satisfies 'the greatest student of Plato' might not satisfy 'the greatest student of Plato'" — that would be self-contradictory. Rather, we are asking: *this very person* might have had a different life.

From this, Kripke concludes:
- *Names are rigid designators* — they designate the same object in every possible world (as long as that object exists)
- *Descriptions are not rigid designators* — "the greatest student of Plato" could designate different people in different possible worlds

=== pp. 26–31: The Outline of the Causal-Historical Theory

In these pages, Kripke sketches his alternative theory — the *causal-historical theory of reference*. The core ideas of this theory are:

1. Initial "baptism": the object is assigned a name in some way (by ostension, by description)
2. Chain of communication: the name is transmitted from generation to generation through the communication of users
3. *The speaker need not possess any uniquely identifying description of the object* — as long as they stand at the end of the name's causal-historical chain, they can successfully use the name to refer to the original object

Kripke gives a vivid example: "Even if all I know about Feynman is 'he is a famous physicist' — and this also applies to many other physicists — I still use 'Feynman' to refer to Feynman himself, as long as I acquired the name from other speakers in the linguistic community, who in turn acquired it from earlier speakers… tracing back to Feynman himself."

== Lecture 2: Necessary A Posteriori Truths (pp. 34–6, 47–9)

=== pp. 34–6: Breaking the Kantian Equation

The traditional view (from Kant onward, continuing to logical empiricism) holds:
- Necessary = Analytic = A Priori
- Contingent = Synthetic = A Posteriori

Kripke breaks both equations:
- "Water is H₂O" — this is an *a posteriori* truth (discovered through chemistry), but it is a *necessary* truth (in every possible world, water is necessarily H₂O — if something is not H₂O, it is not water)
- "Hesperus is Phosphorus" — this is also a necessary a posteriori truth. Because "Hesperus" and "Phosphorus" are both *rigid designators* (they both designate Venus, and in every possible world they designate the same celestial body), their identity is necessary — even though we needed astronomical observation to know this fact

=== pp. 47–9: The Essential Properties of Natural Kinds

Kripke extends the concept of rigid designator to *natural kind terms*. "Water," "gold," "tiger" — these terms, like proper names, are also rigid designators: they designate the same kind in every possible world where that kind exists.

Therefore:
- Gold has atomic number 79 — this is a *necessary* feature: anything that is not element 79 is *not* gold
- Tigers have a certain internal biological structure — this is also necessary: anything lacking that biological structure is not a tiger
- But the fact that gold *appears as a yellow metal* is not necessary — in another possible world, gold might appear blue due to different lighting conditions

This rehabilitates the concept of essential properties: natural kinds possess *internal essences* independent of our descriptions — essential properties are not a matter of "how we describe it," but of "what it is."

== Lecture 3: Mind-Body Identity Theory and Rigid Designators (pp. 71, 83–5)

=== p. 71: Possible Worlds Are Not "Distant Planets"

Kripke clarifies a common misunderstanding: possible worlds are not "another world's entities that we discover somewhere far away through a powerful telescope." They are *ways the world could have been*, "stipulated" rather than "discovered." This clarification clears the path for the modal arguments that follow.

=== pp. 83–5: The Mind-Body Problem

Kripke applies his theory of rigid designators and necessary a posteriori truths to mind-brain identity theory. Mind-brain identity theorists (such as J.J.C. Smart) maintain:
- "Pain = C-fiber firing" — this is an a posteriori identity, like "water = H₂O"

But Kripke identifies a crucial asymmetry: in the case of "water = H₂O," we can explain why water might *appear* not to be H₂O — because the phenomenal properties water presents to us (transparency, drinkability) are not necessarily connected to H₂O's chemical structure. This is an *illusion*.

But in the case of "pain = C-fiber firing," *the essence of pain is precisely being felt in a certain way* — the appearance that "pain might not be C-fiber firing" seems harder to explain away as illusion than the appearance that "water is not H₂O." If pain just is a certain way of being felt, then anything *felt in that way* already is pain — whether or not C-fibers are firing.

This argument does not "refute" mind-brain identity theory, but it shows: mind-brain identity theorists need to do more work than the "water = H₂O" analogy provides to explain why mind-brain identities are a posteriori but necessary.

== Reading Guidance

The assigned pages constitute the core trajectory of Kripke's philosophical revolution: from the modal argument that destroys descriptivism → proposing the causal-historical alternative → breaking the Kantian equation through necessary a posteriori truths → rehabilitating essentialism → applying the results to specific philosophical problems (the mind-body problem). The logic of the three lectures advances layer by layer, each layer building on the preceding one.

= Summary: Kripke's Philosophical Legacy

Kripke's revolutionary contributions can be summarized as:

1. *Names are rigid designators*: Proper names designate the same object in all possible worlds; they do not operate through descriptions

2. *The existence of necessary a posteriori truths*: Broke the traditional dogma that "all necessary truths are a priori" — scientific discoveries (such as "water is H₂O") reveal necessary truths

3. *The rehabilitation of essentialism*: Things possess essential properties independent of language (essentiality of origin, essentiality of kind); this is no longer "obsolete metaphysics"

4. *The causal-historical theory of reference*: Reference is established through causal chains, not through the satisfaction of descriptions in the mind of the speaker

5. *Possible worlds semantics*: Provided rigorous logical analysis tools for modal concepts

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "Let's call something a rigid designator if in every possible world it designates the same object... When we ask whether it is necessary or contingent that _Nixon_ won the election, we are asking the question whether in all possible worlds Nixon won the election."
  — Saul Kripke, _Naming and Necessity_
]
