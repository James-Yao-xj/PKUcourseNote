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
  #text(size: 24pt, weight: "bold")[W. V. Quine]\
  #v(10pt)
  #text(size: 12pt)[_Notes compiled from the instructor's lecture materials and reading; for knowledge sharing only; not for any commercial use_]\

]

= Background

Willard Van Orman Quine (1908–2000): one of the most influential American philosophers of the 20th century, a central figure in the analytic philosophical tradition. His work spans logic, the philosophy of language, epistemology, metaphysics, and the philosophy of science.

Quine was deeply influenced by Russell and Carnap, but ultimately arrived at a fundamental critique of Logical Empiricism. His philosophy can be understood as a kind of *naturalized epistemology* — pulling epistemology down from the status of "first philosophy" and making it part of empirical psychology.

Major works:
- 1951: "Two Dogmas of Empiricism"
- 1953: _From a Logical Point of View_
- 1960: _Word and Object_
- 1995: _From Stimulus to Science_

= Two Dogmas of Empiricism

Quine's "Two Dogmas of Empiricism" (1951) is one of the most revolutionary papers in the history of analytic philosophy. He argues that traditional empiricism rests on two unproven dogmas:

== Dogma 1: The Analytic-Synthetic Distinction

Since Hume and Kant, philosophers have distinguished two kinds of truths:
- *Analytic truths*: true by virtue of meaning alone, independent of fact (e.g., "All bachelors are unmarried")
- *Synthetic truths*: true by virtue of fact (e.g., "Paris is in France")

Quine argues: *The strict analytic-synthetic distinction cannot be maintained.* So-called "analytic truths" either rely on the equally obscure concept of synonymy, or must ultimately appeal to empirical facts. There is no such thing as a purely non-empirical "truth of meaning."

The core steps of this argument:
1. The concept of "analyticity" needs the concept of "synonymy" for its explanation
2. The concept of "synonymy" is explained either through definition (but definitions themselves rely on prior synonymy judgments), or through interchangeability (but this requires modal concepts, which are themselves problematic)
3. Therefore, the analytic-synthetic distinction is a "dogma of empiricism" — a metaphysical article of faith, not an empirically verifiable distinction

== Dogma 2: Reductionism

Reductionism holds that every meaningful statement can be reduced to statements about immediate experience (such as the language of sense-data), and that each statement can independently be subjected to empirical verification or falsification.

Quine's critique: *Our knowledge does not consist of individual statements facing the tribunal of experience one by one, but of the entire system of knowledge facing experience as a whole.* This is his "holism" or "confirmation holism."

= Naturalized Epistemology

== From "First Philosophy" to Empirical Psychology

Traditional epistemology (since Descartes) conceived of itself as standing "before" or "above" science, providing a philosophical foundation for scientific knowledge. Quine overturns this picture:

#quote[
Epistemology, or something like it, simply falls into place as a chapter of psychology and hence of natural science. It studies a natural phenomenon, viz., a physical human subject.
(Quine, "Epistemology Naturalized", 1969)
]

*Epistemology is not the "foundation" of science, but part of science.* We study how humans construct scientific theories from sensory stimuli (stimulus), and this study is itself an enterprise of empirical science.

In _From Stimulus to Science_, Quine traces the cognitive process from the most primitive sensory stimuli ("surface irritations") to complex scientific theories. This is a natural history from physical input to theoretical output.

== The Meaning of Naturalism

Quine's naturalism involves several key commitments:
- There is no "first philosophy" — no philosophy that precedes science and provides its foundation
- The continuity of philosophy and science — there is no fundamental methodological difference between philosophical and scientific questions
- A re-understanding of traditional epistemological questions — "How do we know?" is no longer a normative question about justification, but a descriptive question about causal mechanisms

= The Indeterminacy of Translation

== The Thought Experiment of Radical Translation

Quine's indeterminacy of translation thesis is the core of his philosophy of language. Imagine a linguist confronting a previously unencountered language (the "radical translation" scenario); she must construct a translation manual based on the natives' verbal behavior.

