#!/usr/bin/env python3
"""Build the study deck: environment, scenarios, how Claude Code is run, and every hypothesis
with its token results. Plain white layout, python-pptx."""
import sys
from pptx import Presentation
from pptx.util import Inches, Pt, Emu
from pptx.dml.color import RGBColor
from pptx.enum.text import PP_ALIGN, MSO_ANCHOR
from pptx.enum.shapes import MSO_SHAPE

OUT = sys.argv[1]

prs = Presentation()
prs.slide_width = Inches(13.333)
prs.slide_height = Inches(7.5)
BLANK = prs.slide_layouts[6]

INK = RGBColor(0x20, 0x20, 0x20)
GREY = RGBColor(0x66, 0x66, 0x66)
LINE = RGBColor(0x1F, 0x4E, 0x79)
HEAD_BG = RGBColor(0xF2, 0xF2, 0xF2)
FONT = "Calibri"
MARGIN = Inches(0.6)
CONTENT_W = prs.slide_width - 2 * MARGIN

slide_number = [0]


def _text(frame, text, size, bold=False, color=INK, align=PP_ALIGN.LEFT, mono=False):
    p = frame.paragraphs[0] if frame.paragraphs and frame.paragraphs[0].text == "" else frame.add_paragraph()
    p.alignment = align
    r = p.add_run()
    r.text = text
    r.font.size = Pt(size)
    r.font.bold = bold
    r.font.name = "Menlo" if mono else FONT
    r.font.color.rgb = color
    return p


def new_slide(title, subtitle=None):
    slide = prs.slides.add_slide(BLANK)
    slide_number[0] += 1
    tb = slide.shapes.add_textbox(MARGIN, Inches(0.35), CONTENT_W, Inches(0.7))
    tf = tb.text_frame
    tf.word_wrap = True
    _text(tf, title, 28, bold=True)
    line = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, MARGIN, Inches(1.05), CONTENT_W, Emu(19050))
    line.fill.solid()
    line.fill.fore_color.rgb = LINE
    line.line.fill.background()
    if subtitle:
        sb = slide.shapes.add_textbox(MARGIN, Inches(1.12), CONTENT_W, Inches(0.5))
        sb.text_frame.word_wrap = True
        _text(sb.text_frame, subtitle, 14, color=GREY)
    nb = slide.shapes.add_textbox(prs.slide_width - Inches(1.2), prs.slide_height - Inches(0.45), Inches(0.8), Inches(0.3))
    _text(nb.text_frame, str(slide_number[0]), 10, color=GREY, align=PP_ALIGN.RIGHT)
    return slide


def bullets(slide, items, top=1.65, left=None, width=None, size=16, height=None):
    left = MARGIN if left is None else left
    width = CONTENT_W if width is None else width
    height = Inches(7.5 - top - 0.6) if height is None else height
    tb = slide.shapes.add_textbox(left, Inches(top), width, height)
    tf = tb.text_frame
    tf.word_wrap = True
    first = True
    for item in items:
        level = 0
        text = item
        if isinstance(item, tuple):
            level, text = item
        p = tf.paragraphs[0] if first else tf.add_paragraph()
        first = False
        p.level = level
        bullet = "•  " if level == 0 else "–  "
        r = p.add_run()
        r.text = bullet + text
        r.font.size = Pt(size - 2 * level)
        r.font.name = FONT
        r.font.color.rgb = INK
        p.space_after = Pt(6)
    return tb


def para(slide, text, top, size=14, left=None, width=None, color=INK, mono=False, height=None):
    left = MARGIN if left is None else left
    width = CONTENT_W if width is None else width
    height = Inches(0.6) if height is None else height
    tb = slide.shapes.add_textbox(left, Inches(top), width, height)
    tf = tb.text_frame
    tf.word_wrap = True
    for i, line in enumerate(text.split("\n")):
        p = tf.paragraphs[0] if i == 0 else tf.add_paragraph()
        r = p.add_run()
        r.text = line
        r.font.size = Pt(size)
        r.font.name = "Menlo" if mono else FONT
        r.font.color.rgb = color
    return tb


def table(slide, rows, top=1.65, size=11, col_widths=None, left=None, width=None, row_h=0.32, bold_first_col=False):
    left = MARGIN if left is None else left
    width = CONTENT_W if width is None else width
    n_rows, n_cols = len(rows), len(rows[0])
    shape = slide.shapes.add_table(n_rows, n_cols, left, Inches(top), width, Inches(row_h * n_rows))
    tbl = shape.table
    # plain look: no banding style
    tblPr = shape._element.graphic.graphicData.tbl.tblPr
    tblPr.set("bandRow", "0")
    tblPr.set("firstRow", "0")
    if col_widths:
        total = sum(col_widths)
        for i, w in enumerate(col_widths):
            tbl.columns[i].width = int(width * w / total)
    for r, row in enumerate(rows):
        for c, value in enumerate(row):
            cell = tbl.cell(r, c)
            cell.margin_left = cell.margin_right = Inches(0.05)
            cell.margin_top = cell.margin_bottom = Inches(0.02)
            cell.vertical_anchor = MSO_ANCHOR.MIDDLE
            tf = cell.text_frame
            tf.word_wrap = True
            p = tf.paragraphs[0]
            run = p.add_run()
            run.text = str(value)
            run.font.size = Pt(size)
            run.font.name = FONT
            run.font.color.rgb = INK
            run.font.bold = (r == 0) or (bold_first_col and c == 0)
            if c > 0 and r > 0 and _numeric(value):
                p.alignment = PP_ALIGN.RIGHT
            cell.fill.solid()
            cell.fill.fore_color.rgb = HEAD_BG if r == 0 else RGBColor(0xFF, 0xFF, 0xFF)
    return shape


def _numeric(v):
    s = str(v).replace(",", "").replace("k", "").replace("%", "").replace("+", "").replace("-", "").replace("/", "").replace(".", "").replace(" ", "")
    return s.isdigit() and str(v) not in ("-",)


def notes(slide, text):
    slide.notes_slide.notes_text_frame.text = text


# ---------------------------------------------------------------- title
slide = prs.slides.add_slide(BLANK)
slide_number[0] += 1
tb = slide.shapes.add_textbox(MARGIN, Inches(2.3), CONTENT_W, Inches(1.5))
tb.text_frame.word_wrap = True
_text(tb.text_frame, "Claude Code in a live Cuis Smalltalk image", 40, bold=True)
_text(tb.text_frame, "Hypotheses, experiments and what the tokens say", 24, color=GREY)
line = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, MARGIN, Inches(4.0), Inches(3), Emu(28575))
line.fill.solid(); line.fill.fore_color.rgb = LINE; line.line.fill.background()
para(slide, "Hernán Wilkinson\nExperiments 002 to 009, 10 to 16 September 2026\nClaude Code 2.1.268 driving the Cuis MCP server", 4.2, size=16, color=GREY, height=Inches(1.2))

# ---------------------------------------------------------------- agenda
s = new_slide("Agenda")
bullets(s, [
    "The question and the four layers of the setup",
    "Environment: images, scenarios, configurations, techniques, exercises",
    "How a run works and how Claude Code is invoked (every command-line parameter and why)",
    "What is measured: tokens, requests, calls, correctness, design, process",
    "Two validity lessons: memory contamination and the day effect",
    "Nine hypotheses and their results, in tokens",
    "What the study says so far and what comes next",
], size=18)

