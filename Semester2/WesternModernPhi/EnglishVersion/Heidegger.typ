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
  #text(size: 24pt, weight: "bold")[Martin Heidegger]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[Notes compiled from the instructor's lecture materials; for knowledge sharing only; not for any commercial use]\

]

= Epigraph

#quote[
Das Aushalten in der Fragwürdigkeit erscheint als der einzige menschliche Weg, um die Dinge in ihrer Unerschöpflichkeit, d.h. Unverfälschtheit zu bewahren.
(To hold out in this constant questioning appears as the only human way to preserve things in their inexhaustibility, i.e., without distortion.)
— Heidegger, _Die Frage nach dem Ding_ (_What is a Thing_)
]

Only by constantly questioning, without forcing definitive answers, can we allow things to preserve their original richness and truth, undistorted by us. This is the core spirit of Heidegger's philosophy — philosophy is not about finding answers, but about *sustaining the questioning*.

Another famous remark: "Aristotle was born, worked, and died. Let us, therefore, turn to his thought." This expresses Heidegger's rejection of biographism — what matters is not the philosopher's life story, but the thought itself.

= Assigned Reading Analysis: Being and Time (1927), Introduction & §7 (pp. 49–63)

The assigned reading includes the Introduction to _Being and Time_ and §7 (The Phenomenological Method), the programmatic passages in which Heidegger articulates his core question and method.

== Introduction: Questioning the Meaning of Being (pp. 21–40 / H. 2–H. 15)

Heidegger's point of departure: *the question of the "meaning of Being" has been forgotten by philosophy for millennia.* Ever since Plato and Aristotle, metaphysics has discussed "that which is" (das Seiende), but it has never asked the more fundamental question that makes it possible for beings to *show themselves* as beings: *What does "Being" itself mean?*

Heidegger accomplishes three things in the Introduction:
1. *Argues for the necessity of re-posing the question of Being*: Being is treated as "the most universal concept" (hence seemingly needing no inquiry), "an indefinable concept" (hence seemingly uninquirable), and "a self-evident concept" (hence seemingly unnecessary to inquire into). It is precisely these three prejudices (universality, indefinability, self-evidence) that together have caused the question of Being to be systematically forgotten.
2. *Reveals the priority of Dasein*: Being is always the Being of some being. But different beings exist in different ways (a stone "is" as present-at-hand; a human "is" as to-be). Among these, *Dasein* has a special status — because Dasein is capable of *questioning its own Being*. Therefore, in order to understand the meaning of "Being," one must first carry out an ontological analysis of *Dasein*.
3. *Articulates the task of "destroying" the history of ontology*: not negating the tradition, but loosening the hardened shell of concepts, allowing the forgotten original experiences within the tradition to be heard anew.

== §7: The Phenomenological Method (pp. 49–63 / H. 27–H. 39)

§7 is the *methodological manifesto* of the entire book. Here Heidegger clarifies what he means by "phenomenology."

=== A. The Concept of Phenomenon (pp. 49–52 / H. 28–H. 31)

Heidegger traces "phenomenon" (Phänomen) back to the Greek φαινόμενον ("that which shows itself").

- *Phenomenon* = that which shows itself in itself, within beings
- *Semblance* (Schein) = something may show itself as what it is *not*
- *The "phenomenon" in phenomenology* = that which precisely does *not* show itself initially and for the most part, but which is *co-disclosed* in that which does show itself. This is the *meaning of Being* itself — it is covered up in everyday experience, yet it is precisely what makes the showing of beings possible.

=== B. The Concept of Logos (pp. 52–5 / H. 32–H. 34)

The original meaning of λόγος (logos / discourse) is not "reason" or "judgment," but *"to make manifest what one is talking about"* (apophainesthai). The function of discourse is to let something be seen *from itself*, through *showing*.

=== C. The Preliminary Concept of Phenomenology (pp. 55–63 / H. 34–H. 39)

"Phenomenology" = λέγειν τά φαινόμενα = *letting that which shows itself be seen from itself, just as it shows itself from itself.*

Heidegger emphasizes: phenomenology is not a "standpoint" or a "school" — it is merely a *method*. "Abandon the label 'phenomenology' — the only question is whether the investigation genuinely lets things show themselves."

*The relation between phenomenology and ontology*:
- Ontology studies the meaning of Being
- But the meaning of Being is covered up in everyday life — it is precisely that which "does not show itself"
- Therefore, the only path to ontology is phenomenology — *through letting beings show themselves, to reveal the Being that is concealed in this showing*

== Reading Guidance

