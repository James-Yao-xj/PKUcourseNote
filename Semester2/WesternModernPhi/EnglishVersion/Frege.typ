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
  #text(size: 24pt, weight: "bold")[Gottlob Frege]\
  #v(10pt)
  #text(size: 12pt)[_Notes compiled from the instructor's lecture materials; for knowledge sharing only; not for any commercial use_]\

]

= Background

Gottlob Frege (1848–1925): German mathematician, logician, and philosopher, widely recognized as the founder of analytic philosophy and modern logic. His work fundamentally changed the direction of logic, the philosophy of mathematics, and the philosophy of language.

Frege spent almost his entire academic career at the University of Jena, but his influence spread widely through the inheritance and critique of thinkers such as Russell, Wittgenstein, and Carnap. His core ambition was *Logicism* — to demonstrate that all arithmetical truths can be reduced to purely logical truths.

= Frege's Major Works

#table(
  columns: (4fr, 15fr),
  inset: 6pt,
  align: (center + horizon, left + horizon),
  [1873],[On a Geometrical Representation of the Imaginary Forms in the Plane \ Doctoral dissertation],
  [1879], [Concept Script: A Formal Language of Pure Thought Modelled Upon That of Arithmetic \ *The birth of modern logic*],
  [1882], [On the Scientific Justification of a Concept Script],
  [1884], [The Foundations of Arithmetic: A Logico-Mathematical Enquiry Into the Concept of Number — the first systematic exposition of the logicist program],
  [1891], [Function and Concept],
  [1892], [On Sense and Meaning \ On Concept and Object — core texts of Frege's philosophy of language],
  [1893-1903], [Basic Laws of Arithmetic (two volumes) — the culmination of the logicist program],
  [1910-13],[Lectures on Concept Script],
  [1918-23], [Thoughts, Negation, Compound Thoughts — final reflections on the nature of logic and thought]
)

= Concept Script: The Birth of Modern Logic

== Motivation: Overcoming the Deficiencies of Language

Frege's goal was to construct a completely precise, unambiguous formal language for purely logical derivation. He believed that natural languages (such as German, English) are riddled with ambiguity and imprecision, incapable of supporting rigorous logical reasoning.

#quote[
So that nothing intuitive could intrude here unnoticed, everything had to depend on the chain of inference being free of gaps. In striving to fulfil this requirement in the strictest way, I found an obstacle in the inadequacy of language: however cumbersome the expressions that arose, the more complicated the relations became, the less the precision was attained that my purpose demanded. Out of this need came the idea of the present Begriffsschrift.
]

Thus, all truths that need to be proved can be divided into two categories:
1. Truths provable by logic alone (purely logical truths)
2. Truths that must rely on empirical facts to be proved (empirical truths)

Frege sought to determine: to which category do arithmetical truths belong? He attempted to reduce "the concept of ordering in a sequence" to "the concept of logical consequence," thereby transitioning to the concept of "number" — allowing no intuition to intrude undetected at any point.

== The Core Innovations of Concept Script

Frege's Begriffsschrift is the first formal system of *predicate logic* in history. Its core innovations include:

- *Function-argument analysis*: decomposing propositions into functions and arguments, rather than the traditional subject-predicate structure. For example, "Socrates is mortal" is analyzed as: function $f(x)$ = "$x$ is mortal", argument $x$ = Socrates
- *Quantifiers*: the first introduction of explicit notation for universal and existential quantifiers
- *Judgment stroke* and content stroke: distinguishing judged content (├—) from assertoric judgment (├─)
- *Truth-values*: the referent (Bedeutung) of a sentence (proposition) is its truth-value (the True or the False), not an object

This makes it possible to check chains of inference *mechanically*, truly achieving "gapless logical derivation."

= Sense and Meaning (Sinn und Bedeutung)

This is Frege's most far-reaching contribution to the philosophy of language. Published in 1892 as "On Sense and Meaning."

== The Problem: The Cognitive Value of Identity Statements

Frege begins with a deceptively simple puzzle:

What is the difference between "a = a" and "a = b"?
- "The Morning Star = the Morning Star" is a trivial analytic truth, providing no new information
- But "The Morning Star = the Evening Star" is an astronomical discovery! It provides new information

If the meaning of a name consisted solely in the object it refers to, then "The Morning Star = the Evening Star" should be just as trivial as "The Morning Star = the Morning Star" — but clearly it is not. Therefore, there must be something more than reference.

