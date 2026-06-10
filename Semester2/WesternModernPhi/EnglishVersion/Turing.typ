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
  #text(size: 24pt, weight: "bold")[Alan Turing]\
  #v(10pt)
  #text(size: 12pt)[_Notes compiled from the instructor's lecture materials; for knowledge sharing only; not for any commercial use_]\

]

= Background

Alan Turing (1912–1954): British mathematician, logician, and computer scientist, acclaimed as "AI's first philosopher." His work spans mathematics, logic, cryptanalysis, and philosophy, laying the theoretical foundations of modern computer science and artificial intelligence.

Major contributions:
- 1936: "On Computable Numbers," proposing the concept of the universal Turing machine
- 1939–45: Code-breaking work during World War II
- 1950: "Computing Machinery and Intelligence," proposing the famous Turing Test

Turing was an exemplary scholar, especially as AI's first philosopher. Vision, drive, interdisciplinarity, integrity.

= Assigned Reading Analysis: Computing Machinery and Intelligence (1950), pp. 433–4, 442–54

The assigned reading covers two crucial parts of this classic paper: the opening set-up of the "Imitation Game" (pp. 433–4) and the later responses to various objections (pp. 442–54).

== pp. 433–4: Setting Up the Imitation Game

=== Substituting the Question Rather Than Answering It

Turing opens by announcing: "I propose to consider the question, 'Can machines think?'" But he immediately points out that attempting to answer this by defining "machine" and "think" is "dangerous" — if defined according to the common use of these words, the answer would reduce to a statistical result like a "Gallup poll." Therefore, *he does not answer the question with definitions — he replaces it with another question.*

=== The Rules of the Imitation Game

The original imitation game involves three people: a man (A), a woman (B), and an interrogator (C). The interrogator communicates with the other two by typewritten text, aiming to determine which is the man and which is the woman. Turing's proposed new form is: *"What will happen when a machine takes the part of A in this game?"* If, after adequate interaction, the interrogator cannot reliably distinguish the machine from the human, then the machine has passed the test.

Turing particularly emphasizes: the design of the test isolates "physical and intellectual capacities." The interrogator cannot see, touch, or hear the participants — only typewritten text. This focuses the question on *intelligence*, rather than on mimicking appearance or voice.

=== Sample Q&A

Turing provides several sample Q&As to show the range of the test:
- Q: "Please write me a sonnet on the subject of the Forth Bridge." A: "Count me out on this one. I never could write poetry."
- Q: "Add 34957 to 70764." A: "(Pause about 30 seconds and then give as answer) 105621."
- Q: "Do you play chess?" A: "Yes." (Followed by a chess problem with K and R against K)

These examples demonstrate that the test can cover any domain of human activity — from arithmetical reasoning to humor, from games to literature — without penalizing the machine for lacking certain non-intellectual human traits (such as lacking charm in a beauty contest).

== pp. 442–4: Responding to Various Objections

In the latter portion of the paper (pp. 442–54), Turing systematically responds to nine objections to machine intelligence. The assigned pages cover the most critical ones:

=== The Mathematical Objection (pp. 444–5)

This is the most important philosophical objection — based on Gödel's incompleteness theorems:

"There are certain things that [a machine] cannot do. If it is rigged up to give answers to questions, there will be some questions to which it will either give a wrong answer, or fail to give one at all."

Turing's response proceeds in layers:
1. *Humans also make mistakes*: "We too often give wrong answers to questions ourselves to be justified in being very pleased at such evidence of fallibility on the part of the machines."
2. *Superiority is relative*: Our feeling of superiority can only be a "petty triumph" over that one particular machine — it is impossible to triumph simultaneously over all machines. "There might be men cleverer than any given machine, but then again there might be other machines cleverer again, and so on."
3. *Machine learning*: Using machine learning methods, machines can also "master or prove the relevant facts" — this is no longer about fixed formal systems.

=== The Argument from Consciousness (pp. 445–6)

"Not until a machine can write a sonnet or compose a concerto because of thoughts and emotions felt, and not by the chance fall of symbols, could we agree that machine equals brain — that is, not only write it but *know that it had written it*."

Turing's response: this is a solipsistic objection. "A may think 'A thinks, while B is merely pretending' — and yet, what is the criterion for not pretending?" Taking this objection to its extreme logical conclusion, the only way to know that a machine is thinking is to be that machine and feel oneself thinking. This would make communication about other minds completely impossible.

Turing's humorous reply: instead of endless argument, "it would be better to accept the polite convention that everyone thinks."

