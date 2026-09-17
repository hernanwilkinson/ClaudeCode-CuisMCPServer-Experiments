#!/usr/bin/env python3
"""Versión en español de la presentación del estudio. Mismo diseño y mismos datos que
build-deck.py; los nombres de escenarios, configuraciones, herramientas y parámetros se
mantienen como identificadores."""
import os, sys
exec(open(os.path.join(os.path.dirname(os.path.abspath(__file__)), "deck-helpers.py")).read())

# ---------------------------------------------------------------- portada
slide = prs.slides.add_slide(BLANK)
slide_number[0] += 1
tb = slide.shapes.add_textbox(MARGIN, Inches(2.3), CONTENT_W, Inches(1.5))
tb.text_frame.word_wrap = True
_text(tb.text_frame, "Claude Code en una imagen viva de Cuis Smalltalk", 40, bold=True)
_text(tb.text_frame, "Hipótesis, experimentos y lo que dicen los tokens", 24, color=GREY)
line = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, MARGIN, Inches(4.0), Inches(3), Emu(28575))
line.fill.solid(); line.fill.fore_color.rgb = LINE; line.line.fill.background()
para(slide, "Hernán Wilkinson\nExperimentos 010 a 018, corridos el 17 de septiembre de 2026 (y 004, del 11)\nClaude Code 2.1.268 sobre el servidor MCP de Cuis", 4.2, size=16, color=GREY, height=Inches(1.2))

# ---------------------------------------------------------------- agenda
s = new_slide("Agenda")
bullets(s, [
    "La pregunta y las cuatro capas del montaje",
    "Entorno: imágenes, escenarios, configuraciones, técnicas, ejercicios",
    "Cómo funciona una corrida y cómo se invoca Claude Code (cada parámetro de línea de comandos y su razón)",
    "Qué se mide: tokens, requests, llamadas, corrección, diseño, proceso",
    "Validez: contaminación por memoria, el efecto del día y el piloto de varianza",
    "Las hipótesis vigentes y sus resultados, en tokens: corridas del mismo día, 3 a 10 por celda",
    "Qué dice el estudio hasta ahora y qué sigue",
], size=18)

# ---------------------------------------------------------------- pregunta
s = new_slide("La pregunta", "¿Qué determina lo que produce un agente de código en una imagen viva de Smalltalk, y cuánto cuesta?")
table(s, [
    ["Capa", "Qué es acá", "Cómo se varía"],
    ["Harness del agente", "Claude Code (sin terminal, modo print), un id de modelo por experimento", "Modelo y esfuerzo fijos por experimento (Opus 5, high, en todas las matrices)"],
    ["Interfaz agente-computadora", "El conjunto de herramientas que el servidor MCP de Cuis expone desde la imagen", "Escenarios: qué grupos de herramientas y decoradores sobreviven en la imagen"],
    ["Guía", "El CLAUDE.md de la celda (y skills, cuando una configuración los trae)", "Configuraciones: vacía, evaluate como último recurso, herramientas primero, LiveTyping, heurísticas, batch primero"],
    ["Técnica", "Lo que prescribe el enunciado de la tarea", "free, TDD, test-after"],
], top=1.7, size=13, col_widths=[2, 4.5, 5], row_h=0.6)
bullets(s, [
    "El tipo de tarea es un factor de bloqueo: greenfield, funcionalidad sobre código existente, refactorización de código con smells. Las comparaciones se hacen dentro de un mismo ejercicio.",
    "Cada hipótesis se vuelve una matriz: celdas = escenario : configuración [: técnica], × ejercicios, × repeticiones.",
    "La unidad de medición es una corrida: una sesión de Claude Code sobre un ejercicio en una celda.",
], top=4.9, size=15)

# ---------------------------------------------------------------- entorno: piezas
s = new_slide("Entorno: las piezas", "Todo vive bajo un directorio de proyecto; las fuentes de Cuis y el servidor MCP son entradas de solo lectura")
table(s, [
    ["Pieza", "Dónde", "Rol"],
    ["Servidor MCP de Cuis", "Paquetes de Cuis-MCPServer (commit 9e990b0), cargados en cada imagen de escenario", "Servidor MCP por HTTP dentro de la imagen: grupos de herramientas (subclases de MCPToolGroup), decoradores, log de llamadas"],
    ["Imágenes base", "Cuis 7.9 en la VM estándar (actualizada a 8185); CuisUniversity 7.9 en la VM de LiveTyping", "Dos bases: Cuis pelada para los escenarios 1 a 4, University (LiveTyping) para 5 a 7 y los controles"],
    ["Imágenes de escenario", "scenarios/<nombre>/MCP-<nombre>.image + manifest.json", "Una imagen por conjunto de herramientas, construida una vez, copiada por corrida; features, grupos, decoradores y hashes registrados"],
    ["Ejercicios", "exercises/<nombre>/{spec.md, exercise.json, código inicial}", "91 ejercicios de parciales y cursos: enunciado, nombre del paquete, código inicial, tests dados, tipo"],
    ["Configuraciones", "scripts/configs/<n>/CLAUDE.md [+ skills.txt]", "Texto de guía concatenado en el CLAUDE.md de la celda"],
    ["Técnicas", "scripts/techniques/{free,tdd,test-after}.md", "Párrafo agregado al prompt"],
    ["Imagen de análisis", "scenarios/analysis", "Base University + todas las herramientas + TestLint + SmalltalkMentor; el paquete de cada corrida se carga y se mide ahí"],
    ["Experimentos", "experiments/NNN-Descripción/{README, cells/, table.md, results.json}", "Un directorio por hipótesis; un subdirectorio por celda, por ejercicio, por corrida"],
], top=1.7, size=11.5, col_widths=[1.8, 4.2, 5.5], row_h=0.5)

# ---------------------------------------------------------------- pipeline
s = new_slide("Entorno: el pipeline", "Cinco scripts, cada uno escribe lo que lee el siguiente")
table(s, [
    ["Paso", "Script", "Qué hace"],
    ["1", "1-createScenarioImage.sh <escenario>", "Copia la imagen base, carga las features, elimina los grupos de herramientas y decoradores que el escenario no debe ofrecer, instala las unidades como globales, quita la herramienta batch en los escenarios de solo evaluate, graba y escribe manifest.json"],
    ["2", "2-runCell.sh --experiment E --scenario S --config C --technique T --exercise X", "Una corrida: directorio de trabajo nuevo, copia de la imagen del escenario, servidor MCP en un puerto al azar con un bearer token por corrida, código inicial cargado, warm-up, sesión de Claude Code, recolección (fileout del paquete, imagen grabada, log de llamadas, transcripción, manifest)"],
    ["2b / 2d", "2-runJavaCell.sh / 2-runScriptCell.sh", "La misma corrida sin el servidor MCP: Java (Gradle + JUnit) o scripts de Cuis por la opción -s de la VM, con las herramientas de archivos y shell de Claude Code"],
    ["3", "3-analyzeRun.sh <corrida>", "Carga el paquete producido en una imagen de análisis nueva: tests de aceptación y propios, cobertura, test smells, hallazgos del mentor, métricas del AST, diff contra el código inicial, resumen del proceso desde el log de llamadas; escribe analysis.json"],
    ["5", "5-runMatrix.sh --experiment E --hypothesis ... --cells ... --exercises ... --repetitions N", "Planifica las celdas × ejercicios × repeticiones, las corre (dos en paralelo, intercaladas), analiza cada una, escribe results.json y table.md (matrix-table.py)"],
], top=1.7, size=11.5, col_widths=[0.7, 4.0, 7.3], row_h=0.75)

