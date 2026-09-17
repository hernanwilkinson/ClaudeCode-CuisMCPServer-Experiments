# Brief for importing one semester of IngSoft1 exams into exercises/

Source repository (READ ONLY, never modify, never move or delete anything in it):
/Users/hernan/Documents/IngSoft1-Repos/parciales

Target: /Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/exercises/<exercise-id>/

You are given ONE semester directory. It holds up to four exams: first midterm (1erParcial /
Parcial 1), second midterm (2doParcial / Parcial 2), and make-up exams (Recuperatorio / Recu,
sometimes one per midterm, sometimes one covering both). Layout varies by year. Some semesters
have "Tema1"/"Tema2" variants of one exam: treat each variant as its own exercise.

For EACH exam produce one exercise directory named
  <year>-<semester>-<exam>[-<variant>]
with exam in {parcial1, parcial2, recuperatorio} and variant in {parcial1, parcial2, tema1, tema2,
segundo} when needed. Examples: 2025-2c-parcial1, 2022-1c-recuperatorio-parcial2,
2020-1c-parcial2-tema1, 2025-1c-recuperatorio-segundo.

Inside each exercise directory create:

1. spec.md — the exam statement translated to English, faithfully and completely, as Markdown.
   - The statement is the "Práctica" PDF when there is one (NOT the "Teórica" PDF, which is a
     theory exam: skip it entirely), otherwise the Enunciado PDF, .txt or .md.
   - Read the whole PDF with the Read tool (use the `pages` parameter in ranges; some PDFs have
     many pages). Translate ALL the exercise content: context, the story, every numbered point,
     every rule, every example, every table, every code excerpt. Keep Smalltalk code, class
     names, selectors and identifiers exactly as they are (do not translate code or names).
     Keep domain terms in Spanish in parentheses the first time when the translation could be
     ambiguous (e.g. "truco (the card game)").
   - REMOVE everything about how to take or hand in the exam: submission instructions, file
     naming, email, deadlines, time limits, allowed materials, grading rules, "regularidad",
     signature or name fields, instructions about videos, links to videos, the course header
     and footer. Keep grading point values only if they appear inline with the tasks as part of
     their structure (e.g. "(2 points)"); drop separate grading tables.
   - Start spec.md with a title line "# <exam title in English>". Do NOT put the provenance
     in the spec: the original path goes in source.md only.
   - REMOVE from the spec every instruction about how to work or what will be judged: any
     mention of TDD, of "the design heuristics seen in the course", of good practices, of
     grading criteria (declarativeness, repeated code, ifs, encapsulation...), of slides or
     course material, and any reference to the original PDF or attached files. The spec is
     the prompt of an experiment whose conditions control exactly that guidance, so it must
     state the problem and nothing about the method. "Implement it using TDD and the design
     heuristics seen in the course" becomes "Implement it."
   - If the statement refers to initial code ("se provee código", "código inicial"), say
     "Initial code is provided in the category <X>" without naming attached files.
2. spec-original.<ext> — a COPY of the original statement file (pdf/txt/md), same extension.
3. starting/ — COPIES of the initial code files given to the student (files named like
   "...Parcial.st", "...Original.st", "CodigoParaEmpezar", "CodigoInicial", "...-1erParcial.st"
   without "Solucion"/"Resolucion" in the name, "usarEstaVersionParaPracticar/..." etc.). If
   a Readme in the directory says which file is the initial one, follow it. If there is no
   initial code, omit the directory.
4. solution/ — COPIES of every solution file (names with Solucion, Solu, Resolucion, Solution,
   SolucionDeVideo, CodigoDelVideo, SolucionMinima/Maxima, Ptos123/Pto4, .zip step-by-step,
   .cs.st fixes). Keep the original file names. If a Readme explains the files, copy it here.
5. source.md — a short note: the original directory, which file is the statement, which files
   went to starting/ and solution/ and why, any Readme / video link text found (verbatim,
   translated), and what you removed from the statement (one line).
6. exercise.json — with exactly these keys:
   {
     "name": "<exercise-id>",
     "title": "<short English title>",
     "kind": "refactoring" | "feature" | "greenfield",
     "package": "<the system category / package name used by the initial code, e.g. from
                 '!classDefinition: ... category: 'X'' or '!provides: 'X''; if there is no
                 initial code, propose a CamelCase name from the domain>",
     "description": "<one or two sentences: the domain and what the student must do>",
     "startingPackages": ["starting/<file>", ...],   // [] when none
     "solutionPackages": ["solution/<file>", ...],
     "acceptanceTests": null,
     "source": "<original directory relative to the repository>",
     "semester": "<year>-<semester>",
     "exam": "<parcial1|parcial2|recuperatorio>",
     "design": {
       "conditionalsToPolymorphism": true/false,   // the task asks to replace ifs / isKindOf / case with polymorphism or state objects
       "duplicatedCode": true/false,                // removing duplication / extract method is central
       "collectionProtocol": true/false,            // replacing do:+if loops with select:/detect:/inject: etc. matters
       "refactoringOfGivenCode": true/false,        // most of the work is changing code that is given
       "newBehaviorOnGivenCode": true/false,        // adding features to given code
       "fromScratch": true/false,                   // designing a model from nothing
       "typeInformationHelps": true/false,          // knowing the concrete classes flowing through variables would help a lot (heterogeneous collections, dispatch on kinds, many collaborators)
       "stateMachine": true/false,                  // states / turns / phases modelling
       "notes": "<one sentence on what makes this exercise hard or interesting for design>"
     },
     "sizeHint": {"classesInStartingCode": <int or 0>, "methodsInStartingCode": <int or 0>}
   }
   Count classes with `grep -c "^!classDefinition:" starting/<file>` and methods with
   `grep -c "stamp: '" starting/<file>` (one stamp per method), summing over the starting files.

Use Bash (cp, mkdir, grep) for copying and counting. Use Read for PDFs and text files.
Kinds: refactoring when the statement is mostly about changing given code; feature when it adds
behavior to given code; greenfield when there is no initial code or the initial code is tiny.

When done, answer with ONE JSON array (no prose before it) with one object per exercise:
{"name", "title", "kind", "package", "startingFiles": n, "solutionFiles": n,
 "specWords": <word count of spec.md>, "design": {...same flags...}, "summary": "<2 sentences>",
 "problems": "<anything unclear, e.g. which file is the initial code, missing statement>"}