=== On the Criterion of "Genuine Thinking"

Throughout the paper, Turing consistently opposes treating "thinking" as some mysterious essence or unverifiable inner state. His philosophical strategy is *operationalist* — not defining what thinking "is," but providing an operationalizable test to assess it. But this does not mean he is a "behaviorist" — he merely holds that if we ultimately cannot distinguish "genuine thinking" from "mere imitation" in an operational way, then perhaps the distinction itself is not as clear and useful as we imagine.

== Reading Guidance

The enduring influence of this paper lies in its success in transforming a profound philosophical question ("What is thought?") into a technical, discussable form — while maintaining deep philosophical sensitivity to the question. Turing does not simply evade the metaphysical question, but handles it with an engineer's precision and a philosopher's prudence.

= The Turing Test (The Imitation Game)

== Core Problem and Method

In his 1950 paper, Turing posed a fundamental question: "Can machines think?" But he did not directly answer this question; instead, he replaced it with a behavioral test.

#quote[
I propose to consider the question, 'Can machines think?' This should begin with definitions of the meaning of the terms 'machine' and 'think'... Instead of attempting such a definition I shall replace the question by another, which is closely related to it and is expressed in relatively unambiguous words.
]

Turing's proposed "Imitation Game" is: an interrogator (C) communicates by typewritten text with two participants in separate rooms (A and B), where A is a machine and B is a human. If, after adequate interaction, the interrogator cannot reliably distinguish the machine from the human, then the machine has passed the test.

== Common Misunderstandings of the Turing Test

Many textbooks misrepresent the Turing Test:

- Misunderstanding 1: "Turing rejected the question 'Can machines think?'" — In fact, Turing merely replaced it with a clearer behavioral test, not rejecting the question itself
- Misunderstanding 2: "Passing the test is equivalent to thinking" — Turing himself did not hold that passing the test is a sufficient condition for thinking; he treated the test as a conceptual tool, a starting point for thinking rather than an endpoint for answering
- Misunderstanding 3: "The Turing Test is behavioristic" — Searle and others have criticized it this way, but Turing's intentions are far subtler than behaviorism

Turing himself said in a 1952 BBC broadcast: "You might call it a test to see whether the machine thinks, but it would be better to avoid begging the question and say that the machines that pass are (say) 'Grade A' machines... My suggestion is merely that this is what we ought to discuss. It is not the same as 'Can machines think?' but it seems close enough for our present purposes, and raises roughly the same difficulties."

== The Design Philosophy of the Test

The Turing Test is designed with careful deliberation:
- Excluding the interference of physical appearance through typewritten communication ("no engineer or chemist claims to be able to produce a material which is indistinguishable from the human skin")
- Allowing the machine to display various human abilities (mathematics, chess, poetry composition, etc.)
- Not penalizing the machine for lacking certain non-intellectual human traits (such as enjoying good food)

Turing humorously comments: "Possibly a machine might be made to enjoy this delicious dish [strawberries and cream], but any attempt to make one do so would be idiotic."

= The Mathematical Objection and Gödel's Theorem

== The Background of Gödel's Incompleteness Theorems

Gödel's Theorem: No axiomatization, that is, no finite collection of basic principles and rules (i.e., no algorithm), can ever be strong enough to establish all and only the truths of arithmetic.

Gödel himself wrote: "The human mind is incapable of formulating ... all its mathematical intuitions, i.e., if it has succeeded in formulating some of them, this very fact yields new intuitive knowledge ... This fact may be called the 'incompletability' of mathematics."

== The Lucas-Penrose Argument (The Mathematical Objection)

Lucas argued in 1961: because of Gödel's incompleteness theorems, any machine (as a formal system) has true propositions it cannot prove, but the human mind can "see" that these propositions are true. Therefore, the human mind transcends any machine.

#quote[
However complicated a machine we construct, it will ... correspond to a formal system, which in turn will be liable to the Gödel procedure of finding a formula unprovable-in-that-system. This formula the machine will be unable to produce as being true, although a mind can see that it is true. ... Thanks to Gödel's theorem, the mind always has the last word.
]

== Turing's Response

Turing anticipated this objection in 1950 and responded on two levels:

*First response*: Humans themselves make mistakes. "We too often give wrong answers to questions ourselves to be justified in being very pleased at such evidence of fallibility on the part of the machines."

