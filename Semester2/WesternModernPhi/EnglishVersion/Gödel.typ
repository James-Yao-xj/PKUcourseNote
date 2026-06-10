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
  #text(size: 24pt, weight: "bold")[Kurt Gödel]\
  #v(10pt)
  #text(size: 12pt)[_Notes compiled from the instructor's lecture materials; for knowledge sharing only; not for any commercial use_]\

]

= Background

Kurt Gödel (1906–1978): Austrian-American logician and mathematician, most famous for his *Incompleteness Theorems* (1931). He was not only a mathematician but also a thinker with deep philosophical interests, particularly concerned with formal systems, logic, mathematical truth, and ontological questions.

Gödel grew up in the logical and philosophical tradition of the Vienna Circle, deeply influenced by Frege, Russell, and Cantor. Yet he ultimately arrived at a philosophical position diametrically opposed to the Vienna Circle mainstream (logical empiricism).

What was the historical context for his incompleteness theorems? Frege's logicist program, Russell and Whitehead's _Principia Mathematica_, Hilbert's formalist program — all of these pursued the same great ambition: *to provide mathematics with an absolutely rigorous, unshakable logical foundation.* Frege believed all mathematical truths could be reduced to purely logical truths; Russell sought to repair the defects in Frege's system (Russell's Paradox) through type theory; Hilbert proposed using finite, constructive reasoning to prove the completeness and consistency of formal mathematical systems. Gödel proved: this goal is unattainable.

= Assigned Reading Analysis: On Formally Undecidable Propositions (1931), pp. 173–9

The assigned pages (173–9) constitute the opening portion of Gödel's 1931 paper, one of the most important mathematical-philosophical papers of the 20th century.

== The Structure and Starting Point of the Paper

Gödel opens by clearly stating his core objective: to prove that in _Principia Mathematica_ (PM) and related systems, *there exist formally undecidable propositions* — i.e., propositions such that neither they nor their negations can be proved within the system.

The assigned pages cover:
1. A preliminary description of formal systems (particularly PM)
2. The basic idea of the Gödel numbering scheme
3. The strategy for the arithmetization of meta-mathematical concepts

== Core Argumentative Strategy

Gödel's methodological innovation is: *mapping meta-mathematical statements about a formal system onto arithmetical statements within the formal system itself.*

- Each symbol, each string of formulas, each proof sequence is assigned a unique natural number (Gödel number)
- Meta-mathematical statements about provability ("proposition P is provable in system S") are translated into arithmetical statements about natural numbers
- Gödel then constructs a proposition G that is arithmetically equivalent to "I am not provable in system S"
- If S is consistent, then G is not provable in S (otherwise S would prove a false proposition); but G precisely states its own unprovability — hence G is true

== The Impact on the Foundations of Mathematics

This paper directly destroyed Hilbert's formalist program:
- Hilbert hoped to use a "finitary," "constructive" meta-mathematics to prove the consistency and completeness of mathematical systems
- Gödel proved: any consistent formal system sufficiently strong to contain arithmetic cannot prove its own consistency (the Second Incompleteness Theorem)
- There is an unbridgeable gap between truth and provability — *some true propositions are unprovable in any given formal system*

== Philosophical Corollaries of the Paper

Gödel himself drew clear Platonist conclusions from this mathematical result:
- Mathematical truth cannot be identified with "provability in a formal system"
- Mathematical objects (such as natural numbers, sets) have an objective existence independent of our formal systems
- The human mind is capable of "seeing" certain mathematical truths that formal systems cannot prove — this suggests a fundamental difference of some kind between mind and machine

It is worth noting that Gödel's formulations in this paper are extremely cautious and technical — he carefully distinguishes the philosophical corollaries of his results from the mathematical content. It was only in his later "Gibbs Lecture" (1951) that he explicitly articulated the philosophical position implicit in the paper.

= Gödel's Incompleteness Theorems

== Three Informal Formulations of the Theorems

The First Incompleteness Theorem can be stated in three ways:

1. *"No axiomatization can determine the whole truth and nothing but the truth concerning arithmetic."*

2. *"Any axiomatization of arithmetic must either be incomplete — fail to capture some arithmetical truths — or be unsound — capture some arithmetical falsehoods."*

3. *"No theory can be sufficiently strong, consistent, complete, and axiomatizable."*

== Gödel Numbering

The technical core of Gödel's proof is Gödel numbering: assigning each expression in a formal language a unique natural number, such that:

(i) No two distinct expressions are assigned the same natural number
(ii) There exists an algorithm that can determine what natural number is assigned to any given expression, and also determine what expression (if any) is assigned to any given natural number

Through Gödel numbering, Gödel enabled a formal system to "talk about itself" — analogous to a program being able to process its own source code. This is the mathematical foundation of self-reference.

= Mathematical Platonism

Gödel's core philosophical position is *mathematical Platonism*:

- *Mathematical objects exist objectively*: Numbers, sets, and propositions are not human inventions, but objective realities independent of human thought
- *Mathematical truths are "discovered" rather than "created"*: The mathematician's work is more like an explorer discovering new continents, not a poet creating new imagery
- *Even mathematical propositions unprovable within one formal system can still be true*: Provability does not equal truth

This stands in stark contrast to formalism (such as Hilbert's) and logical empiricism (the Vienna Circle mainstream). For Gödel, the incompleteness theorems precisely proved his Platonism: formal systems are merely limited "tools" that cannot fully capture the totality of mathematical truth.

== The Absoluteness of Logic and Knowledge

Gödel was deeply influenced by Frege, holding that:
- Logical laws are not conventions — they exist independently of human thought
- Logical truths, like mathematical truths, are "discovered" rather than "invented"
- "The human mind is incapable of formulating all its mathematical intuitions" — whenever we succeed in formalizing some of them, this very fact yields new intuitive knowledge (this may be called the "incompletability" of mathematics)

= Common Misunderstandings of the Incompleteness Theorems

*Misunderstanding 1*: "Gödel's theorem means that some arithmetical truths are unprovable."
— In fact: Gödel's theorem concerns provability *within a given axiomatic system*, not unprovability in an absolute sense. A proposition unprovable in one system may be provable in another, stronger system.

*Misunderstanding 2*: "Gödel's theorem applies to all domains."
— In fact: The incompleteness theorems specifically concern arithmetic (or any system sufficiently strong to contain arithmetic); they do not apply to all domains.

*Misunderstanding 3*: "Gödel's theorem proves the existence of God."
— In fact: This is a serious misreading of Gödel's thought. Gödel himself did indeed have an independent "ontological proof," but this is an entirely different topic from the incompleteness theorems.

*Misunderstanding 4*: "Gödel proved that there exist arithmetical propositions asserting their own unprovability."
— In fact: This is an oversimplification.

= Gödel and AI: The Philosophical Lineage of the Mathematical Objection

== From Gödel to Turing to Lucas

The course lectures traced an important philosophical lineage:

*Cantor*'s work (the diagonal argument) established the concept that "there are different orders of infinity" — this is the mathematical foundation for all subsequent "self-reference" arguments.

*Gödel*'s incompleteness theorems → any sufficiently strong formal system contains undecidable propositions

*Turing* transformed this into the Mathematical Objection concerning machines:
"There are certain things that a machine cannot do. If it is rigged up to give answers to questions, there will be some questions to which it will either give a wrong answer, or fail to give one at all..."

*Lucas* (1961) argued in "Minds, Machines and Gödel":
#quote[
However complicated a machine we construct, it will correspond to a formal system, which in turn will be liable to the Gödel procedure of finding a formula unprovable-in-that-system. This formula the machine will be unable to produce as being true, although a mind can see that it is true. … Thanks to Gödel's theorem, the mind always has the last word.
]

*Turing's response* (1950, anticipating Lucas's argument):
- Humans themselves often give wrong answers — we have no grounds for complacency about machines' fallibility
- Human superiority can only be demonstrated against one particular machine — it is impossible to triumph simultaneously over all machines
- "There might be men cleverer than any given machine, but then again there might be other machines cleverer again, and so on"

