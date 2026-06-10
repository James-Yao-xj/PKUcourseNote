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
  #text(size: 24pt, weight: "bold")[Bertrand Russell]\
  #v(10pt)
  #text(size: 12pt, font:"KaiTi")[Notes compiled from the instructor's lecture materials; for knowledge sharing only; not for any commercial use]\

]

= Background

Bertrand Russell (1872–1970): one of the core founders of 20th-century analytic philosophy. He made foundational contributions to logic, the philosophy of language, epistemology, the philosophy of mathematics, and political philosophy. His philosophical enterprise can be understood as an unrelenting pursuit of *logical clarity* and *precision*.

His major works include _Principia Mathematica_ (1910–13, co-authored with Whitehead), "On Denoting" (1905), _The Problems of Philosophy_ (1912), and "Knowledge by Acquaintance and Knowledge by Description" (1911). He was awarded the Nobel Prize in Literature in 1950.

Russell believed that *philosophy should imitate mathematics* — clarifying concepts through logical analysis to eliminate metaphysical confusion. Philosophical problems often stem from: grammatical confusion, ambiguous descriptions, and the mismatch between surface grammar and logical form.

= Acquaintance and Description: The Epistemological Foundation

== Knowledge by Acquaintance

Russell distinguishes two fundamentally different types of knowledge. *Acquaintance* is direct, non-inferential knowledge. The objects of our acquaintance include:

- *Sense-data*: such as a patch of red appearing in my visual field right now
- *Our own mental states*: such as the pain I am feeling at this moment
- *Universals*: such as "redness," "similarity," etc.
- *(Possible) the Self*: Russell holds an uncertain attitude on this point

Key feature: acquaintance is *direct* — there is no inferential intermediary between the knower and the known object.

== Knowledge by Description

When we know something through a definite description, we need not have direct acquaintance with that object.

#quote[
Every proposition which we can understand must be composed wholly of constituents with which we are acquainted.
(Russell 1911)
]

This is Russell's *fundamental epistemological constraint principle*: any proposition we can understand must be composed entirely of constituents with which we are acquainted.

When we say "The F is G," we may never have had direct contact with that object. For example:
- "The present King of France is bald"
- "The tallest student in the class"

We understand these propositions even when the object does not exist. This is because we are acquainted with the universals that compose the description (such as the properties "king," "bald," etc.).

== Key Distinction

#grid(
  columns: (4fr, 6fr),
  column-gutter: 8pt,
  row-gutter: 6pt,
  inset: 7pt,
  stroke: gray,

  [*Acquaintance*], [*Description*],
  [Direct relation], [Mediated by properties],
  [Requires no inference], [Requires propositional form],
  [Certain], [Fallible],
  [Logical atoms], [Logical constructions],
)

= On Denoting: Russell's Theory of Descriptions

This is Russell's most famous philosophical contribution (published in 1905), acclaimed as "the paradigm of analytic philosophy."

== The Problem: The Paradox of Non-Being

Consider the following statement:
- "The present King of France is bald"

According to ordinary intuition, this sentence seems to be meaningful (we can understand it), but it seems to be *false* — because France has no king.

But if this sentence is false, then its negation should be true:
- "The present King of France is not bald"

This also seems false — for there is no king who can be described as having hair or lacking it.

This problem concerns how language can talk about non-existent things. Meinong's theory holds that "the present King of France" *must in some sense exist* ("subsist"), otherwise we could not meaningfully talk about it. Russell found this conclusion absurd.

== Russell's Solution: Quantificational Analysis

Russell points out that surface subject-predicate structure conceals true logical form. "The F is G" is actually a *quantificational structure* composed of three sub-propositions:

1. *Existence*: there is at least one thing with the property F
2. *Uniqueness*: there is at most one thing with the property F
3. *Predication*: that thing which has the property F also has the property G

Thus, "The present King of France is bald" is analyzed as:
- (1) There exists a King of France
- (2) There is at most one King of France
- (3) That King of France is bald