# ---------------------------------------------------------------- escenarios
s = new_slide("Escenarios: qué herramientas ofrece la imagen", "Un escenario es lo que queda en la imagen después de cargar sus paquetes y quitar las clases que no debe servir")
table(s, [
    ["Escenario", "Base", "Grupos de herramientas servidos", "Batch", "Schema por request"],
    ["1-Evaluate+TestRunning", "Cuis", "Herramientas de imagen (definir clase, definir métodos, evaluate, borrar, grabar) + correr tests", "no", "≈3 KB"],
    ["2-ModelStructure+Package", "Cuis", "1 + estructura del modelo (fuentes de clase/método, jerarquía, senders, implementors, referencias) + paquetes", "sí", "≈20 KB"],
    ["3-Search", "Cuis", "2 + búsqueda (selectores, código fuente) + method finder (mensajes por ejemplo)", "sí", ""],
    ["4-Refactoring", "Cuis", "3 + refactorizaciones (rename, extract, inline, move, push up/down, insert superclass, …)", "sí", "≈54–69 KB"],
    ["5-LiveTyping", "University", "4 + herramientas de LiveTyping y decoradores de tipos (tipos de variables y métodos; actual senders/implementors)", "sí", "≈62 KB"],
    ["6-LiveTypingRefactoring", "University", "5 + decoradores de refactorización en el actual scope", "sí", "≈68 KB"],
    ["7-Debug", "University", "5 + herramientas de depuración (todavía sin usar en un experimento)", "sí", ""],
    ["1-…-University, 4-…-University", "University", "Igual que 1 y 4 sobre la base University, sin el grupo ni los decoradores de LiveTyping: controles de las celdas LiveTyping", "", ""],
    ["java-gradle", "ninguna", "Sin servidor MCP: Read, Edit, Write, Bash, Glob, Grep de Claude Code sobre un proyecto Gradle + JUnit 5", "", ""],
    ["cuis-script", "University", "Sin servidor MCP: las mismas herramientas de archivos y shell, scripts corridos en la imagen por la opción -s de la VM", "", ""],
], top=1.7, size=11, col_widths=[2.3, 1.0, 6.7, 0.7, 1.3], row_h=0.45)
notes(s, "Los tamaños de schema son las descripciones JSON de herramientas que Claude Code manda en cada request; medidos en los experimentos 004, 005 y 008.")

# ---------------------------------------------------------------- configuraciones
s = new_slide("Configuraciones: la guía en CLAUDE.md", "Se concatenan en orden en el CLAUDE.md de la celda; '2+8' significa ambos textos")
table(s, [
    ["Configuración", "Dice"],
    ["1-Empty", "Nada (CLAUDE.md sin contenido)"],
    ["2-EvaluateAsLastResource", "Usar smalltalk_evaluate solo cuando ninguna otra herramienta puede hacer la tarea"],
    ["3-SearchBeforeImplement", "Antes de implementar sobre clases base, buscar selectores, código fuente y mensajes por ejemplo; reutilizar lo que existe"],
    ["4-Refactoring", "Al cambiar código existente, las refactorizaciones tienen prioridad sobre definir o borrar a mano"],
    ["5-LiveTyping", "Usar la información de tipos de LiveTyping tanto como sea posible; preferir actual senders e implementors"],
    ["6-LiveTypingRefactoring", "Cuando una refactorización ofrece el actual scope, usarlo sobre cualquier otro"],
    ["7-DesignHeuristics", "Cargar y seguir el skill smalltalk-design-heuristics (skills copiados a la celda, archivos referenciados inlineados)"],
    ["8-DesignHeuristicsInline", "El archivo completo de heurísticas de SmalltalkMentor (≈8,5 KB) pegado en CLAUDE.md, siempre en contexto"],
    ["9-BatchFirst", "Usar smalltalk_batch sobre cualquier otra forma de trabajar: un batch por paso de trabajo; una herramienta sola únicamente cuando el paso siguiente depende de su respuesta"],
    ["10-NoRenames", "No renombrar nada: conservar cada nombre de clase, selector y variable tal como viene; mejorar el diseño solo por estructura (lo nuevo se nombra libremente)"],
], top=1.7, size=11.5, col_widths=[2.6, 9.4], row_h=0.38)
para(s, "Técnicas (agregadas al prompt): free = solo el enunciado; tdd = un test que falla por vez, correrlo, el mínimo código, correr todos, refactorizar; test-after = implementar primero, después escribir y correr los tests.", 6.5, size=12, color=GREY, height=Inches(0.8))

# ---------------------------------------------------------------- ejercicios
s = new_slide("Ejercicios usados en los experimentos", "Enunciados de parciales reescritos como specs, sin referencias a TDD, heurísticas, criterios de corrección ni al PDF original")
table(s, [
    ["Ejercicio", "Título", "Tipo", "Código inicial", "Tests dados", "Usado en"],
    ["2019-2c-parcial1", "Ada's Coffee Shop Rewards", "refactorización", "13 clases, 48 métodos", "14", "010, 011, 012, 013, 015"],
    ["2022-1c-parcial1", "Simulador de Fórmula 1", "refactorización", "9 clases, 85 métodos", "25", "011, 015, 017, 018"],
    ["2025-2c-parcial2", "Lectores de tarjeta BAJE", "greenfield", "1 clase vacía", "ninguno (tests propios)", "012, 013"],
    ["2023-2c-parcial2", "MineField", "greenfield", "ninguno", "ninguno (tests propios)", "004"],
    ["2025-2c-recuperatorio", "Aterrizar.com búsqueda de vuelos", "greenfield sobre una clase chica", "1 clase, 7 métodos", "5", "004"],
    ["2022-1c-recuperatorio-parcial1", "CustomerImporter", "refactorización", "16 clases, 160 métodos", "29", "014, 016"],
    ["2019-2c-parcial2-masked", "Explorador del lecho marino", "funcionalidad sobre una jerarquía", "13 clases, 68 métodos", "16", "014, 016"],
    ["2024-1c-parcial1", "Sims Hotels", "refactorización", "9 clases, 110 métodos", "39", "014, 016"],
    ["2021-1c-parcial1 (+ gemelos nivel 2 y 3)", "RobotWars", "refactorización", "6 clases, 49 métodos", "18", "017, 018"],
    ["2020-2c-parcial1 (+ gemelos nivel 2 y 3)", "Mochila y puerta de aventuras", "refactorización", "16 clases, 102 métodos", "27", "017, 018"],
], top=1.7, size=11.5, col_widths=[2.6, 2.6, 2.0, 2.0, 1.3, 1.5], row_h=0.42)
para(s, "Aceptación = los tests dados, corridos después de la sesión sobre el paquete que dejó el agente; los greenfield sin tests dados se evalúan con los tests del propio agente. Fórmula 1 también tiene gemelos de nivel 2 y 3. Las traducciones a Java de los tres ejercicios de 014 y 016 tienen las mismas clases, métodos, tests y smells.", 6.5, size=10.5, color=GREY, height=Inches(0.8))

# ---------------------------------------------------------------- una corrida
s = new_slide("Cómo funciona una corrida", "2-runCell.sh: todo lo que necesita una sesión se construye de cero, y todo lo que hizo se recolecta")
bullets(s, [
    "Directorio de trabajo en /private/tmp/claude-cells/<id-de-corrida>: CLAUDE.md (la configuración), .claude/skills (si hay), .mcp.json. Fuera de $HOME a propósito (ver contaminación).",
    "Imagen: una copia de la imagen del escenario, iniciada headless con el servidor MCP en un puerto libre y un bearer token al azar escrito solo en el .mcp.json de esa corrida.",
    "Código inicial: el paquete del ejercicio se carga por el servidor; las clases de test dadas forman parte de él.",
    "Warm-up: los tests dados se corren una vez antes de la sesión, así LiveTyping tiene los tipos del código dado en todas las celdas (registrado en warm-up.txt).",
    "Prompt = spec.md + párrafo de la técnica + un párrafo final: trabajar en la imagen viva por las herramientas MCP de Cuis, no hay archivos que editar; clases en la categoría <Paquete>, tests en <Paquete>-Tests.",
    "Sesión: claude -p … (siguiente slide), stdout a claude-stream.jsonl, un watchdog la mata al vencer el timeout, --max-budget-usd limita el gasto.",
    "Recolección: el paquete fileado, los cambios sueltos barridos de los change sets, la imagen grabada, el log de llamadas del servidor (mcp-calls.jsonl), la transcripción y el stream de Claude Code, manifest.json con versiones, hashes, estado, tiempo y uso de tokens.",
    "El análisis (3-analyzeRun.sh) carga después el paquete en una imagen de análisis nueva y escribe analysis.json.",
], size=14)

