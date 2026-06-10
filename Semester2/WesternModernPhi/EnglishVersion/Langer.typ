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
  #text(size: 24pt, weight: "bold")[Susanne K. Langer]\
  #v(10pt)
  #text(size: 12pt)[_Notes compiled from assigned reading materials; for knowledge sharing only; not for any commercial use_]\

]

= Background

Susanne K. Langer (1895–1985): American philosopher, a central figure in 20th-century semiotic aesthetics. Her work spans the philosophy of logic, the philosophy of mind, and the philosophy of art. She was deeply influenced by Ernst Cassirer's philosophy of symbolic forms, while simultaneously inheriting and critiquing the theory of signs in the analytic philosophical tradition.

Core question: *Is art a symbol? If so, what kind of symbol is it?*

Major works:
- 1942: _Philosophy in a New Key: A Study in the Symbolism of Reason, Rite, and Art_
- 1953: _Feeling and Form: A Theory of Art_
- 1967–82: _Mind: An Essay on Human Feeling_ (three volumes)

Langer explicitly positions _Feeling and Form_ as the sequel to _Philosophy in a New Key_ — the former established the foundations of symbol theory, the latter systematically applies it to art.

= Core Problem and Method

== The Mission of Philosophy

Langer inherits Charles Peirce's understanding of the task of philosophy:

#quote[
The business of philosophy is to unravel and organize concepts, to give definite and satisfactory meanings to the terms we use in talking about any subject (in this case art); it is, as Charles Peirce said, "to make our ideas clear."
]

Langer explicitly states what her book does *not* do:
- Does not provide criteria for judging "masterpieces"
- Does not establish canons of taste
- Does not predict the boundaries and possibilities of art
- Does not teach anyone how to make art

These "norms and rulings" lie, in Langer's view, beyond the domain of philosophy. The task of philosophy is to *clarify concepts*, not to issue regulations.

== The Foundations of Symbol Theory

Langer's philosophy is built upon the theory of symbols developed in _Philosophy in a New Key_. The core distinction:

*Discursive Symbolism*:
- Language and science belong to this category
- Possesses fixed structures of vocabulary and grammar
- Relations between symbols are logical and linear
- Capable of expressing "thoughts" but not "feelings"

*Presentational Symbolism*:
- Works of art belong to this category
- Does not possess a fixed "vocabulary" or "grammar"
- The symbol as a whole directly presents its meaning
- Capable of expressing "feeling" — i.e., the forms of human feeling

This is a fundamental distinction: *Art does not speak in an "artistic language"; art is an entirely different mode of symbolization.*

= Art as the Form of Feeling

== The Core Thesis

Langer's central claim: *Works of art are "presentational symbols"; they express not the artist's private feelings, but the "forms of feeling" — i.e., the logical structure of the life of feeling.*

Key distinction:
- *Expression* vs. *Self-expression*: When a person screams in anger, they are engaging in self-expression — releasing a feeling. But when an actor performs anger on stage, they are *expressing* anger — presenting anger as a form that can be perceived and understood.
- Art involves the latter, not the former.

== The Meaning of "Feeling"

Langer uses "feeling" in an extremely broad sense, encompassing:
- Sensation
- Emotion
- Bodily awareness
- The affective tone of thought
- All qualities of experience that can be subjectively felt

Art expresses *the forms of these feelings* — tension and release, rising and falling, unfolding and contracting, conflict and resolution — not the feeling content of some specific person at some specific moment.

== The Distinctiveness of Artistic Symbols

Langer emphasizes that artistic symbols (such as a piece of music, a painting) are essentially different from linguistic symbols:

- Linguistic symbols possess *fixed units of meaning* (words) and *rules of combination* (grammar); their meaning can be conveyed through translation
- Artistic symbols are *untranslatable* — the "meaning" of a painting can only be expressed by that painting itself
- The meaning of an artistic symbol is *inseparable* from its material carrier — change the sounds and you change the music; change the colors and you change the painting

#quote[
A work of art is a single, indivisible symbol, although a highly articulated one; it is not, like a discourse, composite, analyzable into more elementary symbols.
]

= Dialogue with Western Modern Philosophy

== Relation to Wittgenstein

Langer's symbol theory is in deep dialogue with the early Wittgenstein:

- *Point of convergence*: Both insist on a rigorous boundary between "what can be said" (expressible in language) and "what cannot be said" (which can only be shown). Wittgenstein in the _Tractatus_ says "What we cannot speak about we must pass over in silence"; Langer says that the unsayable can be *presented* through art, although it cannot be asserted.
- *Point of divergence*: Wittgenstein holds that "the unsayable" (ethics, aesthetics, the meaning of life) can only be shown, and any attempt to say it leads to nonsense; Langer holds that *art is precisely a systematic way of "showing"* — it is not nonsense, but a different mode of meaning.

== Relation to Heidegger

Langer and Heidegger share certain deep concerns:
- Both oppose reducing all meaning to "assertoric truth" or "propositional knowledge"
- Both hold that art is a way in which truth happens — although Langer (influenced by Cassirer) uses the concept of "symbol," while Heidegger uses the concept of "Being"
- Both are concerned with how "world" is "opened up" through symbols/language/art

The difference lies in: Langer maintains the clarity and systematicity of analytic philosophy; her "symbol" theory is far more precise and operational than Heidegger's "truth of Being."

== Critique of Logical Empiricism