== Frege's Solution

Frege distinguishes three levels:

*Reference* (Bedeutung): the object itself to which the name refers. For sentences, the reference is a *truth-value* (the True or the False).

*Sense* (Sinn): the "mode of presentation" (Art des Gegebenseins) of the object. The same object can be presented in different ways. "The Morning Star" and "The Evening Star" have different senses — one presents as the star visible at dawn, the other as the star visible at dusk — but they refer to the same object (Venus).

*Representation* (Vorstellung): private, subjective mental images — irrelevant to logic.

#quote[
The sense of a proper name is grasped by everybody who is sufficiently familiar with the language or totality of designations to which it belongs; but this serves to illuminate only a single aspect of the reference, supposing it to have one. Comprehensive knowledge of the reference would require us to be able to say immediately whether any given sense belongs to it. To such knowledge we never attain.
]

Key results:
- Sense determines reference
- The same reference can correspond to multiple senses
- Sense is public (graspable by all speakers), representation is private

== The Paradox of Analysis

If for any "A = B", "A" and "B" either have the same meaning or they do not:
- If the meaning is the same, then "A = B" is trivial
- If the meaning is different, then "A = B" is incorrect

Frege's solution: in "A = B", "A" and "B" can have different *senses* but the same *reference*. Thus "A = B" is neither trivially true (because it provides new information about senses) nor incorrect (because the reference is the same).

= Function and Concept: Frege's Logical Ontology

== Objects, Functions, and Concepts

Frege proposed a radical distinction:

*Object*: anything that is not a function. An expression for an object contains no empty place. — "I call anything a proper name if it is a sign for an object."

*Function*: an unsaturated expression containing an empty place. E.g., "$f(x) = 2x + 1$"

*Concept*: a special kind of function — one whose value is always a truth-value (True or False). For example, the function "\_\_\_ is a table" maps each argument to the True or the False.

#text(size: 15pt)[
  "A concept is a function whose value is always a truth-value." (Frege, 1891)
]

== Proper Name vs Concept Word

- *Proper name*: an expression referring to a single object (e.g., "the Moon," "Mars")
- *Concept word*: an expression referring to a concept (e.g., "___ is human," "___ is an animal")

Frege deliberately avoids the traditional term "common name" because it leads to the mistaken assumption that common nouns relate to objects in essentially the same way as proper names do. This is precisely what he rejects — concept words do not relate directly to objects; they relate through the "intermediary layer" of concepts.

#quote[
The word "common name" leads to the mistaken assumption that a common name is related to objects in essentially the same way as is a proper name … that is why I prefer "concept word" to "common name".
]

= The Concept Horse Paradox

This is one of the most famous and illuminating puzzles in Frege's philosophy.

Frege wants to state a patently true fact: "The concept _horse_ is a concept."

But the problem is: the subject of this sentence — "the concept horse" — occupies the subject position. According to the grammar of natural language, an expression in subject position appears to refer to an *object*. However, if "the concept horse" refers to an object, then saying "this object is a concept" is self-contradictory — because objects and concepts are utterly distinct logical types.

#quote[
If I say 'the concept horse is a concept', then the first 'concept' (in 'the concept horse') is in fact an object, and the second 'concept' (the predicate) is the actual concept. There is an unavoidable linguistic distortion here.
]

*This is a profound insight: the very structure of language forces us to "reify" concepts into objects in order to talk about them.* This paradox reveals the fundamental tension between natural language and logical structure — which is precisely the deep reason Frege constructed his Begriffsschrift.

= Frege in Dialogue with Russell and Wittgenstein

== Influence on Russell

Russell was deeply inspired by Frege, but also discovered a fatal flaw in Frege's system — Russell's Paradox:
- Consider the set of all sets that are not members of themselves
- Is this set a member of itself?
- If it is, then it must not be; if it is not, then it must be
- This paradox directly destroyed Frege's Basic Law V

When Russell wrote to Frege in 1902 informing him of this paradox, Frege was preparing the second volume of Basic Laws of Arithmetic for publication. He responded in an appendix with the famous words: "A scientist can hardly encounter anything more undesirable than to have the foundation collapse just as the work is finished."

== Influence on Wittgenstein

The early Wittgenstein explicitly acknowledged "Frege's great works" in the Preface to the _Tractatus_. Wittgenstein inherited Frege's fundamental insights into logical analysis but arrived at different conclusions — particularly regarding the relationship between "sense" and "reference," and the status of logical constants.