# ---------------------------------------------------------------- línea de comandos
s = new_slide("Cómo se invoca Claude Code", "La llamada headless de 2-runCell.sh, un parámetro por línea")
para(s, 'claude -p "$(cat prompt.md)" --model $MODEL --effort $EFFORT \\\n  --output-format stream-json --verbose --permission-mode bypassPermissions \\\n  --setting-sources project --tools "$BUILTIN_TOOLS" --disable-slash-commands \\\n  --mcp-config .mcp.json --strict-mcp-config --max-budget-usd $BUDGET < /dev/null', 1.5, size=11, mono=True, height=Inches(0.95))
table(s, [
    ["Parámetro", "Valor", "Por qué"],
    ["-p <prompt>", "contenido de prompt.md", "Modo print (headless): una tarea, sin terminal, termina al acabar; el prompt queda guardado con la corrida"],
    ["--model", "claude-opus-5 en todas las matrices", "El modelo se mantiene constante dentro de un experimento; un factor por vez"],
    ["--effort", "high", "Esfuerzo de razonamiento constante; los tokens de thinking igual se cuentan"],
    ["--output-format stream-json --verbose", "", "Cada mensaje y cada registro de uso van a claude-stream.jsonl: tokens por request, requests, llamadas, tiempo"],
    ["--permission-mode bypassPermissions", "", "No hay nadie para aprobar llamadas a herramientas"],
    ["--setting-sources project", "", "Solo se leen el CLAUDE.md y .claude de la celda; la configuración, memoria y skills del usuario quedan afuera"],
    ["--tools", '"" (o "Skill" cuando la configuración trae skills)', "Sin Read, Edit, Write ni Bash: la imagen es el único lugar de trabajo. Las celdas Java y script pasan Read,Edit,Write,Bash,Glob,Grep"],
    ["--disable-slash-commands", "", "No se filtran comandos ni skills del usuario; se omite solo cuando una configuración instala skills"],
    ["--mcp-config .mcp.json --strict-mcp-config", "", "Solo el servidor de esta corrida (puerto y token), nada de la configuración MCP del usuario; las celdas Java y script pasan una lista vacía"],
    ["--max-budget-usd", "15 (20 por defecto)", "Frena una sesión desbocada; las corridas que lo tocan se excluyen"],
    ["< /dev/null", "", "Sin stdin: una sesión que pregunta algo termina en vez de esperar"],
    ["watchdog (no es un flag)", "1800 o 2400 s", "kill -TERM al vencer el timeout; la corrida queda registrada como timed out"],
], top=2.55, size=9.5, col_widths=[3.0, 2.4, 6.6], row_h=0.28)

s = new_slide("Dos notas más sobre la invocación")
bullets(s, [
    "Corridas interactivas (experimento 001): sin -p ni el flag de presupuesto. Claude Code interactivo carga ~/.claude/CLAUDE.md y ~/.claude/skills diga lo que diga --setting-sources, así que el runner los aparta mientras dura la sesión y los repone al terminar.",
    "Configuraciones con skills (7-DesignHeuristics): los directorios de skills se copian a .claude/skills de la celda, cada ruta absoluta .md que nombra un SKILL.md se inlinea al final (no hay herramienta Read en la celda), y --tools pasa a ser \"Skill\".",
    "Celda Java: mismos flags, --tools Read,Edit,Write,Bash,Glob,Grep, .mcp.json = { \"mcpServers\": {} }, Gradle 9.7 en el PATH, warm-up = gradle test; los tests del agente se leen del XML de JUnit por clase.",
    "Celda script: igual que Java más ./cuis.sh <archivo.st>, que corre la VM headless con -s cuis-script-wrapper.st: el script se evalúa como lo haría la herramienta evaluate, se imprime su valor, la imagen se graba si tuvo éxito; ante UnhandledError o error de sintaxis se imprime el error, estado 1, imagen intacta. Solo se maneja UnhandledError, porque SUnit registra los errores de los tests atrapándolo.",
    "Contabilidad de tokens: cada mensaje del asistente en el stream trae usage (input, cache creation, cache read, output); thinking se cuenta de los bloques de thinking; un registro de usage = un request a la API.",
], size=14)

# ---------------------------------------------------------------- medidas
s = new_slide("Qué se mide por corrida", "analysis.json: costo desde el stream, corrección y diseño desde la imagen de análisis, proceso desde el log de llamadas del servidor")
table(s, [
    ["Grupo", "Medidas", "Fuente"],
    ["Tokens", "lado de entrada (input no cacheado + cache write + cache read), input no cacheado, cache read, output, thinking, input por request", "registros usage de claude-stream.jsonl"],
    ["Volumen", "requests a la API, llamadas a herramientas, operaciones (pasos de batch contados), errores de herramienta, segundos", "stream + mcp-calls.jsonl"],
    ["Corrección", "aceptación = tests dados sobre el paquete como quedó; tests propios del agente; métodos que quedaron fuera del paquete", "imagen de análisis, TestRunner"],
    ["Diseño", "ifs en el modelo (AST), hallazgos del mentor (heurísticas de SmalltalkMentor) y hallazgos por método, clases y métodos, cobertura %, test smells (TestLint)", "imagen de análisis"],
    ["Proceso", "llamadas de exploración antes del primer cambio, llamadas define y métodos por define, llamadas a refactorizaciones y fallidas, refactorizaciones a mano, llamadas LiveTyping, refactorizaciones en actual scope, respuestas MessageNotUnderstood, corridas de tests fallidas, llamadas rename, nombres crípticos que quedan / nombres originales recuperados", "mcp-calls.jsonl, diff contra el código inicial"],
], top=1.7, size=12, col_widths=[1.5, 7.5, 3.0], row_h=0.7)
bullets(s, [
    "Las matrices informan la mediana de las corridas de una celda que pasaron los tests de aceptación; cada corrida también se lista.",
    "Esta presentación muestra tokens, nunca dólares: los tokens del lado de entrada y de salida cuentan la historia, con requests y llamadas como mecanismo.",
], top=6.15, size=13)

# ---------------------------------------------------------------- mecanismo
s = new_slide("El mecanismo detrás de cada resultado", "Por qué las llamadas, y no la verbosidad, mueven el lado de entrada")
bullets(s, [
    "Cada llamada a una herramienta es un request a la API, y cada request reenvía toda la conversación: system prompt, schemas de herramientas, cada llamada y respuesta anteriores.",
    "Por eso los tokens del lado de entrada crecen con requests × largo del contexto. Las lecturas de caché son del 84 al 97 por ciento del lado de entrada en todos los experimentos; la parte no cacheada es chica y estable.",
    "Los tokens de salida (código, cuerpos de batch, strings de compile:, thinking) son lo que el agente escribe; se mueven poco entre celdas del mismo ejercicio, salvo cuando cambia la forma del código (scripts, cuerpos JSON de batch).",
    "El schema de herramientas viaja en cada request: ≈3 KB con evaluate y los tests, ≈20 KB con las herramientas de estructura del modelo, 54 a 69 KB con las refactorizaciones.",
    "Una herramienta que hace más por llamada (definir varios métodos, leer una clase entera, un batch de pasos) reduce requests; evaluate ya lo hace, porque una expresión compila muchos métodos.",
    "Consecuencia para las hipótesis: un conjunto de herramientas solo paga si quita más requests de los que agrega en contexto, o si compra algo que los tokens no miden (seguridad, trazabilidad).",
], size=15)

# ---------------------------------------------------------------- validez
s = new_slide("Dos lecciones de validez", "Ambas encontradas en los artefactos de las corridas, ambas cambiaron el harness")
bullets(s, [
    "Contaminación por memoria (experimento 002). Claude Code se actualizó solo de 2.1.212 a 2.1.267 el 10-09-2026. Desde 2.1.267, una sesión cuyo directorio de trabajo esté bajo $HOME recibe ~/.claude/CLAUDE.md como memoria de proyecto aun con --setting-sources project. 12 de 12 corridas de 002 vieron las instrucciones globales; 10 leyeron el archivo de heurísticas de 8,5 KB por evaluate. Arreglo: las celdas corren bajo /private/tmp/claude-cells; la transcripción de cada corrida se revisa buscando memoria inyectada.",
    "El efecto del día. La misma celda sobre el mismo ejercicio (Ada's Coffee, solo evaluate) costó 318 a 361 k tokens de entrada el 10-09, 611 k el 15-09, 87 a 125 k el 16-09 y 78 a 131 k el 17-09, con el mismo modelo, esfuerzo, prompt e imagen. El piloto 010 midió que dentro de un día la dispersión es de 1,7x; entre días es de 3 a 5x. Arreglo: toda comparación lleva controles del mismo día, y por eso esta presentación usa solo las corridas del 17-09 (más 004).",
    "Aprendido también en el camino: nunca editar un runner mientras una corrida lo ejecuta (bash retoma en un offset corrido); un sleep huérfano del watchdog retiene el pipe del llamador; los agentes clasifican extensiones de clases base bajo nombres de paquete abreviados, así que los cambios sueltos se barren de los change sets; una corrida por celda es una estimación puntual, medianas de cuatro o cinco ya mueven una conclusión (008 contra 013).",
], size=14)