These two parts of the assigned reading lay the foundation and blueprint for the entire edifice of Heidegger's philosophy. The Introduction clarifies the "why" (why the question of Being must be re-posed), the "point of entry" (through the analysis of Dasein), and "how to proceed" (through phenomenological method). §7 then unfolds the methodological content of "phenomenology" — not reducing it to a technical procedure, but restoring it as a fundamental philosophical attitude: *letting things show themselves from themselves.*

= Dasein

== What Is Dasein?

Dasein (being-there) is the core concept Heidegger introduces to replace traditional philosophical concepts such as "consciousness," "mind," and "subject." Heidegger uses Dasein to designate *the human being*, but not understood as a present-at-hand entity (like Descartes' "thinking thing"), but as a *mode of Being*.

#quote[
By using Dasein as a replacement for "consciousness" and "mind," Heidegger intended to suggest that an individual is in the world in the mode of "uncovering" and is thus disclosing other entities as well as itself. In other words, Dasein is the "there" — or the locus — of Being and thus the metaphorical place where entities "show themselves" as what they are.
]

Key features:
- Dasein is not an inner "mind" opposed to an "external world"
- Dasein is from the very beginning *Being-in-the-world* (In-der-Welt-sein)
- There is no "pure consciousness" detached from the world — this is Heidegger's fundamental critique of the entire modern philosophical tradition from Descartes onward
- The character of Dasein is not "I think" (cogito), but "to be" (Zu-sein)

The fundamental distinction between Dasein and other beings is this: Dasein is capable of *questioning* its own Being. A stone is, but it does not care about its Being; Dasein not only is, but *relates to* its Being.

= Three Modes of Being

Heidegger distinguishes three fundamentally different modes of Being:

== Readiness-to-hand (Zuhandenheit / Availableness)

This is *the most primordial relation between humans and the world* — one of Heidegger's most important discoveries.

*Example: the hammer.* When we are using a hammer, we are not conscious of the hammer itself — we are conscious of the task we aim to accomplish (driving a nail, making something). The hammer is in a state of "readiness-to-hand": it is absorbed into our activity, becoming an extension of our body, not scrutinized as a separate "object."

- In this state, the meaning of a thing resides in its *function*, not its *substance*
- Things "withdraw" into the background of use
- We do not first encounter a "thing" and then assign it a "meaning" — in use, we are already directly within the thing's meaning

*Example: texting on a phone.* When you are absorbed in sending a message, the phone itself disappears — you are communicating directly with your interlocutor.

== Presence-at-hand (Vorhandenheit / Occurrentness)

When a thing *withdraws from use* — when the tool breaks, is missing, or gets in the way — it then appears as an "object."

*Example: the phone freezes.* Suddenly, you are no longer communicating through the phone — the phone itself appears before you as a bulky, black, non-functioning object. You begin to "examine" it, "scrutinize" it.

Heidegger's crucial judgment: *Traditional philosophy and science have mistakenly taken this derivative state (presence-at-hand) as the primordial state of things.* When Descartes defined matter as "extended thing" (res extensa), he was describing not the primordial way we encounter the world, but a theoretical mode *abstracted from* the primordial experience of readiness-to-hand.

== Existence (Existenz)

This is *the mode of Being peculiar to Dasein*. Unlike the "present-at-hand" Being of things, Dasein has no fixed essence — its essence is "to be."

- Dasein continuously becomes itself through *choice and action*
- Dasein's possibilities are not "logical possibilities" but *existential possibilities* — these possibilities constitute Dasein's Being
- "The 'essence' of Dasein lies in its existence"

= Totalities of Relevance

== The Meaning of Things Is Not Isolated

Another crucial Heideggerian insight: *the meaning of a thing does not come from itself, but from its mutual references with other things.*

Hammer → nail → board → house → dwelling (shelter, family…)
Phone → message → friend → relationship → community…

- *Totality of involvements* (Bewandtnisganzheit): the meaning of each tool depends on a whole network composed of other tools, purposes, and practices
- Without this network, a hammer would not be called a "hammer" — it would be merely a piece of wood attached to a piece of metal
- This totality is *prior* to individual things: we must first understand the meaning of the whole "workshop" before we can understand the meaning of the "hammer"

== Pre-linguistic Reference vs Linguistic Reference

- *Pre-linguistic reference*: the natural associations in use that require no thought. The hammer "points to" the nail — this is not an inference we draw after thinking, but something we directly "see" in use
- *Linguistic reference*: the symbolization of meaning by words (e.g., the word "hammer" pointing to the thing hammer)

Heidegger holds that *pre-linguistic reference is more fundamental.* Language "parasites" on pre-linguistic, practical world-understanding. There is a deep resonance here with the later Wittgenstein.

Core thesis: *"In the encounter-structure of the world, what plays the primary role is not things, but references; not substances, but functions."*

= The They, Fallenness, and Authenticity

== The They (das Man)

