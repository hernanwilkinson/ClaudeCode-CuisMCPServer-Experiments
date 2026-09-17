# Source

- Original directory: `2019-1c/` in the parciales repository (the subdirectory `2019/` only duplicates three statement txt files and was ignored).
- Statement: `2019-1c/2doParcial-Enunciado.txt` (Spanish plain text). Copied as `spec-original.txt`.
- starting/: none. The statement asks to implement the model from scratch with TDD.
- solution/:
  - `2doParcial-SolucionDeVideo.st` — the solution developed in the resolution video (category `Calendar`: `CalendarTest`, `Calendar` with `IndividualCalendar`/`TeamCalendar`, `CalendarEvent` with `OneTimeEvent`/`RepeatedEvent`, `CalendarSpotFinder`).
  - `2doParcial-SolucionConMasTests.st` — the same design with more tests (`FixedEvent`/`RepeatedEvent`, `CalendarSpotFinder`, plus a `TimeSpot` class).
- Video link found in the statement (verbatim): "Resolucion: https://www.youtube.com/watch?v=iny2nT3Q8fc" — "Resolution: <link>".
- Removed from the statement: the "Resolucion:" YouTube link line at the top.
- Note: the statement text in the original says "if there is no spot on 10/3/2019 at 17 hrs it must search ... at 16 hrs and so on until 17 hrs"; the translation renders the evident intent (start at 15 hrs, then 16, up to 17).