# ---------------------------------------------------------------- tabla resumen
s = new_slide("Las hipótesis vigentes de un vistazo", "Todas corridas el 17-09-2026, Opus 5, esfuerzo high, controles del mismo día; 004 es del 11-09 y no se repitió")
table(s, [
    ["#", "Pregunta", "Celdas × ejercicios × corridas", "Resultado"],
    ["010", "¿Cuánto varían corridas idénticas el mismo día? (piloto E0)", "1 × 1 × 10", "Entrada 78 a 131 k (CV 18%), salida CV 7%; cinco corridas resuelven ~25% de entrada y ~10% de salida"],
    ["012", "¿Las herramientas cuestan por sí mismas o por la cláusula que las acompaña? (incluye la repetición limpia de 002)", "4 × 2 × 3", "Por sí mismas, y solo en la refactorización chica (+49%); en greenfield ahorran (-24%); la salida sube +15 a +32% siempre"],
    ["013", "Con batch, ¿las herramientas granulares cuestan lo mismo que evaluate?", "3 × 2 × 5", "Estructura del modelo + batch: sí (+7%, +9%). Refactorización + batch: 2,3 a 2,4x por el schema"],
    ["014", "¿Es más barato implementar y refactorizar con LiveTyping?", "4 × 3 × 5", "Rechazada en las 6 comparaciones (1,3 a 2,0x); las herramientas de tipos se llamaron 3 veces en 30 corridas"],
    ["015", "Si se pide refactorizar con las herramientas (y en batch), ¿se usan, y cuánto cuesta?", "3 × 2 × 5", "Se usan (3 a 33 llamadas por corrida) y cuestan 2x la celda sin la cláusula y 3 a 4x evaluate; el diseño no cambia"],
    ["016", "¿Cuesta lo mismo en Cuis por MCP, en Java y en Cuis por scripts?", "3 × 3 × 5", "Entrada igual dentro del ruido; los scripts escriben +7 a +19% de salida y tardan +13 a +32%"],
    ["017 / 018", "¿Los nombres crípticos encarecen o empeoran la refactorización, con el dominio oculto o con renombrar prohibido?", "9 × 3 y 6 × 3", "No: mismo costo y diseño salvo en el ejercicio más chico (+20 a +35%); renombrar es una elección inestable del agente"],
    ["004", "¿TDD da mejor diseño? ¿Las refactorizaciones ahorran tokens con TDD?", "5 × 2 × 1", "No sostenidas; TDD cuesta 3 a 5x test-after. Una corrida por celda: pendiente de repetir"],
], top=1.7, size=11.5, col_widths=[0.8, 4.6, 2.0, 4.6], row_h=0.52)

# ================================================================ 010
s = new_slide("010 · Piloto de varianza: diez corridas idénticas", "1-Evaluate+TestRunning sin guía sobre Ada's Coffee, diez corridas en una hora, de a dos en paralelo")
table(s, [
    ["Medida", "Mín", "Mediana", "Máx", "Media", "Desvío", "CV %", "Máx / mín"],
    ["Tokens de entrada", "78 k", "100 k", "131 k", "103 k", "19 k", "18", "1,68"],
    ["Input no cacheado", "16 k", "18 k", "20 k", "18 k", "1 k", "7", "1,22"],
    ["Cache read", "62 k", "81 k", "113 k", "85 k", "19 k", "22", "1,83"],
    ["Salida", "8 k", "9 k", "10 k", "9 k", "1 k", "7", "1,24"],
    ["Thinking", "2 k", "2 k", "3 k", "2 k", "0 k", "21", "1,94"],
    ["Requests", "6", "7", "9", "7,3", "1,2", "16", "1,50"],
    ["Llamadas", "6", "8", "10", "8,1", "1,4", "18", "1,67"],
    ["Segundos", "67", "73", "83", "73", "5,5", "7", "1,24"],
    ["Hallazgos del mentor", "17", "21,5", "25", "21", "2,3", "11", "1,47"],
], top=1.7, size=12, col_widths=[2.6, 1, 1, 1, 1, 1, 0.9, 1.1], row_h=0.34, width=Inches(8.4))
table(s, [
    ["La misma celda antes", "Entrada", "Salida"],
    ["008, 16-09 (3 corridas)", "87 a 125 k", "7 a 10 k"],
    ["008, 15-09 (1)", "611 k", "21 k"],
    ["003, 11-09 (1)", "169 k", "15 k"],
    ["002, 10-09 (3, contaminado)", "318 a 361 k", "19 a 20 k"],
], top=1.7, size=11.5, col_widths=[2.2, 1.2, 1.0], row_h=0.36, left=Inches(9.3), width=Inches(3.45))
bullets(s, [
    "Dentro de un día el trabajo es el mismo: salida e input no cacheado casi no se mueven (CV 7%), las 10 corridas pasan los 14 tests y dejan 0 ifs. Lo que varía es la cantidad de intercambios (6 a 9 requests), y con ellos la entrada.",
    "El efecto del día es de otro orden: la misma celda costó 3 y 5 veces más el 10 y el 15 de septiembre. Por eso los controles del mismo día importan más que las repeticiones.",
    "Regla de lectura: con una corrida, diferencias de menos de 1,7x en entrada o 25% en salida pueden ser dos extracciones de la misma distribución. Con cinco corridas por celda se resuelve ~25% de entrada y ~10% de salida. La salida es la medida estable.",
], top=5.25, size=12.5)

# ================================================================ 012
s = new_slide("012 · ¿Cuestan las herramientas o la cláusula?", "Escenario 2 (estructura del modelo + paquetes, con batch en la imagen) sin guía, con evaluate al final y con batch primero, contra evaluate solo; 3 corridas por celda")
table(s, [
    ["Ejercicio", "Celda", "Entrada", "No cach.", "Salida", "Requests", "Entrada / req.", "Llamadas", "Operaciones", "Batches", "Pasos / batch", "Define / métodos", "A mano", "Segundos", "Ifs", "Mentor"],
    ["Ada's Coffee", "1: evaluate, sin guía", "80 k", "17 k", "8 k", "6", "13 k", "8", "8", "0", "-", "0 / 0", "0", "69", "0", "21"],
    ["Ada's Coffee", "2: sin guía", "120 k", "25 k", "11 k", "6", "20 k", "5", "25", "4", "5,7", "2 / 54", "5", "85", "0", "22"],
    ["Ada's Coffee", "2: evaluate al final", "133 k", "24 k", "11 k", "7", "19 k", "6", "26", "5", "5,0", "2 / 48", "3", "84", "0", "25"],
    ["Ada's Coffee", "2: batch primero", "87 k", "23 k", "10 k", "5", "17 k", "4", "21", "2", "9,5", "1 / 48", "4", "79", "0", "26"],
    ["BAJE", "1: evaluate, sin guía", "259 k", "26 k", "19 k", "16", "15 k", "16", "16", "0", "-", "0 / 0", "0", "160", "8", "57"],
    ["BAJE", "2: sin guía", "198 k", "31 k", "22 k", "11", "20 k", "10", "29", "5", "5,2", "2 / 97", "0", "183", "8", "61"],
    ["BAJE", "2: evaluate al final", "226 k", "33 k", "22 k", "10", "23 k", "9", "28", "5", "4,9", "3 / 95", "0", "169", "8", "66"],
    ["BAJE", "2: batch primero", "183 k", "32 k", "22 k", "10", "18 k", "9", "25", "3", "6,3", "2 / 87", "0", "180", "8", "60"],
], top=1.75, size=10, col_widths=[1.2, 1.9, 0.8, 0.7, 0.65, 0.8, 0.9, 0.75, 0.95, 0.7, 0.85, 1.1, 0.65, 0.8, 0.45, 0.65], row_h=0.34)
table(s, [
    ["Contra evaluate solo", "Entrada", "No cacheado", "Salida", "Requests", "Llamadas"],
    ["Ada's Coffee · 2 sin guía", "+49%", "+46%", "+32%", "+0%", "-38%"],
    ["Ada's Coffee · 2 evaluate al final", "+66%", "+45%", "+27%", "+17%", "-25%"],
    ["Ada's Coffee · 2 batch primero", "+9%", "+39%", "+21%", "-17%", "-50%"],
    ["BAJE · 2 sin guía", "-24%", "+22%", "+18%", "-31%", "-38%"],
    ["BAJE · 2 evaluate al final", "-13%", "+27%", "+15%", "-38%", "-44%"],
    ["BAJE · 2 batch primero", "-30%", "+23%", "+17%", "-38%", "-44%"],
], top=5.05, size=10.5, col_widths=[3.0, 1, 1.1, 1, 1, 1], row_h=0.27, width=Inches(8.2))
para(s, "Las 24 corridas pasan (Ada's Coffee 14/14; BAJE sus tests propios, 21 a 31). Calidad igual en las cuatro celdas: 0 ifs en Ada's Coffee y 8 en BAJE, hallazgos del mentor y cobertura dentro de la dispersión.", 5.05, size=11, color=GREY, left=Inches(9.0), width=Inches(3.75), height=Inches(1.8))