= The Living Character of Language: Waismann's Supplement

Friedrich Waismann (1896–1959), member of the Vienna Circle and interpreter of the later Wittgenstein, provided an important supplementary perspective to Frege's program of a rigorous formal language:

#quote[
One must indeed be blind not to see that there is something unsettled about language; that it is a living and growing thing, adapting itself to new sorts of situations, groping for new means of expression, for ever changing.
]

Frege sought to construct a perfect, fixed, unambiguous logical language; Waismann (and the later Wittgenstein) remind us that natural language itself is perpetually changing, adapting, and growing. The tension between these two insights constitutes a central dynamic of analytic philosophy.

#align(center)[
  #text(size: 16pt, font:"KaiTi")[Language is not a rigid logical system, but a living thing, forever in flux.]
]

= Assigned Reading Analysis: On Sense and Meaning (1892), pp. 151–9

This paper is the core text of Frege's philosophy of language. The assigned pages (pp. 151–9) cover the first half of the paper, the crucial passages where Frege introduces and argues for the *distinction between sense and reference*.

== The Paper's Opening: The Cognitive Puzzle of Identity Statements

Frege begins with a seemingly simple question: why can statements of the form "a = b" sometimes provide valuable knowledge, while "a = a" cannot?

- "The Morning Star = the Morning Star" — is a priori, trivial, uninformative
- "The Morning Star = the Evening Star" — is an astronomical discovery! It expands our knowledge

If the meaning of a name = its referent, then "The Morning Star = the Evening Star" should be just as trivial as "The Morning Star = the Morning Star" — but it is not. Therefore, names must possess something *beyond their reference*.

== The Tripartite Distinction: Reference, Sense, Representation

On pages 152–4, Frege introduces the tripartite distinction:

- *Reference* (Bedeutung): the object itself that the name refers to. For sentences (propositions), the reference is a *truth-value* — the True or the False. This is Frege's original contribution: the reference of a sentence is not a "state of affairs" or a "fact," but a truth-value.
- *Sense* (Sinn): the mode of presentation (Art des Gegebenseins) of the object. Sense is *public* — graspable by anyone sufficiently familiar with the language. Sense contains the "epistemological path" to the referent.
- *Representation* (Vorstellung/idea): private, subjective mental images — irrelevant to logic. Different people have different mental images of "the Moon," but these belong only to the individual.

Core principle: *Sense determines reference*. The same reference can correspond to multiple senses ("The Morning Star" and "The Evening Star" both refer to Venus, but with different senses); a single sense may not determine a unique reference (though Frege holds that this should not occur in a perfected logical language).

== Pages 156–8: The Reference of Subordinate Clauses

Frege further analyzes: in indirect speech (such as "Copernicus believed that the Earth is round"), the reference of the subordinate clause shifts from its truth-value to its *customary sense*. This opened the floodgates for later discussions of "propositional attitude contexts" and intensional contexts.

== The Paper's Philosophical Significance

- This is the first systematic distinction in the history of analytic philosophy between two semantic levels of linguistic expressions
- It provided the foundational framework for later semantic theories (from Tarski to Davidson to Kripke)
- It resolved the cognitive paradox of identity statements while preserving the core intuition of referentialism for logical analysis
- Its concept of sense provided an objective, publicly graspable anchor point for "meaning" — avoiding the pitfalls of psychologism

= Summary: Frege's Philosophical Legacy

Frege's contributions form the "founding triangle" of analytic philosophy:

1. *Logic*: Invented predicate logic (quantifiers, function-argument analysis), making modern logic possible
2. *Philosophy of Language*: Distinguished sense and reference (Sinn und Bedeutung), laying the foundational layers of semantic theory
3. *Philosophy of Mathematics*: Proposed the logicist program — mathematical truths can be reduced to logical truths (though later proved by Gödel to be impossible to fully realize)

His deepest insight is perhaps this: *Language cannot be regarded as a transparent medium.* The grammatical form of natural language often conceals underlying logical form — and the task of philosophy is to reveal the latter.

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The sense of a proper name is grasped by everybody who is sufficiently familiar with the language or totality of designations to which it belongs... Comprehensive knowledge of the reference would require us to be able to say immediately whether any given sense belongs to it. To such knowledge we never attain."
  — Gottlob Frege, "On Sense and Meaning" (1892)
]