# ---------------------------------------------------------------- question
s = new_slide("The question", "What shapes what a coding agent produces in a live Smalltalk image, and what it costs?")
table(s, [
    ["Layer", "What it is here", "How it is varied"],
    ["Agent harness", "Claude Code (headless, print mode), one model id per experiment", "Model and effort fixed per experiment (Opus 5, high, in every matrix)"],
    ["Agent-computer interface", "The tool set the Cuis MCP server exposes from the image", "Scenarios: which tool groups and decorators survive in the image"],
    ["Guidance", "The cell's CLAUDE.md (and skills, when a configuration brings them)", "Configurations: empty, evaluate last, tools first, LiveTyping, heuristics, batch first"],
    ["Technique", "What the task prompt prescribes", "free, TDD, test-after"],
], top=1.7, size=13, col_widths=[2, 4.5, 5], row_h=0.6)
bullets(s, [
    "Task kind is a blocking factor: greenfield, feature on existing code, refactoring of smelly code. Comparisons are made within an exercise.",
    "Each hypothesis becomes a matrix: cells = scenario : configuration [: technique], × exercises, × repetitions.",
    "The unit of measurement is one run: one Claude Code session on one exercise in one cell.",
], top=4.9, size=15)

# ---------------------------------------------------------------- environment: pieces
s = new_slide("Environment: the pieces", "Everything lives under one project directory; the Cuis sources and the MCP server are read-only inputs")
table(s, [
    ["Piece", "Where", "Role"],
    ["Cuis MCP server", "Cuis-MCPServer packages (commit 9e990b0), loaded into every scenario image", "HTTP MCP server inside the image: tool groups (MCPToolGroup subclasses), decorators, call log"],
    ["Base images", "Cuis 7.9 on the standard VM (updated to 8185); CuisUniversity 7.9 on the LiveTyping VM", "Two bases: plain Cuis for scenarios 1 to 4, University (LiveTyping) for 5 to 7 and the controls"],
    ["Scenario images", "scenarios/<name>/MCP-<name>.image + manifest.json", "One image per tool set, built once, copied per run; features, tool groups, decorators and hashes recorded"],
    ["Exercises", "exercises/<name>/{spec.md, exercise.json, starting code}", "91 exam and course exercises: statement, package name, starting code, given tests, kind"],
    ["Configurations", "scripts/configs/<n>/CLAUDE.md [+ skills.txt]", "Guidance text concatenated into the cell's CLAUDE.md"],
    ["Techniques", "scripts/techniques/{free,tdd,test-after}.md", "Paragraph appended to the prompt"],
    ["Analysis image", "scenarios/analysis", "University base + every tool + TestLint + SmalltalkMentor; each run's package is filed in and measured there"],
    ["Experiments", "experiments/NNN-Description/{README, cells/, table.md, results.json}", "One directory per hypothesis; one subdirectory per cell, per exercise, per run"],
], top=1.7, size=11.5, col_widths=[1.8, 4.2, 5.5], row_h=0.5)

# ---------------------------------------------------------------- pipeline
s = new_slide("Environment: the pipeline", "Five scripts, each writing what the next one reads")
table(s, [
    ["Step", "Script", "What it does"],
    ["1", "1-createScenarioImage.sh <scenario>", "Copies the base image, loads the features, removes the tool groups and decorators the scenario must not offer, installs the units as globals, drops the batch tool in the evaluate-only scenarios, saves and writes manifest.json"],
    ["2", "2-runCell.sh --experiment E --scenario S --config C --technique T --exercise X", "One run: fresh working directory, copy of the scenario image, MCP server on a random port with a per-run bearer token, starting code filed in, warm-up, Claude Code session, collection (package file-out, saved image, call log, transcript, manifest)"],
    ["2b / 2d", "2-runJavaCell.sh / 2-runScriptCell.sh", "The same run without the MCP server: Java (Gradle + JUnit) or Cuis scripts through the VM's -s option, with Claude Code's file and shell tools"],
    ["3", "3-analyzeRun.sh <run>", "Files the produced package into a fresh analysis image: acceptance and own tests, coverage, test smells, mentor findings, AST metrics, diff against the starting code, process summary from the call log; writes analysis.json"],
    ["5", "5-runMatrix.sh --experiment E --hypothesis ... --cells ... --exercises ... --repetitions N", "Plans the cells × exercises × repetitions, runs them (two in parallel, interleaved), analyzes each, writes results.json and table.md (matrix-table.py)"],
], top=1.7, size=11.5, col_widths=[0.7, 4.0, 7.3], row_h=0.75)

# ---------------------------------------------------------------- scenarios
s = new_slide("Scenarios: which tools the image offers", "A scenario is what is left in the image after loading its packages and removing the classes it must not serve")
table(s, [
    ["Scenario", "Base", "Tool groups served", "Batch", "Schema per request"],
    ["1-Evaluate+TestRunning", "Cuis", "Image tools (define class, define methods, evaluate, delete, save) + test running", "no", "≈3 KB"],
    ["2-ModelStructure+Package", "Cuis", "1 + model structure (class/method sources, hierarchy, senders, implementors, references) + package tools", "yes", "≈20 KB"],
    ["3-Search", "Cuis", "2 + search (selectors, source) + method finder (messages by example)", "yes", ""],
    ["4-Refactoring", "Cuis", "3 + refactoring tools (rename, extract, inline, move, push up/down, insert superclass, …)", "yes", "≈54–69 KB"],
    ["5-LiveTyping", "University", "4 + LiveTyping tools and type decorators (types of variables, methods; actual senders/implementors)", "yes", "≈62 KB"],
    ["6-LiveTypingRefactoring", "University", "5 + actual-scope refactoring decorators", "yes", "≈68 KB"],
    ["7-Debug", "University", "5 + debugger tools (not used in an experiment yet)", "yes", ""],
    ["1-…-University, 4-…-University", "University", "Same as 1 and 4 on the University base, LiveTyping group and decorators removed: controls for the LiveTyping cells", "", ""],
    ["java-gradle", "none", "No MCP server: Claude Code's Read, Edit, Write, Bash, Glob, Grep on a Gradle + JUnit 5 project", "", ""],
    ["cuis-script", "University", "No MCP server: the same file and shell tools, scripts run in the image through the VM's -s option", "", ""],
], top=1.7, size=11, col_widths=[2.3, 1.0, 6.7, 0.7, 1.3], row_h=0.45)
notes(s, "Schema sizes are the JSON tool descriptions Claude Code sends with every request; measured in experiments 004, 005 and 008.")

# ---------------------------------------------------------------- configurations
s = new_slide("Configurations: the guidance in CLAUDE.md", "Concatenated in order into the cell's CLAUDE.md; '2+8' means both texts")
table(s, [
    ["Configuration", "Says"],
    ["1-Empty", "Nothing (no CLAUDE.md content)"],
    ["2-EvaluateAsLastResource", "Use smalltalk_evaluate only when no other tool can do the task"],
    ["3-SearchBeforeImplement", "Before implementing on base classes, search selectors, source and messages by example; reuse what exists"],
    ["4-Refactoring", "When changing existing code, the refactoring tools take precedence over defining or deleting by hand"],
    ["5-LiveTyping", "Use the type information LiveTyping provides as much as possible; prefer actual senders and implementors"],
    ["6-LiveTypingRefactoring", "When a refactoring offers the actual scope, use it over any other scope"],
    ["7-DesignHeuristics", "Load and follow the smalltalk-design-heuristics skill (skills copied into the cell, referenced files inlined)"],
    ["8-DesignHeuristicsInline", "The full SmalltalkMentor heuristics file (≈8.5 KB) pasted into CLAUDE.md, always in context"],
    ["9-BatchFirst", "Use smalltalk_batch over every other way of working: one batch per step of work; a tool on its own only when the next step depends on its answer"],
], top=1.7, size=12, col_widths=[2.6, 9.4], row_h=0.42)
para(s, "Techniques (appended to the prompt): free = the statement only; tdd = one failing test at a time, run it, minimum code, run all, refactor; test-after = implement first, then write and run the tests.", 6.3, size=13, color=GREY, height=Inches(0.8))

