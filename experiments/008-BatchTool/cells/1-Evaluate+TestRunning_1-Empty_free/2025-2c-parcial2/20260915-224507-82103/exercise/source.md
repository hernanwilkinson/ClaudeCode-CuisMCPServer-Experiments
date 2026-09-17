# Source

- Original directory: `2025-2c/2doParcial/` in `/Users/hernan/Documents/IngSoft1-Repos/parciales`.
- Statement: `2025-2C-2doParcial-Práctica.pdf` (copied as `spec-original.pdf`). `2025-2C-2doParcial-Teórica.pdf` is the theory exam and was skipped.
- `starting/2025-2C-2doParcial-Original.st`: the initial code the statement tells the student to file in. It only defines an empty `ISWMetropolitanoTest` class (no methods) in category `2025-2C-2doParcial`, followed by the course's `Feature require: 'WebClient'` instrumentation preamble (patches to `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn`, then `Smalltalk saveImage`); copied verbatim.
- `solution/2025-2C-2doParcial-Solucion.st`: the reference solution (`LectorDeTarjeta`, `LectorDeSubte`, `LectorDeTren`, `WrapperDeLectorDeTarjeta`, `MedioDeTransporte`, `Parada`, `Tarifa`, `TarjetaBAJE`, `TipoDeDescuento` with `SinDescuento`/`DescuentoEstudiantil`/`DescuentoParaJubilado`, `Viaje`, and `ISWMetropolitanoTest`).
- `solution/2025-2C-2doParcial-SolucionDelVideo.st`: the solution as developed in the recorded video (same classes).
- `solution/Video.txt`: copied verbatim. Translated text:
  - "Video link: https://youtu.be/7jSwQvG6sxI"
  - "Comments:"
  - "- The video solution is missing the check that the transfer does not apply on top of a discount"
  - "- The solution charges the train exit wrongly for a retiree on the second trip (a very particular case)"
- Removed from the statement: the "before reading the statement" box (file in / save image / file out / initial submission form), and the whole "Entrega" section (file names, user changes file, clean-image check, submission form, autosave recommendation, deadline).

- `starting/2025-2C-2doParcial-Original.st` had the course's exam-control instrumentation appended (a `Feature require: 'WebClient'`, patches to `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn`, and a `Smalltalk saveImage`). That block was removed so the file can be filed into a run image; the verbatim copy is `starting/original/2025-2C-2doParcial-Original.st`.
