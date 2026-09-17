# Source

- Original directory: `2021-2c/1erParcial/` in `/Users/hernan/Documents/IngSoft1-Repos/parciales`.
- Statement: `ISW1-2021-2C-Parcial-1-Enunciado.pdf` (copied as `spec-original.pdf`). It is the only PDF; there is no "Práctica"/"Teórica" split.
- `starting/ISW1-2021-2C-1erParcial.st`: the initial code the student receives (name ends in "1erParcial", no "Solution"; category `ISW1-2021-2C-1erParcial`). It defines `CityTest`, `City`, `Service` and `Zone`, where zones and services are distinguished by a type symbol (`#Residential`, `#Commertial`, `#Industrial`, `#SolarPlant`, `#WaterTower`) and `City` dispatches on it with ifs inside index-based `whileTrue:` loops. The `CityTest class>>initialize` method creates the `ep` and `wp` units (Aconcagua `BaseUnit`) as globals and the file ends with `CityTest initialize!`, so the file needs Aconcagua loaded.
- `solution/ISW1-2021-2C-1erParcial-Solution.st`: the solution (name contains "Solution"; adds the `ResidentialZone`, `CommertialZone` and `IndustrialZone` subclasses of `Zone`, `Service class>>solarPlant` / `waterTower`, `sum:ifEmpty:` / `anySatisfy:` collection protocol, and test helpers/assertions).
- `solution/LinkAVideo.txt`: copied from the original directory. Its whole content is: "Video de la Resolución: https://youtu.be/vZhERguCujg" ("Solution video: ...").
- Removed from the statement: the "rules and norms for the remote exam" page (Zoom, breakout rooms, camera, allowed materials, image-saving recommendation), the "questions during the exam" and "bathroom breaks" sections with the spreadsheet link, and the "Delivery" section (category and file naming, .user.changes, email subject, git repo upload, confirmation before leaving Zoom).

- `starting/ISW1-2021-2C-1erParcial.st` was ISO-8859-1 encoded; it was re-encoded as UTF-8 so Cuis 7.9 files it in correctly. The verbatim copy is `starting/original/ISW1-2021-2C-1erParcial.st`.
