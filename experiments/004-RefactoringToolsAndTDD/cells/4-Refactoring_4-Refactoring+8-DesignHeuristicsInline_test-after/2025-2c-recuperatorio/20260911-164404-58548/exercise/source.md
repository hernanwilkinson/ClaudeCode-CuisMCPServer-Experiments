# Source

- Original directory: `2025-2c/Recu/` in `/Users/hernan/Documents/IngSoft1-Repos/parciales`.
- Statement: `2025-2C-Recuperatorio-Práctica.pdf` (copied as `spec-original.pdf`). It is a single make-up exam covering one problem (Aterrizar.com), not split into first/second midterm parts, so there is one exercise.
- `starting/2025-2C-Recuperatorio-Original.st`: the initial code the statement tells the student to file in. It defines `TodasLasCombinacionesTest` (5 tests) and two extension methods on `SequenceableCollection` (`todasLasCombinaciones` and its helper `recolectar:en:conTramosRestantesDe:`) in category `*2025-2C-Recuperatorio`, followed by the course's `Feature require: 'WebClient'` instrumentation preamble (patches to `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn`, then `Smalltalk saveImage`); copied verbatim.
- `solution/2025-2c-Recuperatorio-Solucion.st`: the reference solution (`BuscadorDeVuelos`, flight definition, `Descuento`, `TipoDeDescuento` with `DescuentoPorFecha`/`DescuentoPorTramo`, `OpcionesDeTramo`, `Vuelo`, `VueloDeIda`, `VueloMultitramos`, `AterrizarComTest`, plus `TodasLasCombinacionesTest`).
- `solution/2025-2c-Recu-Video.st`: the solution as developed in the recorded video (same model, without `TodasLasCombinacionesTest`).
- `solution/Video.txt`: copied verbatim. Translated text: "Video link: https://youtu.be/QndxgGy0kPQ".
- Removed from the statement: the "before reading the statement" box (file in / save image / file out / initial submission form), and the whole "Entrega" section (file names, user changes file, clean-image check, submission form, autosave recommendation, deadline).

- `starting/2025-2C-Recuperatorio-Original.st` had the course's exam-control instrumentation appended (a `Feature require: 'WebClient'`, patches to `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn`, and a `Smalltalk saveImage`). That block was removed so the file can be filed into a run image; the verbatim copy is `starting/original/2025-2C-Recuperatorio-Original.st`.