The everyday mode of Being of Dasein is that of *the They*:
- Conformity: living according to the standards of others, doing "what one does"
- Drifting with the current: not choosing one's own mode of Being, but being shaped by social norms and expectations
- Losing oneself in "average everydayness"
- This state is called *Fallenness* (Verfallen)

#quote[
We take pleasure and enjoy ourselves as _they_ take pleasure; we read, see, and judge about literature and art as _they_ see and judge; likewise we shrink back from the "great mass" as _they_ shrink back; we find "shocking" what _they_ find shocking. The "they", which is nothing definite, and which all are, though not as the sum, prescribes the kind of Being of everydayness.
(Heidegger, _Being and Time_, §27)
]

"The They" is not any concrete person — it is an anonymous authority that governs all domains of everyday life.

== Authenticity (Eigentlichkeit)

Authenticity is *"owned existence"* — Dasein confronts its own Being, taking on its own choices and fate.

The key to authenticity is *Being-towards-death* (Sein-zum-Tode):
- Becoming aware of one's own finitude and mortality
- Death is "one's ownmost, non-relational, not-to-be-outstripped possibility"
- Precisely because death is irreplaceable (no one can die for you), it makes every Dasein an *individual*

#quote[
Authentic Being-towards-death is the willingness to be what I am right now, acknowledging that this has always been me.
]

In the state of "the They," people evade confronting death with the impersonal phrase "one dies." But it is precisely through confronting one's own mortality that Dasein can liberate itself from the dominion of "the They" and genuinely own its own life.

= Mood and Language: Dasein's Ways of Being Disclosed

== Mood (Stimmung)

Heidegger holds that mood is not a "purely subjective" mental state, nor a reaction caused by external things. Mood is *a fundamental way in which Dasein discloses itself* — in a mood, we find ourselves already "there," in the world, "touched" by the world in a certain way.

- Mood is "pre-reflective": it is not the product of thought or judgment, but more primordial than reflection
- Boredom reveals the world as a whole lacking meaning; anxiety reveals the uncanniness and groundlessness of the world

== Language (Rede / Discourse)

Heidegger holds that *language itself has the mode of Being of Dasein.* Language is not just another "object" appearing in the world — language is the *articulation of intelligibility*. We *live in* language, just as we live in the world.

= Heidegger's Relation to Western Modern Philosophy

#grid(
  columns: (1.5fr, 4fr, 4fr),
  column-gutter: 6pt,
  row-gutter: 4pt,
  inset: 6pt,
  stroke: gray,

  align(center)[*Relatum*],
  align(center)[*Points of Convergence*],
  align(center)[*Fundamental Divergence*],

  [Descartes],
  [Inherits the importance of the "self" as the point of departure for philosophy],
  [Thoroughly rejects the isolated subject of "I think, therefore I am": Dasein is from the very start in-the-world],

  [Wittgenstein],
  [Both oppose theoretical "representationalism" — opposing the view of knowledge as "the mind's correct representation of the world"],
  [Heidegger appeals to phenomenological description ("let things show themselves"), Wittgenstein appeals to the description of language-games],

  [Murdoch],
  [Both acknowledge moral possibilities beyond the level of convention; both focus on the importance of "attention" itself],
  [Murdoch emphasizes love and the Good as objective reality; Heidegger emphasizes Dasein's authentic choice],

  [Sartre],
  [Both take Heidegger's analysis of Dasein as their starting point, treating "existence precedes essence" as the fundamental condition of the human],
  [Heidegger rejected Sartre's "humanist" reading: he is not talking about "human freedom," but questioning the "meaning of Being"],
)

= Summary

Heidegger's thought can be condensed into several layers:

1. *Methodology*: Phenomenology — letting things show themselves, rather than imposing theoretical frameworks upon them
2. *Critique of traditional philosophy*: The entire Western philosophical tradition from Plato through Descartes to Husserl commits the same fundamental error — confronting the world as an "object," forgetting the more primordial "Being-in-the-world"
3. *Positive philosophical contributions*: the distinction between readiness-to-hand and presence-at-hand, totalities of relevance, the analysis of das Man / authenticity, "Being-in-the-world" as Dasein's fundamental structure
4. *Ethical-existential meaning*: confronting death, taking on choice, emerging from the fallenness of das Man — becoming one's authentic self

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The aspects of things that are most important for us are hidden because of their simplicity and familiarity. (One is unable to notice something — because it is always before one's eyes.) The real foundations of their inquiry do not strike people at all. Unless that fact has at some time struck them. — And this means: we fail to be struck by what, once seen, is most striking and most powerful."
  — Ludwig Wittgenstein, _Philosophical Investigations_, §129 (Hannah Arendt found these words deeply resonant with her own philosophy)
]