# ---------------------------------------------------------------- exercises
s = new_slide("Exercises used in the experiments", "Exam statements rewritten as specs, stripped of any reference to TDD, heuristics, grading or the original PDF")
table(s, [
    ["Exercise", "Title", "Kind", "Starting code", "Given tests", "Used in"],
    ["2019-2c-parcial1", "Ada's Coffee Shop Rewards", "refactoring", "13 classes, 48 methods", "14", "002, 003, 008, 001"],
    ["2022-1c-parcial1", "Formula One simulator", "refactoring", "9 classes, 85 methods", "25", "002, 007"],
    ["2025-2c-parcial2", "BAJE card readers", "greenfield", "1 empty class", "none (own tests)", "003, 008"],
    ["2023-2c-parcial2", "MineField", "greenfield", "none", "none (own tests)", "004"],
    ["2025-2c-recuperatorio", "Aterrizar.com flight search", "greenfield over a small class", "1 class, 7 methods", "5", "004"],
    ["2022-1c-recuperatorio-parcial1", "CustomerImporter", "refactoring", "16 classes, 160 methods", "29", "005, 006, 009"],
    ["2019-2c-parcial2-masked", "Seabed survey crawler", "feature on a hierarchy", "13 classes, 68 methods", "16", "005, 006, 009"],
    ["2024-1c-parcial1", "Sims Hotels", "refactoring", "9 classes, 110 methods", "39", "005, 006, 009"],
    ["2021-1c-parcial1 (+ cryptic twin)", "RobotWars", "refactoring", "6 classes, 49 methods", "18", "007"],
    ["2020-2c-parcial1 (+ cryptic twin)", "Adventure backpack and door", "refactoring", "16 classes, 102 methods", "27", "007"],
], top=1.7, size=11.5, col_widths=[2.6, 2.6, 2.0, 2.0, 1.3, 1.5], row_h=0.42)
para(s, "Acceptance = the given tests, run after the session on the package the agent left; greenfield exercises without given tests are gated by the agent's own tests. The Java translations of the three 005 exercises carry the same classes, methods, tests and smells.", 6.55, size=11, color=GREY, height=Inches(0.8))

# ---------------------------------------------------------------- one run
s = new_slide("How one run works", "2-runCell.sh: everything a session needs is built fresh, and everything it did is collected")
bullets(s, [
    "Working directory under /private/tmp/claude-cells/<run-id>: CLAUDE.md (the configuration), .claude/skills (if any), .mcp.json. Outside $HOME on purpose (see contamination).",
    "Image: a copy of the scenario image, started headless with the MCP server on a free port and a random bearer token written only to that run's .mcp.json.",
    "Starting code: the exercise's package is filed in through the server; given test classes are part of it.",
    "Warm-up: the given tests are run once before the session, so LiveTyping has the types of the given code in every cell (recorded in warm-up.txt).",
    "Prompt = spec.md + technique paragraph + one closing paragraph: work in the running image through the Cuis MCP tools, there are no files to edit; classes in category <Package>, tests in <Package>-Tests.",
    "Session: claude -p … (next slide), stdout to claude-stream.jsonl, a watchdog kills it after the timeout, --max-budget-usd caps the spend.",
    "Collection: the package filed out, loose changes swept from the change sets, the image saved, the server's call log (mcp-calls.jsonl), Claude Code's transcript and stream, manifest.json with versions, hashes, status, elapsed time and token usage.",
    "Analysis (3-analyzeRun.sh) then loads the package into a fresh analysis image and writes analysis.json.",
], size=14)

# ---------------------------------------------------------------- claude command line
s = new_slide("How Claude Code is invoked", "The headless call in 2-runCell.sh, one parameter per line")
para(s, 'claude -p "$(cat prompt.md)" --model $MODEL --effort $EFFORT \\\n  --output-format stream-json --verbose --permission-mode bypassPermissions \\\n  --setting-sources project --tools "$BUILTIN_TOOLS" --disable-slash-commands \\\n  --mcp-config .mcp.json --strict-mcp-config --max-budget-usd $BUDGET < /dev/null', 1.5, size=11, mono=True, height=Inches(0.95))
table(s, [
    ["Parameter", "Value", "Why"],
    ["-p <prompt>", "contents of prompt.md", "Headless print mode: one task, no terminal, exits when done; the prompt is kept with the run"],
    ["--model", "claude-opus-5 in every matrix", "The model is held constant inside an experiment; one factor at a time"],
    ["--effort", "high", "Reasoning effort held constant; thinking tokens are still counted"],
    ["--output-format stream-json --verbose", "", "Every message and usage record streamed to claude-stream.jsonl: tokens per request, requests, tool calls, elapsed"],
    ["--permission-mode bypassPermissions", "", "Nobody is there to approve tool calls"],
    ["--setting-sources project", "", "Only the cell's CLAUDE.md and .claude are read; user settings, memory and skills are excluded"],
    ["--tools", '"" (or "Skill" when the configuration brings skills)', "No Read, Edit, Write or Bash: the image is the only workplace. Java and script cells pass Read,Edit,Write,Bash,Glob,Grep"],
    ["--disable-slash-commands", "", "No user commands or skills leak in; omitted only when a configuration installs skills"],
    ["--mcp-config .mcp.json --strict-mcp-config", "", "Only this run's server (port and token), nothing from the user's MCP configuration; Java and script cells pass an empty list"],
    ["--max-budget-usd", "15 (20 by default)", "Stops a runaway session; runs that hit it are excluded"],
    ["< /dev/null", "", "No stdin: a session that asks a question ends instead of waiting"],
    ["watchdog (not a flag)", "1800 or 2400 s", "kill -TERM after the timeout; the run is recorded as timed out"],
], top=2.6, size=10, col_widths=[3.0, 2.4, 6.6], row_h=0.3)

s = new_slide("Two more invocation notes")
bullets(s, [
    "Interactive runs (experiment 001) drop -p and the budget flag. Interactive Claude Code loads ~/.claude/CLAUDE.md and ~/.claude/skills whatever --setting-sources says, so the runner moves them aside for the length of the session and puts them back when it ends.",
    "Configurations with skills (7-DesignHeuristics): the skill directories are copied into the cell's .claude/skills, every absolute .md path a SKILL.md names is inlined at its end (there is no Read tool in the cell), and --tools becomes \"Skill\".",
    "Java cell: same flags, --tools Read,Edit,Write,Bash,Glob,Grep, .mcp.json = { \"mcpServers\": {} }, Gradle 9.7 on the PATH, warm-up = gradle test; the agent's tests are read from the per-class JUnit XML.",
    "Script cell: same as Java plus ./cuis.sh <file.st>, which runs the VM headless with -s cuis-script-wrapper.st: the script is evaluated as the evaluate tool would, its value printed, the image saved on success; on UnhandledError or a syntax error the error is printed, status 1, image untouched. Only UnhandledError is handled, because SUnit records test errors by catching it.",
    "Token accounting: every assistant message in the stream carries usage (input, cache creation, cache read, output); thinking is counted from the thinking blocks; one usage record = one API request.",
], size=14)

# ---------------------------------------------------------------- measures
s = new_slide("What is measured per run", "analysis.json: cost from the stream, correctness and design from the analysis image, process from the server's call log")
table(s, [
    ["Group", "Measures", "Source"],
    ["Tokens", "input-side (uncached input + cache write + cache read), uncached input, cache read, output, thinking, input per request", "claude-stream.jsonl usage records"],
    ["Volume", "API requests, tool calls, operations (batch steps counted), tool errors, seconds", "stream + mcp-calls.jsonl"],
    ["Correctness", "acceptance = given tests on the package as left; the agent's own tests; methods left outside the package", "analysis image, TestRunner"],
    ["Design", "ifs in the model (AST), mentor findings (SmalltalkMentor heuristics) and findings per method, classes and methods, coverage %, test smells (TestLint)", "analysis image"],
    ["Process", "exploration calls before the first change, define calls and methods per define, refactoring tool calls and failed ones, hand-made refactorings, LiveTyping calls, actual-scope refactorings, MessageNotUnderstood answers, failed test runs, rename calls, cryptic names left / original names recovered", "mcp-calls.jsonl, diff against the starting code"],
], top=1.7, size=12, col_widths=[1.5, 7.5, 3.0], row_h=0.7)
bullets(s, [
    "Matrices report the median over the runs of a cell that passed the acceptance tests; every run is also listed.",
    "This deck shows tokens, never dollars: input-side and output tokens carry the story, with requests and calls as the mechanism.",
], top=6.15, size=13)

