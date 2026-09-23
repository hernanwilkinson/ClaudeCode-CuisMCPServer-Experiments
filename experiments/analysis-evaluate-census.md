# What the agents used `smalltalk_evaluate` for

A cross-experiment analysis, not an experiment: every `smalltalk_evaluate` call the agents made in
the Cuis runs of experiments 002 to 018, categorized, and the pieces of code they wrote again and
again read as candidates for methods in the image: scripts the agent would call through evaluate
instead of writing them each time. Such methods cost nothing until they are used, unlike tools,
whose schema rides on every request.

Reproduce with `scripts/evaluate-census.py` (add `--samples 2` for examples of every idiom,
`--json file` for the classified calls). Made on 2026-09-21.

## What was counted

1,415 evaluates in 302 runs: every analyzed Cuis run except the pipeline checks (000), the
interactive session (001) and the Codex smoke (019), and not the Java, Python or script cells.
Only the agent's calls count, not the harness's; evaluates sent as batch steps count too. The
agents wrote 2,101,604 characters of code into them and got 1,969,515 characters back. Characters
written are output tokens; characters answered are input the next request carries and every later
request re-reads. About four characters make a token.

Each evaluate gets one category, the first of these that its code matches, and any number of
idioms. The matching is by regular expressions over the code: good for counting, not for judging
a single call, and the order decides the borderline cases (a probe that also defines a method
counts as defineCode).

## What evaluate was used for

| Category | Evaluates | Runs | Code written | Share of code | Answers | Median code | Failed |
|---|---|---|---|---|---|---|---|
| defineCode: classes, methods, comments, categories | 548 | 140 | 1,786,486 | 85% | 276,463 | 2,659 | 22 |
| dumpSources: definitions and method sources, many at once | 156 | 81 | 76,538 | 4% | 1,416,122 | 461 | 18 |
| navigate: categories, classes, selectors, existence checks | 275 | 137 | 81,373 | 4% | 83,115 | 245 | 19 |
| probeLibrary: trying units and dates (Aconcagua, Chalten) | 186 | 64 | 78,142 | 4% | 12,925 | 399 | 75 |
| searchCode: senders, implementors, grep over sources | 138 | 78 | 47,828 | 2% | 82,505 | 304 | 20 |
| probeModel: trying the exercise's own classes | 70 | 52 | 19,542 | 1% | 10,410 | 154 | 11 |
| environment: files, globals, image state | 28 | 18 | 4,886 | 0% | 86,360 | 116 | 0 |
| runTests: running tests by hand | 14 | 14 | 6,809 | 0% | 1,615 | 294 | 7 |

Three things stand out. Writing code is 85% of what the agents typed into evaluate. Reading code in
bulk is 72% of what evaluate answered. And trying the date and unit libraries failed four times in
ten.

The recurring shapes inside the code:

| Idiom | Evaluates | Runs | Experiments | What the agent wrote |
|---|---|---|---|---|
| unitsAndDates | 367 | 91 | 15 | expressions with Aconcagua units or Chalten dates, outside definitions |
| okSentinel | 227 | 76 | 13 | a final `'ok'` so the answer stays short |
| braceProbe | 225 | 131 | 16 | `{ probe. probe. probe }` to try several things in one request |
| writeStreamReport | 216 | 95 | 13 | a `WriteStream` filled by hand and answered with `contents`, to format a report |
| compileClassified | 211 | 75 | 13 | `compile: '...' classified: '...'`, once per method |
| defineClassFull | 209 | 94 | 13 | the five-keyword class definition |
| recategorize | 152 | 94 | 13 | moving classes or methods to another category |
| sortedSelectors | 136 | 81 | 13 | `selectors asSortedCollection do:` |
| compileBlock | 128 | 55 | 11 | its own block `[:cls :cat :src \| cls compile: src classified: cat]` |
| dumpCategory | 121 | 74 | 12 | every class of a category: definition, then every method's source |
| allCallsOn | 102 | 62 | 13 | senders and implementors by hand |
| onErrorDo | 70 | 51 | 12 | `on: Error do:` around the expression, to see the error |
| categoryMatching | 66 | 46 | 13 | finding a category by a fragment of its name |
| canUnderstandChecks | 55 | 41 | 11 | several `canUnderstand:` or `respondsTo:`: does this message exist? |
| includesKeyChecks | 54 | 50 | 12 | several `Smalltalk includesKey:`: does this class exist? |
| removeEmptyCategories | 51 | 38 | 9 | `organization removeEmptyCategories` after moving methods |
| classComment | 46 | 32 | 8 | setting a class comment |
| sourceSearch | 40 | 33 | 10 | a grep over method sources |
| runOneTestWithTrace | 8 | 6 | 2 | one test method run by hand, answering the error with its context |

