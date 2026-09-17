# ISW1 - SW-Project 2.0

The project tracking system was a complete success and now it has to be improved. Based on the use it had, common mistakes made by users were detected, as well as new functionality that we want to add.

It was decided to make the changes in three iterations.

The *first* iteration consists of fixing the existing code taking into account that:

- There cannot be empty names.
- A measure that is not strictly positive cannot be used as effort, dedication or cost. Luckily we are **not** asked to verify that the units are correct.
- Teams must have at least two developers.
- Teams cannot have repeated members.
- Concrete tasks cannot have repeated direct dependencies. There can be repeated indirect dependencies.
- All projects must have subtasks/subprojects, no exceptions.
- The concrete tasks of the projects cannot be repeated.

The *second* iteration consists of implementing the following functionality:

- Two new kinds of teams need to be added:
  - The **parallel work team**, which splits the effort in equal parts among all the developers.
  - The **fast team**, which uses the developer with the most dedication to determine the days it takes to carry out a task, unlike the mob team which uses the one with the least dedication.
  - It is important to ensure that if a team is composed of another one, it must be of the same kind, because otherwise it is impossible to define how long it takes to carry out an effort. That is, a mob programming team that is composed of other teams can only be so if the other teams are also mob programming teams.
- We want to be able to make a visual representation of a project. For example, for the following project:

| Name | Desired Start | Effort | Dependencies | Subtasks | Responsible |
|---|---|---|---|---|---|
| **Sistema ERP** | | | - | {Modelo, UI} | - |
| **Modelo** | | | - | {SS A, SS B, SS C} | - |
| *SS A* | July/1/2024 | 8*hour | {} | - | Dan Ingalls |
| *SS B* | July/1/2024 | 16*hour | {} | - | Parc MobTeam |
| *SS C* | July/2/2024 | 16*hour | {SS A, SS B} | - | Alan Kay |
| *UI* | July/2/2024 | 6*hour | {Modelo} | - | Adele Goldberg |

  A collection of strings should be obtained with the start date, the end date, the duration in days, the number of developers and the name of the task, indented according to the depth of the task tree. The format must be exactly the one specified in this example:

```
2024/07/01 - 2024/07/07 - 7*days - 3 devs |-> Sistema ERP
2024/07/01 - 2024/07/06 - 6*days - 2 devs  |-> Modelo
2024/07/01 - 2024/07/01 - 1*day  - 1 dev    |-> SS A
2024/07/01 - 2024/07/03 - 3*days - 2 devs   |-> SS B
2024/07/04 - 2024/07/06 - 3*days - 1 dev    |-> SS C
2024/07/07 - 2024/07/07 - 1*day  - 1 dev   |-> UI
```

The *third* iteration consists of developing the following:

- Introduce the possibility of telling a project that it is the main project, which is the one that contains all the subprojects and subtasks. A main project must:
  - Ensure that all the dependencies of the concrete tasks are part, directly or indirectly, of the project. For example, there cannot be a task that depends on another one that is not included in the main project.
  - A main project cannot be composed of another main project.

Implement what is necessary to solve this problem.

Those who must retake only the 1st midterm must implement the first iteration.

Those who must retake only the 2nd midterm must implement the first and second iterations.

Those who must retake the 1st and 2nd midterms must implement the first, second and third iterations.

**PROTOCOL TO KEEP IN MIND:**

- `fromDate distanceTo: toDate`: Answers the difference in days between fromDate and toDate.
- `aMeasure strictlyPositive`: Answers true if the measure is greater than 0 with its unit. E.g.: `(1*day) strictlyPositive` → true
- `aString padded: leftOrRight to: length with: char`: Adds char to the #left or #right of aString so that it has length `length`. Example:
  `'ABC' padded: #right to: 6 with: $ .` → `'ABC   '` (note the space between `$` and `.`)