# ---------------------------------------------------------------- mechanism
s = new_slide("The mechanism behind every result", "Why calls, not verbosity, drive the input side")
bullets(s, [
    "Every tool call is one API request, and every request re-sends the whole conversation: system prompt, tool schemas, every earlier call and answer.",
    "So input-side tokens grow with requests × context length. Cache reads are 84 to 97 percent of the input side in every experiment; the uncached part is small and stable.",
    "Output tokens (code, batch bodies, compile: strings, thinking) are the part the agent writes; they move little between cells of the same exercise, except where the form of the code changes (scripts, JSON batch bodies).",
    "The tool schema rides on every request: ≈3 KB with evaluate and the test tools, ≈20 KB with the model-structure tools, 54 to 69 KB with the refactoring tools.",
    "A tool that does more per call (define several methods, read a whole class, a batch of steps) reduces requests; evaluate already does that, because one expression compiles many methods.",
    "Consequence for the hypotheses: a tool set only pays if it removes more requests than it adds context, or if it buys something tokens do not measure (safety, traceability).",
], size=15)

# ---------------------------------------------------------------- validity
s = new_slide("Two validity lessons", "Both found from the run artifacts, both changed the harness")
bullets(s, [
    "Memory contamination (experiment 002). Claude Code auto-updated from 2.1.212 to 2.1.267 on 2026-09-10. From 2.1.267 on, a session whose working directory is anywhere under $HOME gets ~/.claude/CLAUDE.md as project memory even with --setting-sources project. 12 of 12 runs of 002 saw the global instructions; 10 read the 8.5 KB heuristics file through evaluate. Fix: cells run under /private/tmp/claude-cells; every run's transcript is checked for injected memory.",
    "The day effect (experiments 006, 008, 009). Every cell of every experiment cost about twice on 2026-09-15 what it cost on 2026-09-16, with the same model, effort, prompts and images: Ada's Coffee evaluate-only 611 k input-side tokens against 87 to 125 k. Fix: every comparison carries same-day controls, and a conclusion drawn across days is marked.",
    "Also learned along the way: never edit a runner while a run is executing it (bash resumes at a shifted offset); an orphaned watchdog sleep holds the caller's pipe; agents classify base-class extensions under abbreviated package names, so loose changes are swept from the change sets; one run per cell is a point estimate, medians of four already move a conclusion (008).",
], size=14)

# ---------------------------------------------------------------- overview table
s = new_slide("The hypotheses at a glance")
table(s, [
    ["#", "Hypothesis", "Cells × exercises × runs", "Outcome"],
    ["002", "Fewer tokens with the model-structure tools than with evaluate alone", "2 × 2 × 3", "Rejected, but contaminated (global memory injected); rerun as 003"],
    ["003", "Same, on clean runs with the multi-item tools", "2 × 2 × 1", "Rejected: 1.7x and 3.9x input-side tokens"],
    ["004", "H1 refactoring tools save tokens under TDD + heuristics; H2 TDD gives a better design", "5 × 2 × 1", "Neither supported; TDD costs 3 to 5x test-after"],
    ["005", "Implementing and refactoring is cheaper with LiveTyping information", "4 × 3 × 1", "Rejected: +14% to +175% input-side; type tools called 0 to 5 times"],
    ["006", "The same task costs fewer tokens in Cuis than in Java", "2 × 3 × 1", "Not supported that day; same-day controls (009) give a draw"],
    ["007", "Cryptic names make refactoring more expensive and worse", "1 × 3 pairs × 1", "Equal on small code, 3.2x tokens on the largest: the agent renames everything first"],
    ["008", "With the batch tool the granular tools cost no more than evaluate", "3 × 2 × 4", "Mostly: +13% to +66% input-side against +70% to +287% without the batch; fewer calls, more output"],
    ["009", "Cuis through scripts (no MCP) costs what Java costs", "3 × 3 × 1, same day", "Not supported: scripts were the most expensive cell on every exercise"],
], top=1.6, size=12, col_widths=[0.6, 5.0, 2.2, 4.2], row_h=0.55)

# ================================================================ 002
s = new_slide("002 · Fewer tokens with the model-structure tools?", "Scenario 2 (model structure + package tools, evaluate last) against scenario 1 (evaluate + test tools, no guidance)")
bullets(s, [
    "Hypothesis: Claude Code uses fewer tokens when it has tools to manipulate the code than when it only has smalltalk_evaluate and the test runners.",
    "Design: Opus 5, high, free technique, 3 runs per cell, Ada's Coffee and Formula One (both refactoring with given tests). 2026-09-10, Claude Code 2.1.268.",
    "Validity: contaminated. Every run got ~/.claude/CLAUDE.md injected and 10 of 12 read the heuristics file; both cells worked under the heuristics, unevenly. Rerun as 003; kept for the mechanism it showed.",
], size=14, top=1.6, height=Inches(2.2))
table(s, [
    ["Exercise", "Cell", "Input-side", "Uncached", "Cache read", "Output", "Thinking", "Requests", "Calls", "Seconds"],
    ["Ada's Coffee", "1 evaluate", "357 k", "36 k", "320 k", "20 k", "11 k", "14", "17", "230"],
    ["Ada's Coffee", "2 model structure", "917 k", "45 k", "872 k", "26 k", "11 k", "27", "104", "304"],
    ["Formula One", "1 evaluate", "1,585 k", "102 k", "1,496 k", "67 k", "41 k", "31", "34", "727"],
    ["Formula One", "2 model structure", "3,200 k", "106 k", "3,094 k", "61 k", "31 k", "47", "207", "691"],
], top=3.9, size=12, col_widths=[1.6, 1.9, 1.2, 1.1, 1.2, 1.0, 1.0, 1.1, 0.9, 1.0], row_h=0.36)
para(s, "Medians of 3 runs; all 12 passed the given tests. Scenario 2 against 1: input-side +157% and +102%, output +31% and -8%, requests +93% and +52%, tool calls 6x. Scenario 2 defined one method per call (48 to 120 define calls per run); one evaluate compiled up to 21 methods. Design equal: same ifs (0 and 5), same coverage.", 5.9, size=12, color=GREY, height=Inches(1.0))

# ================================================================ 003
s = new_slide("003 · Same question, clean runs, multi-item tools", "Working directory outside $HOME; server tools that take several items per call (define_methods, class_source, …)")
bullets(s, [
    "Hypothesis: with the model-structure tools the agent uses fewer tokens than with evaluate and the test tools alone.",
    "Design: Opus 5, high, free, 1 run per cell, Ada's Coffee (refactoring, 14 given tests) and BAJE card readers (greenfield, own tests). 2026-09-11.",
], size=14, top=1.6, height=Inches(1.4))
table(s, [
    ["Exercise", "Cell", "Input-side", "Uncached", "Cache read", "Output", "Thinking", "Requests", "Input / request", "Calls", "Define calls / methods", "Seconds"],
    ["Ada's Coffee", "1 evaluate", "169 k", "27 k", "143 k", "15 k", "7 k", "10", "16.9 k", "11", "0 / 0", "163"],
    ["Ada's Coffee", "2 model structure", "287 k", "38 k", "249 k", "16 k", "7 k", "11", "26.1 k", "27", "2 / 48", "177"],
    ["BAJE", "1 evaluate", "538 k", "49 k", "489 k", "41 k", "20 k", "20", "26.9 k", "29", "0 / 0", "450"],
    ["BAJE", "2 model structure", "2,084 k", "80 k", "2,004 k", "53 k", "21 k", "44", "47.4 k", "83", "23 / 143", "615"],
], top=3.1, size=11.5, col_widths=[1.4, 1.7, 1.0, 0.9, 1.0, 0.8, 0.9, 0.9, 1.1, 0.7, 1.4, 0.9], row_h=0.36)
table(s, [
    ["Exercise", "2 vs 1: input-side", "Output", "Requests", "Calls", "Tests", "Ifs", "Mentor findings", "Coverage %"],
    ["Ada's Coffee", "+70%", "+7%", "+10%", "+145%", "14/14 both", "0 / 0", "20 / 21", "84 / 89"],
    ["BAJE", "+287%", "+28%", "+120%", "+186%", "own 80 / own 32", "8 / 8", "96 / 77", "97 / 97"],
], top=5.05, size=11.5, col_widths=[1.4, 1.6, 1.0, 1.0, 1.0, 1.6, 0.9, 1.4, 1.2], row_h=0.36)
para(s, "Rejected again. The multi-item tools worked as meant (48 methods in 2 define calls on Ada's Coffee; 27 calls against 104 in 002), and the gap shrank, but 23 define_class calls, 21 test runs and 29 methods redefined by hand on BAJE kept scenario 2 at 3.9x the input side. Output moved little; requests did the rest.", 6.25, size=12, color=GREY, height=Inches(0.9))