s = new_slide("012 · Conclusión (y la repetición limpia de 002)")
bullets(s, [
    "La cláusula no es lo que cuesta: las herramientas cuestan por sí mismas, y solo en la refactorización chica. Sin decir nada sobre ellas, +49% de entrada en Ada's Coffee y -24% en BAJE; 'evaluate al final' empeora ambas (+66%, -13%) y 'batch primero' las mejora (+9%, -30%).",
    "El signo depende de la tarea. Ada's Coffee se termina en 6 requests con evaluate: ahí pesan el schema (20 KB contra 3 KB por request) y las respuestas JSON. BAJE es greenfield: el agente de evaluate hace 15 a 18 requests escribiendo y corriendo tests, el de herramientas 8 a 13 con batches de definiciones y tests, y los requests ahorrados superan al contexto más pesado.",
    "El agente usa batch sin que se lo digan: 2 a 7 batches de 5 a 6 pasos en todas las corridas del escenario 2. La cláusula batch-first solo sube los pasos por batch (9,5). Eso es lo que redujo las brechas de 002 y 003 (+70% a +287%) a estas.",
    "La salida y el input no cacheado suben en todas las celdas con herramientas (+15 a +32% y +22 a +46%): el JSON alrededor de las fuentes, las llamadas define_class y las respuestas estructuradas. Fuera de la banda del 7% del piloto y siempre en la misma dirección.",
    "011, la repetición limpia de 002 (herramientas + evaluate al final contra evaluate, Ada's Coffee y Fórmula 1, 3 corridas): rechazada otra vez pero por menos, +52% y +26% de entrada, +10% y +19% de salida, mismos tests, ifs y cobertura. Las 12 corridas originales de 002 tenían la memoria global inyectada.",
], size=13.5)

# ================================================================ 013
s = new_slide("013 · La herramienta batch con cinco corridas por celda", "smalltalk_batch: varias llamadas en una, una línea de respuesta por paso; configuración 9-BatchFirst en las celdas con herramientas")
table(s, [
    ["Ejercicio", "Celda", "Entrada", "No cach.", "Salida", "Requests", "Entrada / req.", "Llamadas", "Operaciones", "Batches", "Pasos / batch", "Refactorizaciones", "A mano", "Segundos", "Ifs", "Mentor", "Cobertura"],
    ["Ada's Coffee", "1: solo evaluate", "81 k", "17 k", "9 k", "6", "14 k", "7", "7", "0", "-", "0", "0", "74", "0", "25", "86,7"],
    ["Ada's Coffee", "2 + batch", "87 k", "24 k", "10 k", "5", "17 k", "4", "21", "2", "9,5", "0", "4", "85", "0", "24", "88,6"],
    ["Ada's Coffee", "4 + batch", "196 k", "24 k", "10 k", "6", "33 k", "5", "26", "3", "7,3", "1", "10", "94", "0", "25", "86,7"],
    ["BAJE", "1: solo evaluate", "157 k", "24 k", "19 k", "12", "14 k", "13", "13", "0", "-", "0", "0", "157", "8", "67", "88,7"],
    ["BAJE", "2 + batch", "171 k", "32 k", "22 k", "9", "17 k", "8", "26", "3", "7,3", "0", "0", "177", "8", "61", "91,6"],
    ["BAJE", "4 + batch", "359 k", "34 k", "23 k", "11", "33 k", "10", "28", "5", "5,4", "0", "0", "195", "8", "64", "92,9"],
], top=1.75, size=10, col_widths=[1.2, 1.4, 0.8, 0.75, 0.7, 0.8, 0.95, 0.8, 1.0, 0.7, 0.9, 1.2, 0.7, 0.8, 0.45, 0.7, 0.85], row_h=0.36)
table(s, [
    ["Contra evaluate solo", "Entrada", "No cacheado", "Salida", "Requests", "Llamadas", "008 (4 corridas, dos días): entrada / salida"],
    ["Ada's Coffee · 2 + batch", "+7%", "+36%", "+17%", "-17%", "-43%", "+19% / +7%"],
    ["Ada's Coffee · 4 + batch", "+142%", "+39%", "+15%", "+0%", "-29%", "+66% / +6%"],
    ["BAJE · 2 + batch", "+9%", "+32%", "+17%", "-25%", "-38%", "+13% / +13%"],
    ["BAJE · 4 + batch", "+128%", "+42%", "+25%", "-8%", "-23%", "+64% / +5%"],
], top=4.45, size=11, col_widths=[2.6, 1, 1.1, 1, 1, 1, 3.4], row_h=0.3, width=Inches(11.1))
bullets(s, [
    "Sostenida para la estructura del modelo: con batch cuesta lo mismo que evaluate en entrada (+7%, +9%, dentro del 25% que resuelven cinco corridas), con 17 a 25% menos requests. La salida sube 17%.",
    "Rechazada para la refactorización: 2,3 a 2,4 veces la entrada con los mismos requests; es el schema de 69 KB en cada request. Casi no se usaron: un remove_instance_variable por corrida en Ada's Coffee, 9 a 13 refactorizaciones a mano.",
], top=6.12, size=11.5)

# ================================================================ 014
s = new_slide("014 · LiveTyping con cinco corridas por celda", "Base University, heurísticas inlineadas, warm-up de los tests dados; 1u = evaluate; 5 = todo + LiveTyping; 4u = todo sin LiveTyping; 6 = LiveTyping + actual scope")
table(s, [
    ["Ejercicio", "Celda", "Entrada", "No cach.", "Cache read", "Salida", "Thinking", "Requests", "Entrada / req.", "Llamadas", "Operaciones", "Batches", "Llamadas LT", "Refactorizaciones", "A mano", "Exploración", "Errores", "Segundos", "Ifs", "Mentor"],
    ["CustomerImporter", "1u", "242 k", "37 k", "206 k", "14 k", "5 k", "8", "30 k", "10", "10", "0", "0", "0", "0", "2", "1", "125", "8", "36"],
    ["CustomerImporter", "5", "492 k", "45 k", "447 k", "16 k", "8 k", "10", "48 k", "10", "28", "4", "0", "0", "6", "12", "3", "143", "8", "35"],
    ["CustomerImporter", "4u", "403 k", "43 k", "360 k", "15 k", "6 k", "9", "45 k", "10", "23", "3", "0", "0", "12", "8", "0", "132", "8", "36"],
    ["CustomerImporter", "6", "590 k", "47 k", "542 k", "17 k", "7 k", "11", "54 k", "14", "28", "2", "0", "0", "12", "12", "4", "152", "8", "37"],
    ["Lecho marino", "1u", "394 k", "41 k", "349 k", "27 k", "12 k", "13", "30 k", "14", "14", "0", "0", "0", "0", "3", "1", "247", "0", "69"],
    ["Lecho marino", "5", "597 k", "64 k", "538 k", "40 k", "18 k", "11", "56 k", "11", "52", "6", "0", "0", "10", "9", "4", "330", "0", "36"],
    ["Lecho marino", "4u", "405 k", "54 k", "352 k", "32 k", "15 k", "8", "51 k", "7", "42", "5", "0", "0", "7", "7", "0", "283", "0", "37"],
    ["Lecho marino", "6", "676 k", "60 k", "614 k", "36 k", "14 k", "11", "57 k", "13", "45", "4", "0", "1", "10", "11", "5", "312", "0", "46"],
    ["Sims Hotels", "1u", "370 k", "46 k", "324 k", "23 k", "8 k", "10", "34 k", "11", "11", "0", "0", "0", "0", "3", "0", "200", "3", "48"],
    ["Sims Hotels", "5", "728 k", "56 k", "677 k", "24 k", "9 k", "13", "58 k", "14", "36", "5", "0", "0", "11", "9", "3", "208", "3", "52"],
    ["Sims Hotels", "4u", "586 k", "52 k", "536 k", "22 k", "8 k", "11", "53 k", "12", "29", "6", "0", "0", "11", "6", "0", "180", "3", "54"],
    ["Sims Hotels", "6", "731 k", "55 k", "676 k", "22 k", "8 k", "12", "58 k", "13", "30", "5", "0", "1", "11", "8", "0", "210", "3", "52"],
], top=1.75, size=10, col_widths=[1.5, 0.55, 0.8, 0.75, 0.9, 0.7, 0.8, 0.8, 0.95, 0.8, 1.0, 0.7, 0.95, 1.25, 0.7, 0.95, 0.7, 0.8, 0.45, 0.65], row_h=0.31)
para(s, "Medianas de cinco corridas; las 60 corridas pasan los tests dados. LT = llamadas a herramientas de LiveTyping; exploración = lecturas antes del primer cambio; a mano = refactorizaciones hechas con define y delete.", 6.45, size=11, color=GREY, height=Inches(0.6))

