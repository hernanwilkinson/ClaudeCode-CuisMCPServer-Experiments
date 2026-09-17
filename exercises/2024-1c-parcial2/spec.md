# ISW1 - SW-Project

Our software development company is starting to grow a lot and it is getting complicated to keep control of the projects under development, the tasks of each project, the developers, the teams that work on them, etc. That is why we have decided to build a system to track the projects and thus be able to obtain, among other things, a **worksheet** (planilla de trabajo) of the developers, to know whether there is overwork and to determine how much it costs.

A **project**, besides knowing a name, is made up of subprojects and/or concrete tasks. The start of a project must be computed taking into account that it must start on the earliest start date of its subprojects/tasks. The end date must also be computed and it will be the latest end date of its subprojects/tasks.

**Concrete tasks** also know a name, a person responsible (responsable), a desired start date, the effort in hours it takes to do them, and which tasks they depend on (they may depend on none). A concrete task can only start when all the tasks it depends on have finished, and not before the desired start date. A concrete task will finish depending on the start date, the effort it demands and the dedication of those who do it. For example, SS A (Sub System A) starts on July/1/2024, has an effort of 8*hour and its responsible, Dan Ingalls, has a dedication of 8*hour/day, so the task will finish on July/1/2024. If Alan Kay did it, who has a dedication of 6*hour/day, then it would finish on July/2/2024.

**Example of a Project and its subprojects and tasks:**

| Name | Desired Start | Effort | Dependencies | Subtasks | Responsible |
|---|---|---|---|---|---|
| **Sistema ERP** | | | - | {Modelo, UI} | - |
| **Modelo** | | | - | {SS A, SS B, SS C} | - |
| *SS A* | July/1/2024 | 8*hour | {} | - | Dan Ingalls |
| *SS B* | July/1/2024 | 16*hour | {} | - | Parc MobTeam |
| *SS C* | July/2/2024 | 16*hour | {SS A, SS B} | - | Alan Kay |
| *UI* | July/2/2024 | 6*hour | {Modelo} | - | Adele Goldberg |

(Projects in **bold**, concrete tasks in *italics*)

The **responsible** for carrying out a concrete task can be a **developer** or a **team**. The developer, besides knowing a name, has a daily hourly dedication (e.g. 6*hour/day) and a cost per hour (e.g. 60*dollar/hour).

**Example of Developers:**

| Developer | Dedication | Cost |
|---|---|---|
| Dan Ingalls | 8*hour/day | 60*dollar/hour |
| Alan Kay | 6*hour/day | 80*dollar/hour |
| Adele Goldberg | 10*hour/day | 65*dollar/hour |

A work **team** is made up of developers and subteams and works mob programming style. The time to carry out a task depends on the slowest developer; for example, if a task takes 16*hour and the slowest one has a dedication of 6*hour/day, the task will be done in 3*day.

Developers do not work overtime, and if they finish a task they do not start a new one until the next day.

Holidays and weekends are not taken into account when computing development times.

**Example of a Team:**

| Parc Team |
|---|
| Dan Ingalls |
| Alan Kay |

Once the project is put together, we are asked to be able to obtain a **worksheet** to:

a) Know whether the project has **overassignments**, that is, developers who would have to work more than their dedication on some day.

b) Know the **overassignment days** of the developers. If a developer is not overassigned, it will be an empty collection.

c) The **total cost** of the project (whether or not there is overassignment). The total cost is computed based on the number of days each developer has to work and their associated cost. For example, if a developer charges 1000*peso/hour, has a dedication of 6*hour/day and worked 2*day, the cost will be:
(1000*peso/hour)*(6*hour/day)*(2*day) = 12000*peso

**Example of a worksheet:**

| Developer | Working days |
|---|---|
| Dan Ingalls | July 1, 2024->2/ July 2, 2024->1/ July 3, 2024->1 |
| Alan Kay | July 1, 2024->1/ July 2, 2024->1/ July 3, 2024->1/ July 4, 2024->1/ July 5, 2024->1/ July 6, 2024->1 |
| Adele Goldberg | July 7, 2024->1 |

**Total cost:** 5450 * dollars.

In this version it must be assumed that objects will always be created valid, that is, that names are correct, that there are no repeated tasks in the projects, etc.

Implement what is necessary to solve this problem.

**RECOMMENDATION**: Start by modeling a concrete task, in particular when it must end for a simple case (a developer whose dedication is the same as the effort of the task) and continue from there :-)