# ================================================================ 004
s = new_slide("004 · Refactoring tools under TDD, and TDD against the rest", "Heuristics inlined (configuration 8) in every cell; MineField and Aterrizar.com (both greenfield); 1 run per cell")
bullets(s, [
    "H1: with TDD and the heuristics, having the refactoring tools uses fewer tokens. Cells A = scenario 3 (no refactoring tools), B = scenario 4 with the tools available but not mentioned, C = scenario 4 told to refactor with the tools; all TDD.",
    "H2: with the tools and the heuristics, TDD produces a better design than test-after (D) or free (E).",
], size=14, top=1.6, height=Inches(1.3))
table(s, [
    ["Exercise", "Cell", "Input-side", "Uncached", "Output", "Thinking", "Requests", "Calls", "Test runs", "Refactoring calls / failed", "Hand-made", "Seconds"],
    ["MineField", "A  3, tdd", "9,430 k", "115 k", "69 k", "36 k", "158", "176", "73", "0 / 0", "14", "1023"],
    ["MineField", "B  4, tdd", "7,782 k", "138 k", "80 k", "44 k", "105", "174", "49", "0 / 0", "27", "1047"],
    ["MineField", "C  4+tools, tdd", "14,970 k", "150 k", "103 k", "61 k", "156", "237", "81", "36 / 3", "14", "1415"],
    ["MineField", "D  4+tools, test-after", "579 k", "67 k", "53 k", "33 k", "11", "29", "1", "0 / 0", "3", "571"],
    ["MineField", "E  4+tools, free", "780 k", "78 k", "62 k", "41 k", "13", "26", "1", "0 / 0", "3", "681"],
    ["Aterrizar", "A  3, tdd", "6,003 k", "118 k", "72 k", "41 k", "82", "123", "33", "0 / 0", "21", "2668"],
    ["Aterrizar", "B  4, tdd", "8,857 k", "123 k", "75 k", "44 k", "114", "165", "49", "7 / 0", "18", "2800"],
    ["Aterrizar", "C  4+tools, tdd", "6,826 k", "107 k", "69 k", "41 k", "87", "123", "32", "11 / 0", "8", "908"],
    ["Aterrizar", "D  4+tools, test-after", "875 k", "67 k", "45 k", "23 k", "17", "49", "2", "0 / 0", "0", "486"],
    ["Aterrizar", "E  4+tools, free", "958 k", "85 k", "61 k", "36 k", "17", "50", "4", "1 / 0", "1", "1049"],
], top=2.95, size=11, col_widths=[1.1, 2.0, 1.1, 0.9, 0.8, 0.9, 0.9, 0.7, 0.9, 1.5, 1.0, 0.8], row_h=0.33)
para(s, "Times of Aterrizar A and B include API retries (529, rate limits); tokens unaffected. One free run on Aterrizar was cut by an API outage and rerun.", 6.7, size=10.5, color=GREY, height=Inches(0.6))

s = new_slide("004 · What was produced, and the conclusions")
table(s, [
    ["Exercise", "Cell", "Given tests", "Own tests", "Classes / methods", "Ifs", "Mentor findings", "Per method", "Test smells", "Coverage %"],
    ["MineField", "A  3, tdd", "-", "39", "9 / 77", "9", "58", "0.75", "11", "99.6"],
    ["MineField", "B  4, tdd", "-", "43", "11 / 62", "8", "48", "0.77", "3", "99.1"],
    ["MineField", "C  4+tools, tdd", "-", "40", "10 / 64", "8", "43", "0.67", "15", "99.5"],
    ["MineField", "D  4+tools, test-after", "-", "54", "12 / 81", "11", "102", "1.26", "5", "97.4"],
    ["MineField", "E  4+tools, free", "-", "60", "14 / 80", "10", "69", "0.86", "0", "95.8"],
    ["Aterrizar", "A  3, tdd", "5/5", "14", "10 / 66", "0", "37", "0.56", "3", "98.1"],
    ["Aterrizar", "B  4, tdd", "5/5", "19", "9 / 59", "0", "39", "0.66", "3", "100.0"],
    ["Aterrizar", "C  4+tools, tdd", "5/5", "14", "9 / 63", "0", "41", "0.65", "5", "96.6"],
    ["Aterrizar", "D  4+tools, test-after", "5/5", "23", "11 / 69", "1", "41", "0.59", "2", "98.2"],
    ["Aterrizar", "E  4+tools, free", "5/5", "19", "11 / 64", "1", "41", "0.64", "10", "99.9"],
], top=1.5, size=11, col_widths=[1.1, 2.0, 1.0, 0.9, 1.4, 0.6, 1.2, 1.0, 1.0, 1.0], row_h=0.32)
bullets(s, [
    "H1 not supported. Told to use the tools (C), MineField took 1.6x the input side of A (14,970 k vs 9,430 k) and Aterrizar 1.1x. The tools were used well when asked (36 calls, 3 failures, an insert-superclass and push-up sequence) but each call is a request that re-reads the context, with the 54 KB schema on every one. With the tools merely available (B) the agent never called one on MineField and did 27 refactorings by hand.",
    "H2 not supported by these measures, and TDD costs 3 to 5x: 73 to 81 test runs against 1 or 2, because the technique text taken literally means one or two test-run calls per test. MineField TDD left slightly fewer ifs and findings per method but more test smells; Aterrizar's three cells are indistinguishable.",
], top=5.2, size=12.5)

