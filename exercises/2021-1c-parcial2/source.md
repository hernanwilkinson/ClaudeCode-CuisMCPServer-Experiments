# Source

- Original directory: `2021-1c/2doParcial/` in `/Users/hernan/Documents/IngSoft1-Repos/parciales`.
- Statement: `ISW1-2021-1C-Parcial-2-Enunciado de Truco.pdf` (copied as `spec-original.pdf`). Only PDF in the directory.
- `starting/ISW1-2021-1C-2doParcial.st`: the initial code the student receives (no "Resolucion" in the name; it defines only `CartaDeTruco` and `CartaDeTrucoTest` in category `ISW1-2021-1C-2doParcial`, i.e. the card model the statement says is already developed).
- `solution/` holds the four solution files (all named "Resolucion"), which are alternative designs of the same round:
  - `ISW1-2021-1C-2doParcial-Resolucion.st`: reifies the confrontation (`EnfrentamientoDeTruco` hierarchy) and its state (`EstadoDeEnfrentamiento`: `EmpiezaMano`, `EmpiezaPie`, `JuegaMano`, `JuegaPie`, `EnfrentamientoTerminado`) plus `RondaDeTrucoTerminada`.
  - `ISW1-2021-1C-2doParcial-Resolucion-SoloReificandoRondaDeTruco.st`: only reifies `RondaDeTruco`.
  - `ISW1-2021-1C-2doParcial-Resolucion-ConRondaDeTrucoYJugador.st`: `RondaDeTruco` plus `JugadorDeTruco`.
  - `ISW1-2021-1C-2doParcial-Resolucion-ConRondaDeTrucoyTurno.st`: `RondaDeTruco` plus a `Turno` state hierarchy (`ComienzaMano`, `ComienzaPie`, `TerminaMano`, `TerminaPie`, `RondaFinalizada`).
- No Readme and no video link in this directory.
- Removed from the statement: the "rules and norms for the remote exam" page, the "questions during the exam" and "bathroom breaks" sections with the spreadsheet link, and the "Delivery" section (category/file naming, .user.changes, email subject, confirmation before leaving Zoom).

- `starting/ISW1-2021-1C-2doParcial.st` was ISO-8859-1 encoded; it was re-encoded as UTF-8 so Cuis 7.9 files it in correctly. The verbatim copy is `starting/original/ISW1-2021-1C-2doParcial.st`.