Because sub-proposition (1) is false, the entire conjunctive proposition is *false* — without invoking any mysterious non-existent entities!

== Philosophical Significance

The Theory of Descriptions is the core embodiment of Russell's "logical constructionism":
- Definite descriptions are *not* referring expressions — they are quantificational structures
- "Non-existent objects" and other mysterious entities are eliminated (a "robust sense of reality")
- Surface grammar seriously misleads our understanding of logical form
- *The task of philosophy is to reveal genuine logical form through logical analysis*

#quote[
The names that we commonly use, like 'Socrates,' are really abbreviations for descriptions … The only words one does use as names in the logical sense are words like 'this' or 'that.'
(Russell 1918)
]

= Particulars and Universals

== Particulars

Particulars are concrete, individual things. In Russell's strict logical sense:
- Instances of sense-data (such as "this patch of red")
- They are *logically independent entities*
- Genuine logical proper names refer only to particulars — such as the demonstratives "this," "that"

== Universals

Universals are repeatable entities:
- *Properties* (such as "redness")
- *Relations* (such as "greater than," "before")
- *Similarity*

Russell defends *realism about universals*: without universals, logic and mathematics would be impossible. This stands in direct opposition to nominalism.

= Meaning and Denotation

Both Russell and Frege are concerned with the distinction between meaning and reference, but they diverge fundamentally:

== Frege's Approach
- Distinguishes Sinn (sense) and Bedeutung (reference)
- Sense is a public, objective abstract entity
- Sense determines reference
- There exists a "semantic hierarchy": sign → sense → reference

== Russell's Approach
- Propositions are complexes composed of *real constituents*
- There are no hidden "sense-entities"
- Definite descriptions are not singular terms but quantificational structures
- Emphasizes *logical analysis* rather than semantic hierarchy

Key contrast:
- Frege → semantic hierarchy
- Russell → logical constructionism

= The Multiple Relation Theory of Judgement

Russell's early theory of judgement attempts to explain: what happens when we judge "Socrates is mortal"?

Russell holds that judgement is not a dyadic relation between a judger and an abstract proposition (as Frege thought), but rather a *multiple relation between the judger and several real constituents*:

- The judger (J) has a *multiple relation* with Socrates, mortality, and logical form
- There is no "proposition" as an independent abstract entity

This avoids the problem of ontological commitment to "false propositions" — if judgement is an attitude toward a proposition, then false judgement seems to imply that "false propositions" must exist. The multiple relation theory eliminates this difficulty.

= Logical Atomism

Russell's logical atomism is the final form of his philosophical system:

- *The world* is composed of logical atoms (particulars, simple universals)
- *Facts* are simple relations between atoms
- *Propositions* are logical pictures of facts
- *Logical form* is the manner in which atoms combine
- *The endpoint of logical analysis* is that which is simple and cannot be further analyzed

#quote[
The fundamental epistemological principle in the analysis of propositions containing descriptions is this: Every proposition which we can understand must be composed wholly of constituents with which we are acquainted.
(Russell 1911)
]

This closely resonates with the early Wittgenstein's views in the _Tractatus_ — the latter being deeply influenced by Russell.

= The Value of Precision

Russell holds that *precision* itself has philosophical value:

- Philosophical problems often arise from grammatical confusion — the surface form of language does not match underlying logical structure
- The primary task of philosophy is not to construct grand metaphysical systems, but to *clarify confusion* (clarification)
- Logical analysis is the core tool for achieving this goal
- Philosophy is not a distinct "source of truth" different from science, but a continuation of the scientific spirit — treating more abstract problems with the same precision and rigor

= Assigned Reading Analysis: Knowledge by Acquaintance and Knowledge by Description (1911), pp. 108–18

This paper is the core text of Russell's epistemology. The assigned pages (pp. 108–18) cover the first third of the paper, establishing the fundamental distinction between acquaintance and description and drawing out its epistemological significance.