# ================================================================ 005
s = new_slide("005 · Cheaper with LiveTyping information?", "Four cells on the University base; the given tests run once before every session, so only the serving of the types differs")
bullets(s, [
    "1u = evaluate + tests only (1-Evaluate+TestRunning-University, heuristics inlined); 5 = all tools + LiveTyping tools and decorators, told to use the types; 4u = all tools, no LiveTyping, tools over evaluate; 6 = LiveTyping + actual-scope refactorings, tools over evaluate. Exercises where the types are not visible in the source. Opus 5, high, free, 1 run per cell, 2026-09-14.",
], size=13, top=1.6, height=Inches(1.1))
table(s, [
    ["Exercise", "Cell", "Input-side", "Uncached", "Cache read", "Output", "Thinking", "Requests", "Calls", "LT calls", "Actual scope", "Refactoring calls", "Hand-made", "Seconds"],
    ["CustomerImporter", "1u", "1,275 k", "79 k", "1,196 k", "49 k", "35 k", "25", "26", "0", "0", "0", "0", "584"],
    ["CustomerImporter", "5", "3,485 k", "106 k", "3,379 k", "47 k", "33 k", "43", "56", "5", "0", "0", "5", "579"],
    ["CustomerImporter", "4u", "3,075 k", "116 k", "2,960 k", "52 k", "38 k", "37", "63", "0", "0", "2", "12", "629"],
    ["CustomerImporter", "6", "3,492 k", "111 k", "3,382 k", "48 k", "35 k", "42", "63", "0", "0", "1", "5", "659"],
    ["Seabed crawler", "1u", "2,768 k", "98 k", "2,670 k", "74 k", "49 k", "40", "47", "0", "0", "0", "0", "873"],
    ["Seabed crawler", "5", "7,623 k", "129 k", "7,494 k", "86 k", "50 k", "72", "101", "3", "0", "0", "13", "1103"],
    ["Seabed crawler", "4u", "2,645 k", "93 k", "2,551 k", "64 k", "39 k", "32", "51", "0", "0", "0", "10", "741"],
    ["Seabed crawler", "6", "4,639 k", "114 k", "4,525 k", "77 k", "50 k", "48", "71", "1", "0", "1", "13", "904"],
    ["Sims Hotels", "1u", "2,006 k", "74 k", "1,933 k", "41 k", "24 k", "37", "39", "0", "0", "0", "0", "488"],
    ["Sims Hotels", "5", "2,765 k", "83 k", "2,682 k", "40 k", "21 k", "36", "43", "0", "0", "0", "5", "502"],
    ["Sims Hotels", "4u", "3,636 k", "84 k", "3,553 k", "44 k", "25 k", "49", "53", "0", "0", "0", "10", "592"],
    ["Sims Hotels", "6", "4,369 k", "77 k", "4,293 k", "37 k", "18 k", "58", "58", "0", "0", "0", "14", "456"],
], top=2.75, size=10.5, col_widths=[1.6, 0.5, 1.0, 0.9, 1.0, 0.8, 0.8, 0.9, 0.6, 0.8, 0.9, 1.1, 0.9, 0.8], row_h=0.3)

s = new_slide("005 · LiveTyping against its control, and the conclusion")
table(s, [
    ["Exercise", "Comparison", "Input-side", "Output", "Calls", "Exploration before first change", "MNU answers", "Failed test runs", "Ifs", "Mentor findings"],
    ["CustomerImporter", "5 vs 1u", "+173%", "-4%", "+115%", "9 → 18", "1 → 2", "0 → 0", "7 → 8", "40 → 43"],
    ["CustomerImporter", "6 vs 4u", "+14%", "-8%", "+0%", "18 → 17", "1 → 1", "0 → 0", "8 → 8", "40 → 39"],
    ["Seabed crawler", "5 vs 1u", "+175%", "+16%", "+115%", "9 → 7", "3 → 2", "2 → 0", "5 → 0", "92 → 42"],
    ["Seabed crawler", "6 vs 4u", "+75%", "+20%", "+39%", "6 → 12", "1 → 1", "0 → 0", "4 → 1", "37 → 64"],
    ["Sims Hotels", "5 vs 1u", "+38%", "-2%", "+10%", "10 → 11", "3 → 1", "1 → 0", "3 → 3", "49 → 49"],
    ["Sims Hotels", "6 vs 4u", "+20%", "-16%", "+9%", "9 → 10", "1 → 1", "1 → 0", "3 → 3", "45 → 48"],
], top=1.5, size=11.5, col_widths=[1.6, 1.0, 1.0, 0.8, 0.8, 1.9, 1.1, 1.2, 0.9, 1.3], row_h=0.36)
bullets(s, [
    "Rejected on these runs: more input-side tokens in all six comparisons (1.4x to 2.8x against evaluate-only, 1.1x to 1.8x against the same tools without LiveTyping), output about equal.",
    "The type information was hardly used: 5, 3 and 0 LiveTyping calls in cell 5, 0, 1 and 0 in cell 6, no actual-scope refactoring in any run; the refactoring tools were called 0 to 2 times while 5 to 14 refactorings were done by hand, even when told to prefer the tools. The types served in every source read did not shorten exploration (18 vs 18, 7 vs 9, 11 vs 10 reads before the first change).",
    "Where types could pay, the symptoms were already rare: MessageNotUnderstood in 1 to 3 answers per run, failed test runs 0 to 2. The extra tokens are the bigger schema (62 to 68 KB) and more calls.",
    "One clear quality difference: the Seabed crawler LiveTyping cell left 0 ifs and 42 findings against 5 and 92, at 2.8x the input side. Three runs defined String extensions under an abbreviated package name; the analysis now sweeps such loose changes.",
], top=4.3, size=12.5)

# ================================================================ 006
s = new_slide("006 · Fewer tokens in Cuis than in Java?", "Cuis scenario 1 (University image) against a Gradle + JUnit 5 translation edited with file and shell tools; no guidance, 1 run per cell, 2026-09-15")
table(s, [
    ["Exercise", "Language", "Input-side", "Uncached", "Cache read", "Output", "Thinking", "Requests", "Calls", "Tool errors", "Test runs", "Given tests", "Seconds"],
    ["CustomerImporter", "Cuis", "1,017 k", "64 k", "953 k", "39 k", "27 k", "23", "22", "1", "3", "29/29", "480"],
    ["CustomerImporter", "Java", "702 k", "63 k", "639 k", "31 k", "20 k", "16", "20", "0", "3", "29/29", "363"],
    ["Seabed crawler", "Cuis", "1,876 k", "73 k", "1,803 k", "55 k", "30 k", "40", "43", "4", "6", "16/16", "641"],
    ["Seabed crawler", "Java", "874 k", "67 k", "807 k", "48 k", "27 k", "19", "18", "0", "7", "58/58", "550"],
    ["Sims Hotels", "Cuis", "1,089 k", "58 k", "1,031 k", "37 k", "18 k", "27", "28", "3", "5", "40/40", "417"],
    ["Sims Hotels", "Java", "673 k", "65 k", "608 k", "32 k", "16 k", "14", "16", "1", "3", "39/39", "342"],
], top=1.75, size=11.5, col_widths=[1.6, 0.9, 1.0, 0.9, 1.0, 0.8, 0.9, 0.9, 0.7, 0.9, 0.9, 1.0, 0.8], row_h=0.34)
table(s, [
    ["Exercise", "Java vs Cuis: input-side", "Uncached", "Output", "Requests", "Calls", "Seconds"],
    ["CustomerImporter", "-31%", "-2%", "-21%", "-30%", "-9%", "-24%"],
    ["Seabed crawler", "-53%", "-9%", "-12%", "-52%", "-58%", "-14%"],
    ["Sims Hotels", "-38%", "+13%", "-14%", "-48%", "-43%", "-18%"],
], top=4.2, size=11, col_widths=[1.6, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0], row_h=0.3, width=Inches(8.6))
bullets(s, [
    "That day, Java was cheaper on all three: 31 to 53 percent fewer input-side tokens, 12 to 21 percent fewer output, 30 to 52 percent fewer requests, same correctness.",
    "The Java agent never used Read, Edit or Write: all 54 calls were Bash, its universal batchable tool (five files printed in one command, written with heredocs, edited with Python scripts). The Cuis agent read the model in more, smaller evaluates and re-sent sources inside compile: strings.",
    "Revisited in 009 with same-day controls: the two cells rerun the next day cost about half, and Java against Cuis came out +33%, -41% and -24% input-side, a draw. The 2026-09-15 numbers are the day, not the language.",
], top=5.55, size=11)

