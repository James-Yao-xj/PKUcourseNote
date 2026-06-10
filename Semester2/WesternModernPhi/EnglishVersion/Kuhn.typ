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
  #text(size: 24pt, weight: "bold")[Thomas Kuhn]\
  #v(10pt)
  #text(size: 12pt)[_Notes compiled from the instructor's lecture materials; for knowledge sharing only; not for any commercial use_]\

]

= Background

Thomas S. Kuhn (1922–1996): American physicist, historian of science, and philosopher of science. His landmark work _The Structure of Scientific Revolutions_ (1962/70) is one of the most cited works in the humanities and social sciences of the 20th century, fundamentally altering how people understand scientific development.

Life trajectory: 1943 Harvard B.S. in physics → 1949 Ph.D. in physics → turned to history of science → 1956 taught at Berkeley → 1964 Princeton → 1979 MIT

Core question: How does science develop? The traditional view holds that science progresses cumulatively — one fact added to another, gradually approaching truth. Kuhn's answer is: *No, scientific development alternates between "normal science" and "scientific revolutions."*

= Core Concepts

== Paradigm

Paradigm is Kuhn's most central but also most perplexing concept. It has two layers of meaning:

*Meaning 1 (broad): Disciplinary Matrix* — the entire constellation of commitments shared by a scientific community, including:
- Symbolic generalizations (such as $F = m a$)
- Metaphysical commitments (such as "heat is molecular motion")
- Shared values (such as the pursuit of simplicity, precision)
- Exemplary problems and their solutions

*Meaning 2 (narrow): Exemplar* — concrete problem-solutions in textbooks, the core instructional material through which scientists learn how to "do science." Students learn to recognize and solve new problems by imitating exemplars.

#quote[
History, if viewed as a repository for more than anecdote or chronology, could produce a decisive transformation in the image of science by which we are now possessed.
(Kuhn, _Structure_, p. 1)
]

Kuhn's ambition is to change our fundamental understanding of science — not through philosophical reasoning, but through *historical facts*.

== Normal Science

Normal science is research conducted under the guidance of an accepted paradigm. It has three features:

1. *Determinacy*: Scientists know what problems are important and what solutions are acceptable
2. *Depth not breadth*: Does not question foundational assumptions, but engages in refined "puzzle-solving" within the paradigm
3. *High consensus*: The scientific community has almost no dispute about basic theories, methods, and standards

The primary activity of normal science is *puzzle-solving*: fitting natural phenomena into the conceptual boxes provided by the paradigm. This stands in sharp contrast to Popper's "falsificationism" — in normal science, scientists do *not* attempt to falsify the paradigm, but attempt to demonstrate their ability to solve problems within the paradigm's framework.

== Anomaly and Crisis

Anomalies are phenomena that normal science cannot digest — repeated failures of puzzle-solving within the paradigm's framework.

Conditions for anomalies to escalate into crisis:
- The anomaly involves the paradigm's foundational commitments
- The anomaly has significant practical application implications
- The anomaly has long resisted resolution by the most eminent scientists
- The number of anomalies is continuously increasing

During crisis, the scientific community begins to:
- Make ad hoc modifications to the existing paradigm
- Explicitly articulate and debate the paradigm's basic assumptions, which were never questioned during normal science
- Generate alternative theories (at this point entering "extraordinary science" or the "pre-paradigm" state)

== Scientific Revolution

A scientific revolution is a *paradigm shift*. Kuhn likens it to a "Gestalt switch" — after the revolution, the very world the scientist inhabits has changed.

Classic cases of scientific revolutions:

#grid(
  columns: (5fr, 5fr),
  column-gutter: 8pt,
  row-gutter: 4pt,
  inset: 5pt,

  [*Old Paradigm*], [*New Paradigm*],
  [Ptolemaic geocentrism], [Copernican heliocentrism (1543–17th c.)],
  [Aristotelian/impetus physics], [Newtonian mechanics (1660s–1687)],
  [Phlogiston theory], [Lavoisier's oxidation theory (1770s–1789)],
  [Caloric theory], [Thermodynamics / energy conservation (1820s–1850s)],
  [Miasma / spontaneous generation], [Germ theory of disease (1850s–1880s)],
  [Action-at-a-distance electromagnetism], [Maxwell's electromagnetic field theory (1860s–1870s)],
  [Blending inheritance / vitalism], [Mendelian genetics + Modern Synthesis (1900–1940s)],
  [Fixed-continent geology], [Plate tectonics (1960s)],
  [Steady-state / eternal universe], [Big Bang cosmology (1940s–1965)],
)

== Incommensurability

Paradigms before and after a revolution are "incommensurable," meaning:
- They employ different concepts and terminology (even the same word has different meanings — e.g., Newton's and Einstein's definitions of "mass")
- They pose different questions (what counts as a legitimate scientific question itself changes)
- They use different evaluative standards
- There is no paradigm-neutral standpoint from which to adjudicate between paradigms

*But this does not mean that paradigm choice is "irrational" or "purely subjective."* Kuhn emphasizes that the scientific community evaluates through shared values (accuracy, consistency, scope, simplicity, fruitfulness) — it is simply that these criteria are insufficient to uniquely determine choice.

= Assigned Reading Analysis: The Structure of Scientific Revolutions (1962/70), Section 7: "Crisis and the Emergence of Scientific Theories"

The assigned section — Section 7, "Crisis and the Emergence of Scientific Theories" — is the turning point of the book. The first six sections establish the concepts of "paradigm" and "normal science"; from Section 7 onward, Kuhn turns to the explanation of how science undergoes revolution.

== The Mechanism of Crisis Emergence

Kuhn's core thesis: *New theories emerge only after normal science has experienced persistent anomaly.*

An anomaly is different from a mere counterexample: only when the normal scientific community tries repeatedly and fails repeatedly — when the anomaly *persistently resists resolution* within the paradigm's framework — does the anomaly escalate into crisis.

Crisis has three features:
1. *The paradigm is "blurred"*: rules become flexible; scientists begin to experiment with more radical hypotheses that would not be entertained during normal science
2. *The emergence of meta-scientific discussion*: Foundational assumptions that were never questioned during normal science suddenly become subjects of open debate — scientists begin to do *philosophy* (about method, about metaphysics, about what counts as a legitimate explanation)
3. *Alternative theories begin to proliferate*: Different camps propose different new paradigms; the power of the old paradigm to unify science collapses

== The Co-emergence of Crisis and New Theories

Kuhn points out that virtually all major scientific revolutions in history follow this pattern:
- Copernican astronomy emerged after centuries of accumulating anomalies in the Ptolemaic system
- Newtonian mechanics arose when Aristotelian physics faced countless "inexplicable" phenomena
- Lavoisier's chemical revolution occurred against the background of the phlogiston theory's repeated failures

== "A Theory Is Declared Invalid Only When an Alternative Candidate Is Available" (p. 77)

This is one of Kuhn's most controversial claims and the most direct challenge to Popperian falsificationism. For Popper, when a theory is falsified, science should abandon it. But Kuhn points out: *Scientists never abandon a paradigm because it has been "falsified" — they only abandon it when there is a better alternative paradigm available.*

The reason: if they did not do this, science would descend into chaos — abandoning a "not quite perfect but workable" paradigm without any replacement is equivalent to abandoning "doing science" itself.

== Crisis as a "Window of Opportunity"

Kuhn likens crisis to an "essential tension" — without crisis, there is no scientific revolution; but without normal science, crisis cannot occur (because only the deep puzzle-solving of normal science can reveal the true limitations of the paradigm). This is a paradoxical structure: *science's conservatism (refusing to abandon the paradigm) is precisely the condition for its revolutionary character (because only by holding on to the end can crisis be exposed).*

== The Philosophical Significance of the Assigned Reading

Section 7 condenses several key tensions in Kuhn's philosophy of science:
1. *Science is rational, but it is not guided by fixed rules* — the "meta-scientific" arguments scientists make in crisis involve value judgments, not purely logical reasoning
2. *Progress does not require "toward truth"* — Kuhn's scientific progress is not an approach toward a God's-eye "real world," but an improvement in puzzle-solving capacity
3. *Historical facts take priority over philosophical a priori* — Kuhn here is not engaging in a priori reasoning about "how science should be," but observing what scientists actually did in the history of science

= Scientific Progress and Truth

== Can Progress Be Independent of "Truth"?

Kuhn raises a disturbing question: if paradigms constantly succeed each other and new paradigms are "incommensurable" with old ones, can we still say that science "approaches truth"?

Kuhn's answer is *evolutionary epistemology*:
- The development of science is more like Darwinian evolution than linear progress toward a predetermined goal
- Later theories are "better" in terms of puzzle-solving ability, but this does not mean they are "closer to truth"
- "Truth" as a correspondence-with-reality concept loses clear meaning in Kuhn's framework

#quote[
The developmental process described in this essay has been a process of evolution from primitive beginnings—a process whose successive stages are characterized by an increasingly detailed and refined understanding of nature. But nothing that has been or will be said makes it a process of evolution toward anything.
(Kuhn, _Structure_, Postscript)
]

== The Problem of Relativism

Kuhn is often accused of being a relativist, but his position is more complex:
- He acknowledges that scientific development does produce better puzzle-solving tools
- But he denies that we can independently establish that "better puzzle-solving tools" equals "more accurate description of objective reality"
- Scientific knowledge is not a theory-independent "mirroring" of nature

= Natural Science vs Social Science vs Philosophy

Kuhn's object of analysis is the *natural sciences* (especially physics), but his theory has sparked intense discussion about the *social sciences*:

- Are the social sciences in a "pre-paradigm" stage? — Social scientists lack consensus on basic theories and methods, which is precisely the hallmark of "pre-paradigm" science
- But this does not mean the emergence of a "paradigm" in social science is merely a matter of time — the distinctive object of social science (conscious human agents) may make single-paradigm rule impossible

The role of philosophy: In Kuhn's view, philosophy is not the "foundation" or "umpire" of science, but a reflective activity that becomes more important during periods of scientific crisis — when the metaphysical commitments of an old paradigm are being shaken.

= The Influence and Controversies of Kuhn's Thought

== The Subversion of the Image of Science

Kuhn's influence extends far beyond academic circles in the philosophy of science:
- Fundamentally changed science education — no longer presenting the history of science as the victor's linear narrative
- Provided theoretical resources for the Sociology of Scientific Knowledge (SSK) and the "Strong Programme"
- Influenced all manner of "paradigm shift" discourse, from literary criticism to political theory

== Major Controversies

1. *The vagueness of the paradigm concept*: Critics (especially Margaret Masterman) have pointed out that Kuhn uses "paradigm" in at least 21 different ways
2. *The charge of relativism*: If paradigms are incommensurable, are there rational standards for judging scientific progress?
3. *The debate with Popper*: Kuhn's concept of normal science (scientists do not attempt to falsify the paradigm) forms a famous opposition to Popper's critical rationalism
4. *Kuhn's own revisions*: In the 1969 Postscript, Kuhn acknowledged the ambiguity of the "paradigm" concept and partially replaced it with "disciplinary matrix"

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "Normal science does not aim at novelties of fact or theory and, when successful, finds none."
  — Thomas S. Kuhn, _The Structure of Scientific Revolutions_
]
