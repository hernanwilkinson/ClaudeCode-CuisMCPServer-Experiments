# Source

- Original directory: `2021-1c/Recuperatorio/` in `/Users/hernan/Documents/IngSoft1-Repos/parciales`.
- Statement: `ISW1-2021-1C-Recuperatorio-Enunciado de Truco.pdf` (copied as `spec-original.pdf`). Only PDF in the directory. It is a single make-up exam covering the truco domain of the second midterm (second iteration: envido and several rounds).
- The statement says the student must start from "one of the solutions of the previous iteration (midterm) provided by the course staff and attached to the email". The three files without "Solucion" in the name are exactly those: after normalizing the category name they are byte-identical to three of the second-midterm solutions, so they went to `starting/` as the alternative initial codes:
  - `starting/ISW1-2021-1C-Recuperatorio-SoloConRonda.st` = `2doParcial/ISW1-2021-1C-2doParcial-Resolucion-SoloReificandoRondaDeTruco.st` (category `ISW1-2021-1C-Recuperatorio-SoloConRonda`).
  - `starting/ISW1-2021-1C-Recuperatorio-ConRondaYJugador.st` = `2doParcial/ISW1-2021-1C-2doParcial-Resolucion-ConRondaDeTrucoYJugador.st` (category `ISW1-2021-1C-Recuperatorio-ConRondaYJugador`).
  - `starting/ISW1-2021-1C-Recuperatorio-ConEnfrentamientoYEstado.st` = `2doParcial/ISW1-2021-1C-2doParcial-Resolucion.st` (category `ISW1-2021-1C-Recuperatorio-ConEnfrentamientoYEstado`).
  They are alternatives, not to be loaded together (they define the same class names in different categories). `exercise.json` lists only `ConRondaYJugador`, the one the official solution is built on.
- `solution/ISW1-2021-1C-Recuperatorio-ConRondaYJugador-Solucion.st`: the solution (name contains "Solucion"; extends the ConRondaYJugador starting code with envido and a `Truco` class that plays rounds up to 30 points).
- No Readme and no video link in this directory.
- Removed from the statement: the "rules and norms for the remote exam" page, the "questions during the make-up exam" and "bathroom breaks" sections with the spreadsheet link, and the "Delivery" section (category/file naming, .user.changes, email subject, confirmation before leaving Zoom).

- `starting/ISW1-2021-1C-Recuperatorio-ConEnfrentamientoYEstado.st` was ISO-8859-1 encoded; it was re-encoded as UTF-8 so Cuis 7.9 files it in correctly. The verbatim copy is `starting/original/ISW1-2021-1C-Recuperatorio-ConEnfrentamientoYEstado.st`.

- `starting/ISW1-2021-1C-Recuperatorio-ConRondaYJugador.st` was ISO-8859-1 encoded; it was re-encoded as UTF-8 so Cuis 7.9 files it in correctly. The verbatim copy is `starting/original/ISW1-2021-1C-Recuperatorio-ConRondaYJugador.st`.

- `starting/ISW1-2021-1C-Recuperatorio-SoloConRonda.st` was ISO-8859-1 encoded; it was re-encoded as UTF-8 so Cuis 7.9 files it in correctly. The verbatim copy is `starting/original/ISW1-2021-1C-Recuperatorio-SoloConRonda.st`.