# ================================================================ 007
s = new_slide("007 · Do cryptic names make refactoring dearer and worse?", "Each exercise against a level-2 twin: classes C1.., selectors m1:a1:.., variables v1.., literals coded, comments removed")
bullets(s, [
    "Scenario 4-Refactoring, configurations 2-EvaluateAsLastResource + 8-DesignHeuristicsInline, free, Opus 5 high, 1 run per exercise and twin, 2026-09-15. The Formula One original stalled in its own thinking for 40 minutes (no change to the code) and was rerun.",
], size=13, top=1.6, height=Inches(0.9))
table(s, [
    ["Exercise", "Names", "Input-side", "Uncached", "Output", "Thinking", "Requests", "Calls", "Exploration first", "Rename calls", "Hand-made", "Given tests", "Ifs", "Mentor", "Seconds"],
    ["RobotWars (3 cl, 49 m)", "original", "1,748 k", "84 k", "41 k", "28 k", "27", "36", "9", "0", "8", "19/19", "7", "24", "487"],
    ["RobotWars (3 cl, 49 m)", "cryptic", "1,484 k", "83 k", "42 k", "29 k", "23", "34", "9", "0", "5", "18/18", "5", "20", "501"],
    ["Formula One (5 / 85)", "original", "5,510 k", "125 k", "81 k", "58 k", "53", "62", "13", "2", "9", "27/27", "5", "48", "976"],
    ["Formula One (5 / 85)", "cryptic", "4,826 k", "121 k", "87 k", "67 k", "48", "47", "9", "0", "4", "26/26", "4", "38", "1053"],
    ["Backpack (10 / 102)", "original", "1,544 k", "59 k", "27 k", "18 k", "25", "35", "6", "0", "11", "27/27", "7", "40", "335"],
    ["Backpack (10 / 102)", "cryptic", "4,992 k", "76 k", "49 k", "35 k", "66", "66", "10", "14", "12", "27/27", "7", "23", "657"],
], top=2.5, size=10.5, col_widths=[1.8, 0.8, 0.9, 0.8, 0.7, 0.8, 0.8, 0.6, 1.0, 0.8, 0.9, 0.9, 0.5, 0.7, 0.8], row_h=0.34)
table(s, [
    ["Twin: cryptic left / original recovered / meaningful built, of delivered", "Classes", "Selectors", "Instance variables"],
    ["RobotWars", "0 / 2 / 7 of 7", "0 / 5 / 41 of 48", "0 / 1 / 3 of 3"],
    ["Formula One", "0 / 2 / 5 of 13", "0 / 17 / 35 of 92", "0 / 6 / 8 of 13"],
    ["Adventure backpack", "8 / 0 / 3 of 11", "58 / 18 / 40 of 113", "0 / 6 / 8 of 10"],
], top=4.95, size=11, col_widths=[4.0, 1.6, 1.8, 1.6], row_h=0.3, width=Inches(9.0))
para(s, "The names did not decide the cost; the size of the code did. RobotWars and Formula One: -15% and -12% input-side with cryptic names, same tests, same ifs. Backpack: 3.2x the input side, 66 requests against 25. On every twin the agent first rebuilds the vocabulary from the statement's prose (Robot, Weapon, Car, Track, ClosedDoorState); on the small ones it ended with zero cryptic names, on the largest it spent its calls renaming and left 8 of 11 classes as C1. Design equal or better on the twins.", 6.35, size=10.5, color=GREY, height=Inches(1.0))

# ================================================================ 008
s = new_slide("008 · Does the batch tool make the granular tools affordable?", "smalltalk_batch: several tool calls in one call, one answer line per step; 4 runs per cell, medians")
bullets(s, [
    "Cells on the plain Cuis base: 1 evaluate + tests, no guidance, no batch tool in the image; 2 model structure + batch with configuration 9-BatchFirst; 4 refactoring + batch with 9-BatchFirst. Ada's Coffee and BAJE, the exercises of 003. Calls = what the agent sent (a batch counts once); operations = what the image did.",
], size=13, top=1.6, height=Inches(1.0))
table(s, [
    ["Exercise", "Cell", "Input-side", "Uncached", "Cache read", "Output", "Thinking", "Requests", "Input / request", "Calls", "Operations", "Batches", "Steps / batch", "Answers (chars)", "Schema", "Seconds"],
    ["Ada's Coffee", "1 evaluate", "117 k", "23 k", "95 k", "10 k", "3 k", "8", "15 k", "9", "9", "0", "-", "13 k", "3 KB", "85"],
    ["Ada's Coffee", "2 + batch", "139 k", "33 k", "107 k", "10 k", "3 k", "7", "20 k", "6", "26", "4", "5.4", "21 k", "20 KB", "90"],
    ["Ada's Coffee", "4 + batch", "195 k", "34 k", "168 k", "10 k", "3 k", "6", "32 k", "5", "27", "4", "6.3", "22 k", "69 KB", "90"],
    ["BAJE", "1 evaluate", "227 k", "27 k", "200 k", "20 k", "6 k", "15", "15 k", "16", "16", "0", "-", "4 k", "3 KB", "174"],
    ["BAJE", "2 + batch", "257 k", "35 k", "222 k", "23 k", "6 k", "10", "24 k", "10", "34", "6", "5.2", "15 k", "20 KB", "185"],
    ["BAJE", "4 + batch", "371 k", "32 k", "339 k", "21 k", "6 k", "10", "35 k", "10", "29", "4", "5.3", "13 k", "69 KB", "177"],
], top=2.65, size=10.5, col_widths=[1.3, 1.1, 0.9, 0.8, 0.9, 0.7, 0.8, 0.8, 1.0, 0.6, 0.9, 0.7, 0.9, 1.0, 0.7, 0.7], row_h=0.34)
table(s, [
    ["Against evaluate alone", "Input-side", "Uncached", "Output", "Requests", "Calls", "Same without batch (003)"],
    ["Ada's Coffee, 2 + batch", "+19%", "+41%", "+7%", "-12%", "-33%", "+70% input-side"],
    ["Ada's Coffee, 4 + batch", "+66%", "+45%", "+6%", "-25%", "-44%", ""],
    ["BAJE, 2 + batch", "+13%", "+30%", "+13%", "-30%", "-39%", "+287% input-side"],
    ["BAJE, 4 + batch", "+64%", "+19%", "+5%", "-30%", "-39%", ""],
], top=5.15, size=11, col_widths=[2.2, 1.0, 1.0, 1.0, 1.0, 1.0, 2.2], row_h=0.32, width=Inches(9.4))
para(s, "All 24 runs passed. Quality equal across cells: same ifs (0 and 8), coverage within 4 points, mentor findings within 12.", 6.8, size=10.5, color=GREY, height=Inches(0.4))

s = new_slide("008 · What the batch did and did not do")
bullets(s, [
    "Told to use it, the agent sends 4 to 6 batches of 5 to 6 steps per run, 33 to 44 percent fewer calls and 12 to 30 percent fewer requests than the evaluate agent. That closes most of the gap of 003 (+70% and +287% input-side became +13% to +66%).",
    "What it does not do is make each request cheaper. Three things remain: output tokens rise 5 to 13 percent, because a batch body is JSON around the same sources evaluate carries as Smalltalk plus a tool name and argument keys per step; tool answers are larger (21 k characters against 13 k on Ada's Coffee, 15 k against 4 k on BAJE), all uncached on arrival; and the schema rides on every request (20 KB in scenario 2, 69 KB in scenario 4 against 3 KB), which is why the refactoring cell has the largest cache reads while making the fewest requests.",
    "Evaluate defined no code in any batch cell; it was used 2 to 6 times per run for probing units and dates and for class comments. The refactoring cell made no refactoring call in any of its 8 runs and refactored by hand 3 times per run: without a refactoring-first clause the tools are not used, batch or not.",
    "The single runs of the first day showed parity; four runs per cell moved it to +13% to +66%. Every cell cost about twice on 2026-09-15 what it cost on 2026-09-16.",
    "For the server: a terser batch answer (a status per step, the full answer only on failure), reading tools that answer source rather than JSON around source, a smaller schema for the refactoring cells; and accept step names carrying the client prefix mcp__Cuis__, which the agent used 2 to 4 times per run and the server refused.",
], size=13.5)