== The Paper's Opening (pp. 108–9): Statement of the Problem

Russell gets straight to the point: we often know propositions about "the so-and-so" to be true without knowing who or what the "so-and-so" is. For example: "I know that the candidate who gets the most votes will be elected, although I do not know who the candidate who gets the most votes is." The problem is: in such cases, *what exactly do we know*? When the object of knowledge is merely described, what is the object of knowledge?

Russell then gives the classic definition of acquaintance:

#quote[
I say that I am acquainted with an object when I have a direct cognitive relation to that object, i.e. when I am directly aware of the object itself.
]

Acquaintance = a direct cognitive relation = the relation in which an object is presented to the subject. This is not a relation of judgement but a relation of *presentation*.

== The Kinds of Objects of Acquaintance (pp. 109–11)

On pp. 109–14, Russell systematically enumerates the kinds of objects with which we can be acquainted:

1. *Sense-data*: such as the objects I am directly aware of when I see a color or hear a sound. Sense-data are typically complex — a patch of color in the visual field contains spatial relations.
2. *Objects of introspection*: in self-consciousness, we seem to be directly aware of changing complexes containing cognitive and conative relations. "When I see the sun, I am often not only aware of the sun, but also aware of the fact that I *am seeing* the sun."
3. *Universals*: such as "whiteness," "diversity," and other abstract objects. Direct awareness of universals is called "conceiving," and the universal conceived is called a "concept."
4. *The Self* (possible): Russell is cautious on this point — he considers it probable that he is acquainted with the self, but is reluctant to fully develop the argument in this paper.

== The Epistemological Constraint Principle (pp. 116–18): The Core Theorem

On the basis of these definitions, Russell states his most famous epistemological principle:

#quote[
Every proposition which we can understand must be composed wholly of constituents with which we are acquainted.
]

This is known as *Russell's epistemological constraint principle*. Its corollaries include:
- If we can understand a proposition containing "Napoleon," then "Napoleon" must be a constituent with which we are acquainted — but Napoleon is dead, and we cannot possibly be acquainted with him. Therefore, "Napoleon" is not, in the logical sense, a genuine name, but rather an *abbreviated description*.
- Genuine logical proper names can only be demonstratives such as "this," "that" — they directly point to objects with which we are acquainted (sense-data).
- The "names" of ordinary language are merely informal abbreviations for descriptions.

On p. 118, Russell extends this principle further to judgement: "Whenever a relation of supposing or judging occurs, the terms to which the supposing or judging mind is related must be terms with which the mind is acquainted." This means we cannot judge about constituents with which we are not acquainted — even when we appear to judge about "Napoleon," we are actually judging about certain universals with which we are acquainted (those that compose the description of "Napoleon").

== The Paper's Philosophical Significance

- This paper fundamentally transformed analytic philosophy's understanding of "knowledge" — knowledge is no longer a unified "true justified belief," but is essentially split into two basic types
- It provides the *epistemological foundation* for Russell's Theory of Descriptions — the reason we need the analysis of descriptions is precisely that most of our knowledge is not acquaintance but is obtained indirectly through description
- It delineates the boundaries of "logical atomism": the endpoint of logical analysis is those simple elements with which we can only be acquainted and which cannot be further analyzed

= The Contemporary Significance of Russell's Thought

Russell's method remains crucial today:
- The core methodology of analytic philosophy — transforming philosophical problems into logical-linguistic analysis — stems directly from Russell
- Influence on AI and computer science: the Theory of Types and the formalization of logical systems
- Contribution to epistemology: the acquaintance vs. description distinction remains the basic framework for discussions of direct vs. indirect knowledge
- A lesson for metaphysics: do not be deceived by the surface form of language — "existence" is not a predicate, "nothing" is not a name

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "Three passions, simple but overwhelmingly strong, have governed my life: the longing for love, the search for knowledge, and unbearable pity for the suffering of mankind."
  — Bertrand Russell, _The Autobiography of Bertrand Russell_
]
