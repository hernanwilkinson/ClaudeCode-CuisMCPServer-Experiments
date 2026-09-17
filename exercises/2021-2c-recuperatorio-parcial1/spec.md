# ISWSmartBuilding: team mood refactoring (make-up exam, first midterm)

## Make-up exam, first midterm only

The company ISWSmartBuilding asked to implement a new requirement that affects a team's construction time based on the team's mood (estado de ánimo). If the mood is very good, the team takes half the normal time; if the mood is bad, it takes twice the normal time; and if it is normal, it takes what it used to take normally.

This requirement is already implemented, but the person who did it does not have much experience in software development and did it using `if` instead of polymorphism; nevertheless, they wrote tests 23 to 25 to check the behavior.

Now that the system is in production, we have time to remove the technical debt from the system. Therefore it has been decided that we must remove all the duplicated code from the tests and replace the use of `if` with polymorphism where appropriate.

Use the .st provided in the mail to do what is requested.

*(Importer's note: the ISWSmartBuilding system is the construction-teams model of the second midterm of this semester, 2021-2c-parcial2; the provided .st is that model plus the mood feature in `EquipoSimple`.)*