s = new_slide("014 · LiveTyping contra su control, y la conclusión")
table(s, [
    ["Ejercicio", "Comparación", "Entrada", "No cacheado", "Salida", "Requests", "Llamadas"],
    ["CustomerImporter", "5 vs 1u", "+103%", "+22%", "+17%", "+25%", "+0%"],
    ["CustomerImporter", "6 vs 4u", "+46%", "+10%", "+17%", "+22%", "+40%"],
    ["CustomerImporter", "4u vs 1u", "+66%", "+16%", "+5%", "+12%", "+0%"],
    ["Lecho marino", "5 vs 1u", "+52%", "+57%", "+48%", "-15%", "-21%"],
    ["Lecho marino", "6 vs 4u", "+67%", "+13%", "+13%", "+38%", "+86%"],
    ["Lecho marino", "4u vs 1u", "+3%", "+32%", "+19%", "-38%", "-50%"],
    ["Sims Hotels", "5 vs 1u", "+97%", "+22%", "+2%", "+30%", "+27%"],
    ["Sims Hotels", "6 vs 4u", "+25%", "+5%", "+1%", "+9%", "+8%"],
    ["Sims Hotels", "4u vs 1u", "+58%", "+14%", "-5%", "+10%", "+9%"],
], top=1.5, size=11.5, col_widths=[1.8, 1.3, 1, 1.2, 1, 1, 1], row_h=0.32, width=Inches(8.3))
para(s, "Pasos de batch con prefijo mcp__Cuis__ rechazados por el servidor:\ncelda 1u: 0\ncelda 4u: 0\ncelda 5: 42 en 15 corridas\ncelda 6: 81 en 15 corridas (hasta 25 en una)", 1.5, size=12, left=Inches(9.2), width=Inches(3.5), height=Inches(1.8))
bullets(s, [
    "Rechazada en las seis comparaciones, con cinco corridas del mismo día: 1,5 a 2,0 veces la entrada contra solo evaluate y 1,3 a 1,7 veces contra las mismas herramientas sin LiveTyping, todo fuera del 25% que resuelven cinco corridas. Corrección y diseño iguales: los mismos ifs por ejercicio (8, 0, 3), los 60 con tests en verde.",
    "Las herramientas de LiveTyping no se llamaron: tres pedidos en 30 corridas (un actual_implementors_of que corrió, dos rechazados por el prefijo), ningún types_of_*, ninguna refactorización en actual scope. El agente exploró lo mismo que su control y refactorizó a mano (6 a 18 por corrida). Los tokens extra compran el schema de 62 a 68 KB en cada request.",
    "Un factor de confusión a registrar: solo en las celdas LiveTyping el agente nombró pasos de batch con el prefijo del cliente, y cada rechazo es un request reintentado. Hay que aceptarlos del lado del servidor antes de repetir esta comparación.",
    "Las herramientas sin LiveTyping (4u vs 1u) confirman 012 y 013: +66% y +58% en las dos refactorizaciones, +3% en la implementación, donde ahorran requests.",
], top=4.8, size=11.5)

# ================================================================ 015
s = new_slide("015 · Refactorizar con las herramientas, y en batch", "1 = evaluate sin guía; 4b = refactorizaciones + batch primero; 4r = refactorizaciones primero + batch primero; 5 corridas por celda")
table(s, [
    ["Ejercicio", "Celda", "Entrada", "No cach.", "Salida", "Requests", "Entrada / req.", "Llamadas", "Operaciones", "Batches", "Pasos / batch", "Refactorizaciones", "Fallidas", "A mano", "Segundos", "Ifs", "Mentor", "Cobertura"],
    ["Ada's Coffee", "1", "93 k", "17 k", "9 k", "7", "14 k", "8", "8", "0", "-", "0", "0", "0", "76", "0", "20", "88,9"],
    ["Ada's Coffee", "4b", "195 k", "25 k", "10 k", "6", "33 k", "5", "27", "4", "6,8", "1", "0", "5", "93", "0", "20", "88,6"],
    ["Ada's Coffee", "4r", "394 k", "31 k", "14 k", "11", "37 k", "10", "36", "7", "4,4", "4", "1", "4", "139", "0", "22", "88,6"],
    ["Fórmula 1", "1", "354 k", "40 k", "23 k", "13", "28 k", "14", "14", "0", "-", "0", "0", "0", "199", "5", "52", "95,7"],
    ["Fórmula 1", "4b", "559 k", "54 k", "29 k", "11", "51 k", "10", "38", "6", "5,8", "0", "0", "8", "237", "5", "46", "96,4"],
    ["Fórmula 1", "4r", "1.015 k", "69 k", "30 k", "17", "59 k", "14", "67", "14", "4,9", "22", "2", "8", "263", "5", "49", "96,4"],
], top=1.75, size=10, col_widths=[1.2, 0.55, 0.85, 0.75, 0.7, 0.8, 0.95, 0.8, 1.0, 0.7, 0.9, 1.25, 0.75, 0.7, 0.8, 0.45, 0.7, 0.85], row_h=0.36)
table(s, [
    ["Contra evaluate solo", "Entrada", "No cacheado", "Salida", "Requests", "Llamadas"],
    ["Ada's Coffee · 4b", "+110%", "+44%", "+20%", "-14%", "-38%"],
    ["Ada's Coffee · 4r", "+324%", "+83%", "+65%", "+57%", "+25%"],
    ["Fórmula 1 · 4b", "+58%", "+38%", "+25%", "-15%", "-29%"],
    ["Fórmula 1 · 4r", "+187%", "+75%", "+32%", "+31%", "+0%"],
], top=4.3, size=11, col_widths=[2.4, 1, 1.1, 1, 1, 1], row_h=0.3, width=Inches(7.6))
para(s, "Refactorizaciones por corrida en 4r: Ada's Coffee 4, 3, 5, 4, 13; Fórmula 1 22, 11, 14, 24, 33 (rename, extract, inline, push up/down, remove parameter, extract from similar code). Fallidas 0 a 5 por corrida.", 4.3, size=11, color=GREY, left=Inches(8.4), width=Inches(4.35), height=Inches(1.6))
bullets(s, [
    "La cláusula hace que las herramientas se usen, y usarlas cuesta: 2,0 y 1,8 veces la entrada de la celda sin la cláusula, 4,2 y 2,9 veces evaluate, salida +65% y +32%. El batch no las absorbe: cada resultado se lee antes de elegir la refactorización siguiente.",
    "El diseño no se movió: 0 y 5 ifs en las 30 corridas, cobertura a 1 punto, hallazgos a 6. Una falla se repite en 9 de 10 corridas: extract_method_from_similar_code rechaza el selector por aridad; ese contrato hay que arreglarlo o describirlo mejor.",
], top=5.95, size=11.5)

# ================================================================ 016
s = new_slide("016 · Cuis por MCP, Java y Cuis por scripts", "Los mismos tres ejercicios, sin guía, 5 corridas por celda el mismo día; reemplaza a 006 y 009 (una corrida por celda, días distintos)")
table(s, [
    ["Ejercicio", "Celda", "Entrada", "No cach.", "Cache read", "Salida", "Thinking", "Requests", "Entrada / req.", "Llamadas", "Errores", "Segundos", "Entrada mín / máx", "CV %"],
    ["CustomerImporter", "Cuis MCP", "192 k", "27 k", "164 k", "11 k", "3 k", "8", "23 k", "9", "1", "104", "110 / 217 k", "29"],
    ["CustomerImporter", "Java", "183 k", "32 k", "151 k", "11 k", "4 k", "7", "26 k", "6", "0", "94", "151 / 220 k", "16"],
    ["CustomerImporter", "Scripts Cuis", "190 k", "31 k", "158 k", "11 k", "4 k", "8", "22 k", "7", "1", "118", "153 / 198 k", "13"],
    ["Lecho marino", "Cuis MCP", "189 k", "31 k", "154 k", "22 k", "8 k", "9", "20 k", "10", "0", "194", "152 / 223 k", "14"],
    ["Lecho marino", "Java", "183 k", "32 k", "152 k", "20 k", "6 k", "8", "24 k", "7", "0", "167", "138 / 230 k", "19"],
    ["Lecho marino", "Scripts Cuis", "230 k", "38 k", "193 k", "26 k", "10 k", "9", "26 k", "8", "0", "256", "162 / 507 k", "50"],
    ["Sims Hotels", "Cuis MCP", "319 k", "38 k", "286 k", "19 k", "7 k", "11", "30 k", "13", "0", "154", "268 / 396 k", "15"],
    ["Sims Hotels", "Java", "249 k", "38 k", "214 k", "16 k", "4 k", "9", "30 k", "8", "0", "131", "209 / 300 k", "16"],
    ["Sims Hotels", "Scripts Cuis", "254 k", "45 k", "210 k", "23 k", "8 k", "9", "31 k", "9", "0", "202", "196 / 468 k", "39"],
], top=1.75, size=10.5, col_widths=[1.5, 1.2, 0.85, 0.8, 0.9, 0.7, 0.8, 0.8, 1.0, 0.8, 0.7, 0.8, 1.3, 0.6], row_h=0.31)
table(s, [
    ["Contra Cuis MCP", "Entrada", "No cacheado", "Salida", "Requests", "Llamadas", "Segundos"],
    ["CustomerImporter: Java / scripts", "-5% / -1%", "+19% / +16%", "+2% / +7%", "-12% / +0%", "-33% / -22%", "-10% / +13%"],
    ["Lecho marino: Java / scripts", "-3% / +22%", "+3% / +20%", "-7% / +17%", "-11% / +0%", "-30% / -20%", "-14% / +32%"],
    ["Sims Hotels: Java / scripts", "-22% / -20%", "+1% / +19%", "-15% / +19%", "-18% / -18%", "-38% / -31%", "-15% / +31%"],
], top=5.0, size=10.5, col_widths=[3.4, 1.3, 1.4, 1.3, 1.3, 1.4, 1.4], row_h=0.27, width=Inches(11.5))
bullets(s, [
    "Los tres entornos cuestan lo mismo en entrada dentro de lo que resuelven cinco corridas, salvo Sims Hotels donde Java queda 22% abajo. Las 45 corridas pasan. 006 (Java más barato) fue el día caro; 009 (scripts +15 a +62%) fueron tres extracciones altas de una celda ancha (CV 39 a 50%).",
    "Lo que sobrevive es la salida: una definición dentro de un string de compile: cuesta 7 a 19% más que como argumento de herramienta o archivo Java, y cada script inicia y graba una imagen (+13 a +32% de tiempo). Java trabaja casi solo con Bash (5 a 9 llamadas).",
], top=6.18, size=11)