# ================================================================ 009
s = new_slide("009 · Cuis through scripts, no MCP server", "Was it the environment, not the language, that made Java cheaper in 006? Same day: Cuis MCP, Java, Cuis scripts")
bullets(s, [
    "Script cell: Claude Code with Read, Edit, Write, Bash, Glob, Grep writes Smalltalk scripts and runs each with ./cuis.sh <file.st> through the VM's -s option and cuis-script-wrapper.st; definitions with subclass: and compile:, as through evaluate; ./cuis.sh run-tests.st runs the package's tests. Same image as the MCP cell. No guidance, free, Opus 5 high, 1 run per cell, all on 2026-09-16.",
], size=13, top=1.6, height=Inches(1.0))
table(s, [
    ["Exercise", "Cell", "Input-side", "Uncached", "Cache read", "Output", "Thinking", "Requests", "Calls", "Test runs", "Scripts run / failed", "Given tests", "Seconds"],
    ["CustomerImporter", "Cuis MCP", "116 k", "24 k", "92 k", "8 k", "2 k", "6", "7", "2", "-", "29/29", "70"],
    ["CustomerImporter", "Java", "154 k", "32 k", "122 k", "11 k", "4 k", "6", "5", "1", "-", "29/29", "108"],
    ["CustomerImporter", "Cuis scripts", "207 k", "36 k", "171 k", "14 k", "6 k", "9", "8", "2", "6 / 1", "29/29", "154"],
    ["Seabed crawler", "Cuis MCP", "243 k", "31 k", "212 k", "22 k", "9 k", "11", "13", "2", "-", "47/47", "192"],
    ["Seabed crawler", "Java", "143 k", "33 k", "110 k", "21 k", "7 k", "6", "6", "2", "-", "55/55", "194"],
    ["Seabed crawler", "Cuis scripts", "357 k", "42 k", "316 k", "29 k", "13 k", "12", "11", "3", "13 / 0", "58/58", "303"],
    ["Sims Hotels", "Cuis MCP", "294 k", "40 k", "254 k", "20 k", "7 k", "10", "12", "3", "-", "40/40", "162"],
    ["Sims Hotels", "Java", "225 k", "38 k", "187 k", "16 k", "3 k", "8", "7", "1", "-", "39/39", "135"],
    ["Sims Hotels", "Cuis scripts", "253 k", "46 k", "208 k", "25 k", "9 k", "8", "7", "3", "10 / 0", "40/40", "243"],
], top=2.65, size=10.5, col_widths=[1.6, 1.1, 0.9, 0.8, 0.9, 0.7, 0.8, 0.8, 0.6, 0.8, 1.3, 0.9, 0.7], row_h=0.31)
table(s, [
    ["Against Cuis MCP, same day", "Input-side", "Uncached", "Output", "Requests", "Seconds"],
    ["CustomerImporter: Java / scripts", "+33% / +79%", "+33% / +50%", "+34% / +69%", "+0% / +50%", "+54% / +120%"],
    ["Seabed crawler: Java / scripts", "-41% / +47%", "+6% / +35%", "-6% / +31%", "-45% / +9%", "+1% / +58%"],
    ["Sims Hotels: Java / scripts", "-24% / -14%", "-5% / +15%", "-23% / +23%", "-20% / -20%", "-17% / +50%"],
], top=5.85, size=11, col_widths=[2.6, 1.3, 1.3, 1.3, 1.3, 1.3], row_h=0.3, width=Inches(9.6))

s = new_slide("009 · Conclusion, and what the scripts cost")
bullets(s, [
    "Not supported: Cuis through scripts was the most expensive environment on every exercise in output tokens (+23% to +69% over the MCP cell) and on two of three in input-side tokens, with the same correctness. Same-day, Java against the MCP server is a draw (+33%, -41%, -24% input-side; +34%, -6%, -23% output).",
    "Where the script tokens go: every definition travels inside a compile: string with doubled quotes and plumbing around it, and two of the three agents wrote a Python generator to turn plain source into those calls. With no source tool the agents dumped the whole model from a script (27 KB on Sims Hotels) and read it back with sed, where the MCP agent asks for one class. Every script run is a call that starts and saves a 45 MB image, which shows in wall time.",
    "The wrapper worked: 1 failed script in 29, reported and discarded, no hang. Only UnhandledError and syntax errors are handled: an Error handler would take SUnit's test errors before the runner records them.",
    "What it says for the study: the environment does not explain the 006 numbers; the day does. The live image's advantage is real but it is not tokens: a definition is a tool argument rather than a quoted string, and a read is a question rather than a dump.",
    "Housekeeping: the script agents kept their files in Claude Code's per-session scratchpad; the runner now collects them into the run.",
], size=13.5)

# ================================================================ synthesis
s = new_slide("What the study says so far", "Nine matrices, one mechanism")
bullets(s, [
    "No tool set beat evaluate plus the test runners on tokens: model-structure tools 1.7x to 3.9x the input side (003), refactoring tools under TDD 1.1x to 1.6x (004), LiveTyping 1.4x to 2.8x (005), batch-backed granular tools 1.1x to 1.7x (008).",
    "The reason is arithmetic: a tool call is a request, a request re-reads the context, and evaluate already batches (one expression compiles twenty methods). Granular tools add requests, JSON, larger answers and a schema of 20 to 69 KB per request; they save nothing the agent was spending.",
    "The tools are used only when the guidance asks for them: 36 refactoring calls when told (004 C), 0 when merely available (004 B, 008); the LiveTyping tools 0 to 5 calls even when told.",
    "Technique dominates cost more than tooling: TDD taken literally is 3 to 5x test-after, in test runs (73 to 81 against 1 or 2). Design measures did not separate the techniques on these exercises.",
    "The language comparison is a draw within the noise once controls run on the same day; Smalltalk through files (scripts) costs more than Smalltalk through the server, because the form of the code makes the agent write more.",
    "Names are rebuilt from the statement before refactoring; cryptic names cost what renaming costs, which scales with the package.",
    "Design was equal across cells almost everywhere: the same ifs, coverage within a few points, mentor findings within the noise. Where a cell differed in quality (Seabed crawler with LiveTyping) it also cost 2.8x.",
], size=14)

s = new_slide("Threats and open questions")
bullets(s, [
    "Repetitions: most cells have one run; 008 with four runs per cell moved a parity into +13% to +66%. Five runs per cell (H5 of the research design) remain the standard to reach.",
    "Day effect: a 2x swing between consecutive days with everything else fixed. Every comparison needs same-day controls; the cross-day deltas in 002 to 007 are within-day only by construction of their matrices.",
    "Bundled factors: several cells change tools and guidance together (2 with evaluate-last, batch with tools-first). A cell '2-ModelStructure+Package : 1-Empty' would separate them.",
    "Design measures: the mentor's layout heuristics dominate some counts; findings per method excluding layout, and a blind human rubric, are still to do. Java has no mentor or AST measures, so only cost and correctness compare across languages.",
    "Where the granular tools could still pay: large systems where a read through evaluate would dump too much, unpredictable results where a refactoring's safety matters more than its tokens, and a traceable change log; none of the exercises here is large enough to show it.",
    "Next for the server: accept mcp__Cuis__-prefixed batch steps, terser batch answers, source-shaped reading answers, a smaller refactoring schema; for the harness: repeat the batch and LiveTyping matrices with five same-day runs per cell.",
], size=14)

s = new_slide("Where everything is")
bullets(s, [
    "experiments/README.md: the index, one row per experiment with its question, dates and outcome.",
    "experiments/NNN-Description/README.md: hypothesis, design, results tables, conclusion, caveats; table.md and results.json rebuilt with scripts/matrix-table.py.",
    "experiments/NNN/cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/: prompt.md, CLAUDE.md, .mcp.json, claude-stream.jsonl, claude-transcript.jsonl, mcp-calls.jsonl, warm-up.txt, output/<Package>.pck.st, the saved image, manifest.json, analysis.json.",
    "scripts/README.md: how to build images, run cells (Cuis, Java, scripts), make cryptic twins, analyze runs and run matrices; known limits.",
    "research-design.md: the framework this study follows (layers, research questions, hypotheses H1 to H5, dependent variables, planned experiments E0 to E4).",
], size=15)

prs.save(OUT)
print("saved", OUT, "slides", len(prs.slides))