== Incompleteness from a Modern AI Perspective

In the era of contemporary large-model AI, this discussion becomes subtler:
- Large models do not rely on fixed axioms or logical deduction — they "predict" outputs through statistical learning and pattern generation
- The question is no longer "can a formal system simulate a human," but "can a statistical machine produce genuine understanding"
- Gödel's deepest philosophical impact is perhaps revealing the *boundaries of formalized rationality*: any closed system cannot encompass the totality of truth, and understanding may forever exceed the scope of rules and algorithms

= The Gödel Universe: Time and Ontology

In his later years, Gödel also took an interest in physics and philosophy, especially the philosophy of time. He proposed the famous *Gödel Universe solution* — a solution to Einstein's field equations that permits closed timelike curves.

This touches on profound philosophical questions:
- If time travel is logically possible, what is the nature of time?
- Does existence have an objective structure independent of our temporal experience of it?
- This reflects Gödel's consistent Platonism: the physical world (like the mathematical world) has an objective structure independent of human experience

= Gödel in Comparison with Western Modern Philosophical Traditions

#grid(
  columns: (1.2fr, 1fr, 2.5fr, 2.8fr),
  column-gutter: 6pt,
  row-gutter: 5pt,
  inset: 7pt,
  stroke: gray,

  align(center)[*Scholar/School*],
  align(center)[*Period*],
  align(center)[*Core View*],
  align(center)[*Relation to Gödel*],

  [Frege],
  [1848–1925],
  [Mathematical logicism; mathematics reducible to logic; logic is absolutely objective],
  [Gödel was deeply influenced by Frege, inheriting logicist ideas, but emphasized mathematical Platonism and incompleteness],

  [Russell],
  [1872–1970],
  [Logicism, discoverer of set-theoretic paradox; mathematics' foundation depends on logic and set theory],
  [Gödel used the background of Russell's type theory in his incompleteness theorems, but transcended the limitations of formalized systems],

  [Hilbert],
  [1862–1943],
  [Mathematical formalism; pursued system completeness and consistency],
  [Gödel directly challenged Hilbert's formalist ideal: the incompleteness theorems show that mathematical systems cannot be completely complete],

  [Vienna Circle],
  [Early 20th c.],
  [Logical empiricism; mathematics and logic determined by experience or linguistic analysis],
  [Gödel opposed logical empiricism: mathematical truth is independent of experience; emphasized objective existence],

  [Cantor],
  [1845–1918],
  [Founder of infinite set theory; objective infinity exists in mathematics],
  [Gödel was influenced by Cantor, recognized the objective existence of mathematical objects, especially sets and mathematical objects],

  [Wittgenstein],
  [1889–1951],
  [Philosopher of language; early emphasis on the limits of logical language, later emphasis on language use],
  [Gödel criticized Wittgenstein's "linguistic limitation" view of mathematical truth, holding that truth is independent of language],

  [Turing],
  [1912–1954],
  [Founder of computation theory; proposed the universal Turing machine and the Turing test],
  [Gödel's theorem is the basis of Turing's "mathematical objection" concerning machine intelligence; Turing himself was critical of Lucas-style arguments],
)

= Summary

Gödel's philosophical legacy can be summarized as:

1. *Revealing the boundaries of formalized rationality*: Any closed formal system cannot encompass the totality of mathematical truth — "truth does not equal provability"
2. *Mathematical Platonism*: The mathematical world is an objective reality that humans discover, not invent
3. *Profound influence on AI and the philosophy of mind*: The incompleteness theorems sparked an ongoing debate about "whether the human mind can be mechanized"
4. *A fatal blow to logicism and formalism*: The grand ambitions of Frege, Russell, and Hilbert were proved impossible in principle

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The human mind is incapable of formulating ... all its mathematical intuitions, i.e., if it has succeeded in formulating some of them, this very fact yields new intuitive knowledge ... This fact may be called the 'incompletability' of mathematics."
  — Kurt Gödel, 1951 Gibbs Lecture
]