# ================================================================ 017 / 018
s = new_slide("017 · Nombres crípticos con el dominio oculto", "Original vs gemelo nivel 2 (nombres y literales codificados) vs nivel 3 (además se enmascaran en el enunciado las palabras de los nombres); escenario 4, configuración 2+8, 3 corridas")
table(s, [
    ["Ejercicio", "Nombres", "Entrada", "No cach.", "Salida", "Requests", "Llamadas", "Exploración", "Renames", "A mano", "Segundos", "Ifs", "Mentor", "Cobertura", "Crípticos que quedan", "Originales recuperados"],
    ["RobotWars", "original", "331 k", "35 k", "16 k", "8", "7", "9", "0", "6", "133", "6", "20", "99,1", "-", "-"],
    ["RobotWars", "nivel 2", "425 k", "46 k", "22 k", "10", "10", "11", "0", "5", "210", "8", "19", "97,9", "0", "16"],
    ["RobotWars", "nivel 3", "443 k", "38 k", "21 k", "11", "10", "7", "0", "6", "184", "6", "14", "94,4", "55", "0"],
    ["Fórmula 1", "original", "761 k", "60 k", "31 k", "13", "12", "8", "0", "7", "253", "5", "52", "96,5", "-", "-"],
    ["Fórmula 1", "nivel 2", "546 k", "62 k", "36 k", "10", "11", "8", "0", "4", "302", "4", "41", "97,5", "33", "7"],
    ["Fórmula 1", "nivel 3", "682 k", "63 k", "34 k", "12", "12", "8", "9", "4", "297", "5", "31", "96,9", "41", "4"],
    ["Mochila", "original", "404 k", "37 k", "12 k", "9", "9", "6", "0", "4", "101", "7", "46", "78,8", "-", "-"],
    ["Mochila", "nivel 2", "269 k", "31 k", "13 k", "7", "7", "4", "0", "10", "127", "7", "32", "77,7", "111", "1"],
    ["Mochila", "nivel 3", "319 k", "31 k", "12 k", "8", "9", "6", "0", "12", "117", "7", "33", "76,3", "115", "1"],
], top=1.85, size=10.5, col_widths=[1.2, 0.9, 0.8, 0.75, 0.7, 0.8, 0.8, 0.95, 0.8, 0.7, 0.8, 0.45, 0.7, 0.85, 1.2, 1.3], row_h=0.31)
table(s, [
    ["Contra el original", "Entrada", "No cacheado", "Salida", "Requests", "Segundos"],
    ["RobotWars: nivel 2 / nivel 3", "+28% / +34%", "+31% / +7%", "+34% / +26%", "+25% / +38%", "+58% / +38%"],
    ["Fórmula 1: nivel 2 / nivel 3", "-28% / -10%", "+2% / +4%", "+14% / +10%", "-23% / -8%", "+19% / +17%"],
    ["Mochila: nivel 2 / nivel 3", "-33% / -21%", "-17% / -15%", "+12% / +6%", "-22% / -11%", "+26% / +16%"],
], top=5.1, size=10.5, col_widths=[3.2, 1.4, 1.4, 1.4, 1.4, 1.4], row_h=0.27, width=Inches(10.2))
bullets(s, [
    "Ocultar el dominio no encareció los gemelos: solo RobotWars, el más chico, cuesta más con nombres crípticos, y el nivel 3 cuesta lo que el nivel 2. Mismos tests e ifs.",
    "Hoy el agente casi no renombró (en la Mochila dejó 92 a 99 de 130 selectores crípticos, 0 llamadas rename), al revés que en 007: renombrar es una elección inestable. El enmascarado resistió en RobotWars en dos corridas de tres.",
], top=6.28, size=11)

s = new_slide("018 · Nombres crípticos con renombrar prohibido", "Configuración 10-NoRenames sobre originales y gemelos de nivel 2; controles = las celdas de 017 de la hora anterior, mismas imágenes y configuración")
table(s, [
    ["Ejercicio", "Nombres", "Cláusula", "Entrada", "No cach.", "Salida", "Thinking", "Requests", "Llamadas", "Exploración", "Renames", "A mano", "Segundos", "Ifs", "Mentor", "Cobertura", "Crípticos que quedan"],
    ["RobotWars", "original", "libre (017)", "331 k", "35 k", "16 k", "7 k", "8", "7", "9", "0", "6", "133", "6", "20", "99,1", "-"],
    ["RobotWars", "original", "sin renames", "287 k", "35 k", "16 k", "8 k", "7", "7", "10", "0", "5", "138", "6", "19", "94,2", "-"],
    ["RobotWars", "nivel 2", "libre (017)", "425 k", "46 k", "22 k", "11 k", "10", "10", "11", "0", "5", "210", "8", "19", "97,9", "0"],
    ["RobotWars", "nivel 2", "sin renames", "341 k", "37 k", "20 k", "11 k", "8", "8", "7", "0", "6", "178", "6", "18", "94,7", "53"],
    ["Fórmula 1", "original", "libre (017)", "761 k", "60 k", "31 k", "15 k", "13", "12", "8", "0", "7", "253", "5", "52", "96,5", "-"],
    ["Fórmula 1", "original", "sin renames", "867 k", "62 k", "34 k", "17 k", "14", "13", "8", "0", "13", "275", "5", "49", "94,3", "-"],
    ["Fórmula 1", "nivel 2", "libre (017)", "546 k", "62 k", "36 k", "20 k", "10", "11", "8", "0", "4", "302", "4", "41", "97,5", "33"],
    ["Fórmula 1", "nivel 2", "sin renames", "662 k", "55 k", "30 k", "17 k", "12", "11", "7", "0", "11", "261", "4", "37", "95,6", "81"],
    ["Mochila", "original", "libre (017)", "404 k", "37 k", "12 k", "4 k", "9", "9", "6", "0", "4", "101", "7", "46", "78,8", "-"],
    ["Mochila", "original", "sin renames", "301 k", "37 k", "12 k", "6 k", "7", "7", "5", "0", "3", "108", "7", "46", "77,4", "-"],
    ["Mochila", "nivel 2", "libre (017)", "269 k", "31 k", "13 k", "7 k", "7", "7", "4", "0", "10", "127", "7", "32", "77,7", "111"],
    ["Mochila", "nivel 2", "sin renames", "349 k", "30 k", "12 k", "6 k", "9", "10", "4", "0", "11", "111", "7", "34", "78,2", "117"],
], top=1.85, size=10, col_widths=[1.2, 0.9, 1.3, 0.8, 0.75, 0.7, 0.8, 0.8, 0.8, 0.95, 0.8, 0.7, 0.8, 0.45, 0.7, 0.85, 1.3], row_h=0.29)
bullets(s, [
    "No sostenida: obligado a conservar los nombres crípticos, el agente refactorizó los gemelos por los mismos tokens y al mismo diseño que los originales. Bajo la cláusula, nivel 2 contra original: +19%, -24% y +16% de entrada, +23%, -10% y 0% de salida, los mismos ifs, hallazgos y cobertura. La cláusula se cumplió: ningún rename en 18 corridas.",
    "La cláusula misma mueve poco el costo y sin dirección (-13%, +14%, -25% en originales; -20%, +21%, +30% en gemelos). Juntando 007, 017 y 018: los nombres crípticos cuestan solo en el ejercicio más chico (+20 a +35%); el agente refactoriza estructura sin necesitar los nombres, y cuando renombra, ahí van los tokens extra.",
], top=5.75, size=11.5)