The same script is rarely written twice character for character: only six normalized shapes appear
in three or more runs. The agents rewrite the same intent in their own words every time, which is
exactly what a method in the image would save them.

## Lever 1, reading: the source dumps

153 evaluates, sent on their own, answered a bulk dump of definitions and sources: median 7,577
characters, about 1,900 tokens, and up to 35,867. They come early, a median of 8 requests before the
end of the run, so every later request re-reads them. Estimated from answer size and the requests
that followed, they account for about 3.9 million re-read tokens: in the runs that dump, a median
20 percent of the run's whole input side, 24 percent at the 75th percentile.

An outline, the class definitions and the method headers without the bodies, would be a median 18
percent of the dump it replaces (9 to 26 percent between the quartiles), measured on 93 of the
dumps. How much of the rest the agent would then ask for is the open question: in a refactoring
exercise it may need most of it.

## Lever 2, guessing: messages that do not exist

164 evaluates failed, in 94 of the 302 runs, and 130 of those were `MessageNotUnderstood`. Each is
a request spent learning that a guess was wrong. The messages asked for most:

| Message | Times | What the agent assumed |
|---|---|---|
| `Array>>gather:` | 11 | Pharo |
| `FixedGregorianDate>>dayOfWeek` | 11 | a common date API |
| `GregorianDay>>isWeekend` | 11 | a common date API |
| `FixedGregorianDate>>atHour:` | 10 | a common date API |
| `Metaclass>>instanceVariableNames` | 8 | Pharo |
| `ThirtyDaysGregorianMonth>>twentyFifth` | 8 | camel case; Chalten spells it `twentyfifth` |
| `String>>includesSubstring:`, `UnicodeString>>includesSubstring:`, `Symbol>>includesSubstring:` | 12 | Pharo; Cuis spells it `includesSubString:` |
| `ClassOrganizer>>renameCategory:toBe:` | 5 | Pharo |
| `GregorianDateTime>>dayOfWeek` | 5 | a common date API |
| `GregorianDateTime class>>yearNumber:monthNumber:dayNumber:hourNumber:minuteNumber:secondNumber:` | 5 | a guessed constructor |
| `FixedGregorianDate>>isWeekend`, `GregorianDay>>isWeekendDay` | 7 | a common date API |
| `ThirtyDaysGregorianMonth>>dayNumber:` | 3 | a guessed constructor |
| `GregorianDateTime>>+` | 2 | adding a duration with `+` |

Two families. **The date and unit libraries**: 75 of the 186 probes failed, and 128 of the probes
were on one exercise, the BAJE card readers, whose fares depend on the day and the hour. The agent
guesses the Chalten API from other date libraries and learns it by elimination, a request at a time.
**Pharo**: `includesSubstring:`, `gather:`, `renameCategory:toBe:`, `instanceVariableNames` are Pharo
messages. The agent's picture of Smalltalk is Pharo, the dialect most of what it read was written
in, and it writes Pharo in Cuis.

## Lever 3, writing: the plumbing around the code

Most of what the agents typed is the program itself: 7,103 method sources in the defineCode calls.
What surrounds them is small in comparison:

| Boilerplate | Occurrences | Characters each, about | Characters in all |
|---|---|---|---|
| the five-keyword class definition | 783 | 66 beyond a short form | 51,678 |
| `compile: '...' classified:` per method | 2,191 | 25 | 54,775 |
| `value: Class value: 'category' value:` per method, the agent's own compile block | 2,757 | 30 | 82,710 |