Quine's argument: *Different translation manuals can be compatible with all possible evidence of verbal behavior, yet be mutually incompatible.* That is, translation is not uniquely determined by behavioral evidence.

The classic "Gavagai" example: the native says "Gavagai" when a rabbit runs by. Should this word be translated as:
- "Rabbit"?
- "Undetached rabbit part"?
- "Temporal rabbit stage"?
- "Rabbithood" — the universal of being a rabbit?

All these translations are compatible with all observable verbal behavior. When you point and ask "Is this the same gavagai?" — no matter how you point, you are indicating the same rabbit, the same rabbit part, the same instance of a rabbit stage.

== Philosophical Consequences

The deeper implications of the indeterminacy of translation:
- *Meaning is not an independent entity*: There is no "propositional meaning" independent of a translation manual waiting to be discovered
- *Inscrutability of reference*: Even in our own language, there is no fact of the matter determining what our words "really" refer to
- *Ontological relativity*: Questions about "what exists" can only be answered using a background language; there is no absolute answer

= Ontological Commitment

Quine's slogan: "To be is to be the value of a variable."

This means:
- We should not ask empty metaphysical questions like "Does X exist?"
- Instead, we should ask: In order for our best scientific theories to be true, what entities must our theories quantify over?
- *Ontological commitment is revealed through quantificational structure*, not through a separate "existence" predicate

Quine's own ontology is austere: he admits the existence of physical objects and sets (classes), but rejects "intensional entities" such as propositions, meanings (as entities), properties, and possible worlds.

= Critique of Modal Logic and Essentialism

Quine is a famous critic of modal logic. He holds that:
- Modal contexts ("necessarily…", "possibly…") are referentially opaque — they undermine the principle of substitutivity of identity
- The concept of "essential properties" is meaningless — what properties an object possesses "necessarily" depends on how we describe it, not on what the object itself essentially is
- Therefore, quantified modal logic is built on confusion

This position puts him in sharp opposition to Kripke (see the Kripke notes).

= Quine's Relation to the Western Modern Philosophical Tradition

Quine's philosophy can be seen as a critical advance on the Frege-Russell-Wittgenstein tradition:

#grid(
  columns: (1.5fr, 2.5fr, 3fr),
  column-gutter: 6pt,
  row-gutter: 4pt,
  inset: 6pt,
  stroke: gray,

  align(center)[*Scholar*],
  align(center)[*Line of Inheritance*],
  align(center)[*Core Divergence*],

  [Frege],
  [Inherits the methodological tradition of logical analysis],
  [Quine rejects Frege's view of "Thoughts" (Gedanke) as abstract entities, holding that meaning-entities are philosophically suspect],

  [Russell],
  [Inherits logical constructionism and the spirit of "Ockham's Razor"],
  [Quine does not accept Russell's concept of "acquaintance" and sense-data epistemology, holding that all knowledge is ultimately theory-constructed],

  [Carnap],
  [Early deep influence from logical empiricism],
  [Quine's "Two Dogmas" directly destroyed Carnap's analytic-synthetic distinction and reductionist program],

  [Wittgenstein],
  [Inherits the deep concern with language and meaning],
  [Quine does not endorse the Wittgensteinian "therapeutic" philosophical method or the view of "meaning as use"; he leans more toward scientific systematic theory construction],
)

= Assigned Reading Analysis: From Stimulus to Science (1995), Chapter II: Naturalism, pp. 15–26

The assigned pages (15–26) cover Chapter II, "Naturalism," of Quine's late work — the most mature statement of his "naturalized epistemology" program.

== The Structure and Starting Point of Chapter II

In this chapter, Quine traces the natural history from the most primitive sensory stimuli to scientific theory. His core question is: how do we begin from "surface irritations" of the retina and eventually construct complex scientific theories about quarks, black holes, and DNA?

The key advance of Chapter II is: *Quine here is not merely negatively critiquing traditional epistemology, but positively describing his own alternative.*

== From Stimulus to Observation Sentences

Quine's naturalized epistemology begins with the most "basic" level: *observation sentences*. Observation sentences have two features:
1. They are "occasion sentences" — the speaker can judge their truth or falsity on the spot by checking sensory stimuli
2. They are "intersubjectively agreed" — all members of the same linguistic community, under the same stimulus conditions, will agree on the truth-value of the sentence

"It is raining," "This is red" — these are paradigm observation sentences. They lie at the outermost layer of the "web of science," directly facing the tribunal of experience.

Note: Even at the level of observation sentences, *sociality and publicity have already entered* — observation sentences are not about private sensations, but about publicly verifiable states of affairs.

== The Evolution of Theoretical Language

Quine describes a gradual progression from observation sentences to increasingly abstract theoretical sentences:
- Observation sentences: respond directly to sensory stimuli
- Observation categoricals: classify observation sentences ("this dog," "that cat")
- Theoretical entities: electrons, genes, black holes — these cannot be directly observed, but are indirectly linked to observation sentences through the *hypothetico-deductive method*
- Mathematics and logic: lie at the innermost layer of the scientific web — farthest from direct experience, but also hardest to unsettle by empirical refutation

== "All Science Is a Human Construction" (p. 19)

Quine's core naturalistic thesis is condensed in a key statement in Chapter II:

*Our entire scientific theory — from the most everyday common sense to the most abstract theoretical physics — is merely a conceptual apparatus used by humans to predict and control future sensory stimuli.* There is no "God's eye view," no external point of comparison between "the real world" and "theory" that is independent of that apparatus.

But this does not mean Quine is an "anti-realist" or a "relativist." He holds that *science is our best — our only — way of knowing the world.* The point of "naturalized epistemology" is not to deny the cognitive authority of science, but to point out: science does not need to seek an "a priori" or "metaphysical" foundation for itself — it can study itself, how it grows from stimuli.

== The Final Rejection of "First Philosophy" (pp. 22–6)

In the latter part of Chapter II, Quine explicitly rejects the "first philosophy" tradition stemming from Descartes. Traditional philosophy conceives of itself as the foundation of science — philosophy's task is first to establish certain indubitable principles, upon which science's legitimacy can then be built.

Quine's response:
1. This is impossible — epistemology itself must make use of scientific knowledge (e.g., psychology, linguistics, evolutionary theory)
2. This is unnecessary — science can improve itself through *self-correction*; it does not need an "external" philosophical judge
3. The mission of philosophy is redefined: philosophy is not the foundation of science, but its extension — it is part of "natural science in the broadest sense"

== Reading Guidance

Chapter II is the best entry point for understanding Quine's mature philosophy. Unlike "Two Dogmas," it is not negatively destructive, but positively sketches a complete picture of "naturalized epistemology" from sensory stimuli to science. Its core message is twofold: (1) Epistemology is possible — but only as part of empirical science; (2) Philosophy has not disappeared, but has been repositioned — it is no longer the king but a citizen, no longer standing above science, but walking alongside it.

= Summary: Quine's Philosophical Legacy

Quine's thought can be condensed into several core theses:

1. *Rejection of the analytic-synthetic distinction*: There is no purely "truth of meaning" — all knowledge is ultimately continuous with experience
2. *Confirmation holism*: Our belief system confronts experience as a whole — any individual statement can be retained in the face of counterevidence by adjusting other parts of the system
3. *Naturalized epistemology*: Epistemology is a chapter of psychology — we study how humans construct science from sensory stimuli
4. *Indeterminacy of translation*: Meaning is not a fact independent of a translation manual
5. *Criterion of ontological commitment*: "To be is to be the value of a variable" — ontological commitment is revealed through quantificational structure

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "Our talk of external things, our very notion of things, is just a conceptual apparatus that helps us to foresee and control the triggering of our sensory receptors in the light of previous triggering of our sensory receptors."
  — W. V. Quine, _From Stimulus to Science_
]