# ================================================================ 004
s = new_slide("004 · TDD y refactorizaciones (11-09, sin repetir)", "Heurísticas inlineadas en todas las celdas; MineField y Aterrizar.com (greenfield); una corrida por celda: es la evidencia más débil de la presentación")
table(s, [
    ["Ejercicio", "Celda", "Entrada", "No cach.", "Salida", "Thinking", "Requests", "Llamadas", "Corridas de tests", "Refactorizaciones / fallidas", "A mano", "Tests propios", "Ifs", "Mentor por método", "Test smells", "Cobertura"],
    ["MineField", "A  3, tdd", "9.430 k", "115 k", "69 k", "36 k", "158", "176", "73", "0 / 0", "14", "39", "9", "0,75", "11", "99,6"],
    ["MineField", "B  4, tdd", "7.782 k", "138 k", "80 k", "44 k", "105", "174", "49", "0 / 0", "27", "43", "8", "0,77", "3", "99,1"],
    ["MineField", "C  4+herr., tdd", "14.970 k", "150 k", "103 k", "61 k", "156", "237", "81", "36 / 3", "14", "40", "8", "0,67", "15", "99,5"],
    ["MineField", "D  4+herr., test-after", "579 k", "67 k", "53 k", "33 k", "11", "29", "1", "0 / 0", "3", "54", "11", "1,26", "5", "97,4"],
    ["MineField", "E  4+herr., free", "780 k", "78 k", "62 k", "41 k", "13", "26", "1", "0 / 0", "3", "60", "10", "0,86", "0", "95,8"],
    ["Aterrizar", "A  3, tdd", "6.003 k", "118 k", "72 k", "41 k", "82", "123", "33", "0 / 0", "21", "14", "0", "0,56", "3", "98,1"],
    ["Aterrizar", "B  4, tdd", "8.857 k", "123 k", "75 k", "44 k", "114", "165", "49", "7 / 0", "18", "19", "0", "0,66", "3", "100,0"],
    ["Aterrizar", "C  4+herr., tdd", "6.826 k", "107 k", "69 k", "41 k", "87", "123", "32", "11 / 0", "8", "14", "0", "0,65", "5", "96,6"],
    ["Aterrizar", "D  4+herr., test-after", "875 k", "67 k", "45 k", "23 k", "17", "49", "2", "0 / 0", "0", "23", "1", "0,59", "2", "98,2"],
    ["Aterrizar", "E  4+herr., free", "958 k", "85 k", "61 k", "36 k", "17", "50", "4", "1 / 0", "1", "19", "1", "0,64", "10", "99,9"],
], top=1.85, size=10.5, col_widths=[1.1, 1.9, 1.0, 0.8, 0.7, 0.8, 0.8, 0.8, 1.0, 1.5, 0.7, 0.9, 0.45, 1.1, 0.8, 0.85], row_h=0.31)
bullets(s, [
    "TDD al pie de la letra cuesta 8 a 25 veces la entrada de test-after y 1,3 a 2 veces la salida: 32 a 81 corridas de tests contra 1 o 2, cada una un request que relee el contexto. Una diferencia de ese tamaño está muy por encima de la dispersión del piloto aun con una corrida.",
    "El diseño no separa las técnicas: MineField con TDD deja algo menos de ifs y hallazgos por método pero más test smells; las tres celdas de Aterrizar son indistinguibles. Eso sí necesita repeticiones: son diferencias chicas medidas una vez, en un día distinto.",
    "Las refactorizaciones con TDD (C contra A) costaron 1,6x y 1,1x de entrada; 015 lo confirma con cinco corridas y sin TDD.",
], top=5.6, size=11.5)

# ================================================================ síntesis
s = new_slide("Qué dice el estudio hoy", "246 corridas en un día, todas con los tests en verde")
bullets(s, [
    "Ningún conjunto de herramientas le gana a evaluate en tokens. Las de estructura del modelo con batch llegan a la paridad (+7%, +9%) y ahorran en greenfield (-13 a -30%), donde el agente de evaluate hace más requests. Siempre escriben más salida (+15 a +32%).",
    "Las de refactorización cuestan por su schema cuando no se usan (2,3x) y por sus llamadas cuando se usan (3 a 4x), sin ganancia de diseño medible en estos ejercicios. Se usan solo si la guía lo pide.",
    "La información de LiveTyping no se consume ni cuando se la pide: 3 llamadas en 30 corridas, 1,3 a 2,0x el costo.",
    "El lenguaje y el entorno empatan en entrada con cinco corridas: Cuis por MCP, Java por archivos y Cuis por scripts. Los scripts escriben más y tardan más.",
    "Los nombres crípticos cuestan solo en el ejercicio más chico; con el dominio oculto o con renombrar prohibido el costo y el diseño son los mismos.",
    "La técnica domina el costo más que las herramientas: TDD literal es un orden de magnitud en entrada (004, a repetir).",
    "Método: dentro de un día la dispersión es chica (CV 18% entrada, 7% salida) y entre días es de 3 a 5x. Controles del mismo día siempre; cinco corridas resuelven ~25%; la salida es la medida estable.",
], size=14)

s = new_slide("Pendientes")
bullets(s, [
    "Servidor: aceptar pasos de batch con el prefijo mcp__Cuis__ (123 rechazos en 30 corridas, solo en las celdas LiveTyping); revisar el contrato o la descripción de extract_method_from_similar_code (falla por aridad del selector en 9 de 10 corridas); respuestas de batch más breves y lecturas con forma de código para bajar la salida y el input no cacheado; un schema de refactorización más chico.",
    "Repetir 004 con cinco corridas del mismo día: es la única conclusión vigente apoyada en una corrida por celda, y la de diseño es la que más lo necesita.",
    "Del diseño de investigación siguen sin probar: guía sí / no sobre greenfield (E1), smells plantados con y sin heurísticas (E2), corridas de tarea vacía por nivel de herramientas (E3), horizonte largo (E5), ubicación de la guía: skill contra CLAUDE.md contra checklist (E6), ancla humana (E7), validez del juez (E8), el escenario 7-Debug y el modelo como factor.",
    "Medidas de diseño: los hallazgos de layout del mentor dominan algunos conteos; falta la medida sin layout y una rúbrica humana a ciegas. Java no tiene mentor ni AST.",
    "Dónde podrían pagar todavía las herramientas granulares: sistemas grandes donde leer por evaluate volcaría demasiado, y cambios donde la seguridad de una refactorización importe más que sus tokens. Ningún ejercicio actual es lo bastante grande para mostrarlo.",
    "Disco: 15 GB libres después de las 246 corridas (40 a 70 MB cada una).",
], size=13.5)

s = new_slide("Dónde está todo")
bullets(s, [
    "experiments/README.md: el índice, una fila por experimento (000 a 018) con su pregunta, fechas y resultado.",
    "experiments/NNN-Descripción/README.md: hipótesis, diseño, tablas de resultados, conclusión, salvedades; table.md y results.json se reconstruyen con scripts/matrix-table.py; la dispersión por celda con scripts/cell-spread.py.",
    "experiments/NNN/cells/<escenario>_<config>_<técnica>/<ejercicio>/<id-de-corrida>/: prompt.md, CLAUDE.md, .mcp.json, claude-stream.jsonl, claude-transcript.jsonl, mcp-calls.jsonl, warm-up.txt, output/<Paquete>.pck.st, la imagen grabada, manifest.json, analysis.json.",
    "Los experimentos 002, 003, 005, 006, 007, 008 y 009 siguen en el repositorio con sus README; esta presentación no los muestra porque 011 a 018 los repiten con controles del mismo día y más corridas.",
    "scripts/README.md: cómo construir imágenes, correr celdas (Cuis, Java, scripts), hacer gemelos crípticos (niveles 2 y 3), analizar corridas y correr matrices.",
    "research-design.md: el marco del estudio (capas, preguntas, hipótesis H1 a H5, variables, experimentos E0 a E8).",
], size=14.5)

prs.save(OUT)
print("guardado", OUT, "slides", len(prs.slides))