About 190,000 characters over 302 runs: some 150 output tokens per run, around one percent of a
run's output. Quoting is not the cost it seemed in the script cells: only 2,046 doubled quotes in
all the method sources. A shorthand for definitions would save little in tokens; its value would be
in the errors it avoids (the eight `Metaclass>>instanceVariableNames` failures are class-side
variables defined the Pharo way).

## What could live in the image

Methods the agent calls through evaluate, grouped by the lever they pull. Names are placeholders.

| Method | Replaces | Evidence | Expected effect |
|---|---|---|---|
| `Helper outlineOf: 'Category'`: definitions and selectors by method category, no bodies | the source dumps | 153 dumps, 20% of input in the runs that dump; an outline is 18% of a dump | less input on every later request, if the agent then reads selectively |
| `Helper sourcesOf: Room selectors: #(receive: reserve)` | reading the whole package to see a few methods | same | sources on demand after the outline |
| `Helper protocolOf: GregorianDay matching: 'week'`: the selectors that exist, inherited ones included, and who implements them | guessing names and failing | 130 `MessageNotUnderstood` answers | one request to find the real name instead of several to rule out wrong ones |
| `Helper howTo: #dates` and `Helper howTo: #units`: a short, curated text of runnable Chalten and Aconcagua idioms | trial and error on the libraries | 75 failed probes of 186, 128 probes on one exercise | fewer probes and failures where dates and money matter |
| `Helper categoriesMatching: 'rawler'` | finding the package | 66 evaluates in 46 runs | a shorter call, a compact answer |
| `Helper sendersOf: #rooms in: 'Category'`, `implementorsOf:in:` | senders and implementors by hand | 102 evaluates in 62 runs | answers scoped to the package: `Class>>selector` lines, not the whole image |
| `Helper sourcesIncluding: 'ifTrue:' in: 'Category'`, answering `Class>>selector` and the matching lines | grep over sources | 40 evaluates in 33 runs | a compact answer |
| `Object subclass: #Room ivars: 'guest' in: 'Category'` | the five-keyword definition | 783 occurrences | little in tokens; fewer class-side mistakes |
| `Room compileIn: 'accessing' all: { '...'. '...' }` | the agent's compile block, `compile:classified:` per method | 4,948 occurrences, 128 agents wrote their own block | little in tokens; one standard form |
| `Helper tidy: 'Category'`: remove empty method categories on both sides | `removeEmptyCategories` by hand | 51 evaluates | small |
| `Helper run: RoomTest selector: #test13`: pass or fail, the error and the first frames of its stack | a test run by hand wrapped in `on: Error do:` | 8 evaluates, 70 `on: Error do:` wrappers | the error's context without a debugger |
| `String>>includesSubstring:`, `Collection>>gather:` as extensions | Pharo messages that fail in Cuis | 23 failures | the errors disappear with no guidance at all; but the image stops being stock Cuis |

How the agent would learn they exist matters as much as what they do. A tool announces itself in the
schema, and pays for it on every request. A method in the image needs one short paragraph in the
guidance, or a single entry point (`Helper help`) that the guidance names and that answers the list
when the agent asks for it once. Either costs a few hundred tokens a run instead of a schema per
request.

## How to test it

A cell of scenario 1 with the helper package loaded and a five-line paragraph in `CLAUDE.md`,
against scenario 1 without them, same day, five runs per cell. Ada's Coffee and Formula One for the
reading lever (refactoring, the agents dump early), BAJE for the guessing lever (dates and money).
Measured: input-side and output tokens, requests, failed evaluates, `MessageNotUnderstood` answers,
characters of the reading answers, and whether the helpers were called at all. The last one is not a
formality: in 014 the LiveTyping tools were offered, described and recommended, and called three
times in thirty runs.

## Caveats

- The categories come from regular expressions, and a call counts once, in the first category it
  matches; the counts are right in aggregate and can be wrong for a single call.
- The re-read estimate multiplies the answer's characters, divided by four, by the requests that
  followed it; the tokenizer and the cache are not modelled.
- The outline ratio is measured on the dumps that were long enough and whose format could be parsed,
  93 of 153.
- The runs span experiments with different configurations and days; the counts describe what the
  agents did, not a controlled comparison.