Langer's symbol theory constitutes a powerful challenge to the logical empiricist "criterion of meaning." If only "discursive symbolism" (i.e., scientific language) is considered "meaningful," then:
- The entire domain of art is either excluded from meaning (relegated to "emotional discharge") or forcibly reduced to some secondary form of discourse
- The dimensions of human experience that can *only* be expressed through presentational symbols — the architectonic feelings of music, visual art, dance — are erased by philosophy

Langer restores art to its fundamental place in the human system of meaning: *Art is not the poor cousin of science, but an autonomous, fundamental, and irreplaceable mode of symbolization.*

= Assigned Reading Analysis: Feeling and Form (1953), Chapter 1: "The Concept of the Symbol"

Chapter 1 is the cornerstone of Langer's theory of artistic symbols. In this chapter, she accomplishes two important tasks: delineating the scope and philosophical mission of the book, and establishing the basic conceptual framework of "symbol."

== The Task of Philosophy and the Limitations of This Book (Introduction, pp. vii–xii)

Langer makes clear in the Introduction that this book is the sequel to _Philosophy in a New Key_ (1942) — it presupposes the reader's familiarity with the symbol theory developed in that earlier work.

She clearly lists what this book *does not* do:
- Does not provide criteria for judging "masterpieces"
- Does not establish canons of taste
- Does not predict what is possible or impossible in art
- Does not teach anyone how to make art
- Does not reconcile art theory with any "world hypothesis" (such as those proposed by Stephen Pepper)

She writes: "All these norms and rulings, I think, fall outside the philosopher's province. The business of philosophy is to unravel and organize concepts, to give definite and satisfactory meanings to the terms we use in talking about any subject."

== The Core of Chapter 1: Definition and Classification of the Symbol

Chapter 1 establishes the cornerstone of Langer's entire aesthetic theory — the concept of the *symbol*. Langer distinguishes:

*Sign*: Indicates the existence or imminent occurrence of something — animals also respond to signs (smoke is a sign of fire). Signs have a direct, stimulus-response function.

*Symbol*: Not only indicates an object, but is used to *think about* the object. A symbol is the *vehicle for the conception of objects* — humans not only react to "smoke," but can also *think about* fire, "talk about" it when fire is absent. This is precisely the dividing line between the human mind and the animal mind.

== Discursive Symbolism

Language is the paradigmatic discursive symbolic system. Its features include:
- *Vocabulary*: fixed, conventional units of meaning (words), each with relatively determinate meaning
- *Grammar*: rules of combination that determine the legitimate ways complex expressions can be formed
- *Translatability*: statements in a discursive symbolic system can be translated into equivalent expressions in the same language or into another language

== Presentational Symbolism

Langer's breakthrough contribution lies here: she argues that *there exists another, fundamentally different mode of symbolization* — presentational symbolism. This kind of symbol:
- *Has no fixed vocabulary or grammar* — a painting is not composed of "minimal units of meaning" assembled according to rules
- *Bears meaning holistically* — its parts cannot be detached and independently defined like words in a sentence; any local change alters the meaning of the entire work
- *Is untranslatable* — the meaning of a painting cannot be fully conveyed in words (or in any other medium)
- *Expresses the forms of the life of feeling* — not the content of feeling ("I was sad yesterday because…"), but the structure and dynamics of feeling (tension and release, rising and falling, unfolding and contracting, conflict and resolution)

== "Significant Form"

Langer inherits Clive Bell's concept of "significant form" but provides it with a precise semiotic foundation. A work of art is a kind of "significant form" — a symbolic form that directly presents the logical structure of the life of feeling. It is not a statement *about* feeling (like a psychology paper), but a *symbolic whole* that *presents* the form of feeling.

#quote[
A work of art is a single, indivisible symbol, although a highly articulated one; it is not, like a discourse, composite, analyzable into more elementary symbols.
]

== Reading Guidance

Chapter 1 establishes the methodological principles and conceptual tools for the entire book. Langer's ambition is grand: she attempts to demonstrate that art is not a mysteriously ineffable "irrational" domain, but, like science and language, is a *fundamental*, *autonomous*, *irreplaceable* mode of the human symbolic capacity. In dimensions that science cannot reach — the forms of the human life of feeling — art is the sole mode of symbolization.

= Summary: The Philosophical Significance of Langer's Thought

1. *Expanded the concept of "meaning"*: Meaning is not limited to propositions (true/false judgments of "X means Y"), but also encompasses the forms of feeling expressed through presentational symbols that are untranslatable into discursive language

2. *Art is cognitive*: Art is not "aesthetic diversion" or "emotional release"; it is a fundamental way for humans to know themselves and the world — it lets us *see* the forms of the life of feeling

3. *Systematization of symbol theory*: Langer inherited Cassirer's thesis of man as "animal symbolicum," concretizing it into a theory of different modes of symbolization

4. *Bridging analytic and continental philosophy*: She embraces the analytic philosophical pursuit of clarity and precision, while also responding to continental philosophy's (especially Heidegger's) concerns about art, feeling, and non-propositional meaning

#v(10pt)
#text(size: 14pt, font:"Bookman Old Style")[
  "The aim of philosophy is to make our ideas clear. But what does it mean to make an idea of art clear? Not to reduce art to a formula, but to understand what kind of phenomenon we are dealing with when we make or behold a work of art."
  — Susanne K. Langer, _Feeling and Form_
]