*Second response*: Human superiority can only be demonstrated against one particular machine; it cannot simultaneously defeat all machines. "There would be no question of triumphing simultaneously over all machines. In short, then, there might be men cleverer than any given machine, but then again there might be other machines cleverer again, and so on."

*Other responses*:
- Some axiomatic systems are also too complex for humans to grasp
- Machine learning can enable machines to learn and prove relevant facts just as humans do

= Searle's Chinese Room Argument

== The Structure of the Argument

Searle's "Chinese Room" thought experiment seeks to refute "Strong AI" — the view that "an appropriately programmed computer really is a mind."

Searle imagines: a person who does not understand Chinese is shut in a room, processing Chinese characters according to an English rulebook. From the outside, they seem to "understand" Chinese, but in fact they understand nothing. Searle holds that a computer is like this person — merely manipulating symbols, without genuine understanding.

Key premise: "In the Chinese case I have everything that artificial intelligence can put into me by way of a program, and I understand nothing."

== Criticisms of Searle's Argument

- *Combination reply*: If Searle were placed inside the brain of a real speaker and he still did not understand, does this mean his test itself is flawed?
- *Searle* claims that attributing mental states to something "not made of the same stuff as us" is unnatural and mistaken
- The Chinese Room argument does not truly support Searle's conclusion — it exposes the need for a better experiment

= The Imitation World Argument

== From the Turing Test to the Imitation World

Developments in modern AI (such as ChatGPT) have called the sufficiency of the traditional Turing Test into question. The course proposes an upgraded philosophical test:

*Imitation World Argument*:
+ P1: In an alternative history, machines would possess "human mindedness"
+ P2: Our human mindedness = "human mindedness" in the alternative history
+ C: Machines can acquire human mindedness

This is a philosophical deepening of the traditional Turing Test, upgrading from "can they deceive humans in conversation" to "can they become human in a complete social history."

== The Argument from Robot Existentialism

The counter-argument holds:
+ P1: In the alternative history, machines would be inauthentic
+ P2: Our human mindedness ≠ "human mindedness" in the alternative history
+ C: Machines cannot acquire human mindedness

= Ten Objections Surrounding the Imitation World

#grid(
  columns: (1fr, 8fr),
  column-gutter: 4pt,
  row-gutter: 3pt,
  inset: 5pt,

  [(1)], [*The Biological Objection*: Opposes Strong AI, arguing that biology is necessary for mindedness],
  [(2)], [*Unrealistic*: This alternative history is completely unrealistic],
  [(3)], [*Epistemically Implausible*: Ignorance requires absurdity to sustain],
  [(4)], [*Verbal Dispute*: This is merely a dispute about word definitions],
  [(5)], [*Gödelian Objection*: A continuation of the Lucas-Penrose argument],
  [(6)], [*Functionalist Presupposition*: The argument presupposes multiple realizability],
  [(7)], [*Semantic Externalism*: Different worlds imply different concepts],
  [(8)], [*Phenomenological Objection*: The imitation world is inconceivable],
  [(9)], [*Searle's Objection*: Don't take the epistemological route],
  [(10)], [*Conceptual Limitations*: Our concepts may be unable to grasp important differences],
)

= Turing's Intellectual Legacy

== The Relationship Between Turing, Gödel, and the Philosophy of AI

Turing's thought, together with Gödel's incompleteness theorems, constitutes a philosophical framework concerning mind and machine:

- *Gödel* revealed the boundaries of formalized rationality — any closed system cannot encompass the totality of truth
- *Turing* posed a more pragmatic question: rather than arguing whether machines "can" think, ask to what extent they can exhibit intelligent behavior
- *Modern developments*: Large language models (like ChatGPT) rely neither on fixed axiomatic systems nor are they classical symbolic AI — this shifts the form of the challenge posed by Gödel's theorem; the question is no longer "can formal systems simulate humans," but "can statistical machines produce genuine understanding"

== Key Philosophical Insights

Turing's deepest contribution lies not in providing a definitive answer to "Can machines think?", but in:
1. Transforming a philosophical question into an operational empirical test
2. Recognizing that intelligence is not an "all-or-nothing" property, but a spectrum of capacities with degrees
3. Foreseeing the importance of machine learning and adaptive systems
4. Transcending the simple dichotomy between behaviorism and naïve mentalism

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The original question, 'Can machines think?' I believe to be too meaningless to deserve discussion. Nevertheless I believe that at the end of the century the use of words and general educated opinion will have altered so much that one will be able to speak of machines thinking without expecting to be contradicted."
  — Alan Turing, 1950
]
