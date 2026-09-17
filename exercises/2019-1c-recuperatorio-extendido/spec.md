# Make-up Exam 1c 2019 – Fast Food Store Working Hours (extended variant)

This statement has more functionality than what was finally given in the exam, but it is useful if you wish to practise more.

---

We must develop the system for assigning working hours to the employees of the stores of a fast food company.

The system must allow employees to assign to their working hours sheet the availability they have to work per week, in the following way:

1. From one day of the week to another, in a certain time slot. For example:
   - For the week of 15/7/2019, from Monday to Friday, from 8 to 16 hrs.
   - For the week of 22/7/2019, from Thursday to Sunday, from 13 to 22 hrs.
2. By specific days of the week, in a certain time slot. For example:
   - For the week of 15/7/2019, Monday from 8 to 16 hrs, Tuesday from 10 to 18 hrs, Wednesday from 13 to 22 hrs, etc.

The week is determined by its start date, which must always be a Monday (that is why the examples use 15/7/2019 and 22/7/2019, which are Mondays).

The start and end working times must always be at the beginning of an hour, therefore a start time of 8:30 is invalid, the same as an end time of 16:01.

The working hours must be comprised between 7:00 am and 23:00 pm.

The main objective of an employee's working hours sheet is to answer whether that employee works or not on a certain date and time. For example 1), the following results are expected:

- Works on 15/7/2019 at 7:59:59? -> No
- Works on 15/7/2019 at 8:00? -> Yes
- Works on 15/7/2019 at 9:30? -> Yes
- Works on 15/7/2019 at 16:00? -> No

Note that the working hours exclude the last hour.

Each store knows the working hours sheets of the employees who work in it, and this is used so that the store manager can:

1. Know, in a particular week, which hours are not covered by any of the employees.
2. Know, in a particular week, which employees work less than 40 hours.

For example, given that Ana Perez and Martin Gonzalez work in the Florida and Cordoba store, and that the week of 15/7/2019 has the following assignment of hours:

- Ana Perez: Monday from 8 to 23 hrs., Tuesday from 7 to 23 hrs., Wednesday from 7 to 23 hrs, Thursday from 7 to 23 hrs, Friday from 7 to 23 hrs, Saturday from 7 to 23 hrs, Sunday from 7 to 22 hrs.
- Martin Gonzalez: Monday to Wednesday from 8 to 16 hrs.

1. If the uncovered hours in the week of 15/7/2019 are queried, it should return the collection: `{ 15/7/2019 at: 7:00. 21/7/2019 at: 22 }`
   (The check of hours must be done every 1 hour, that is, at 7:00, 8:00, 9:00 and so on until 22:00.)
2. If those who work less than 40 hrs. in the week of 15/7/2019 are queried, it should return a collection that only contains Martin Gonzalez.

Implement the model that satisfies these needs.

## Hints

1. `July/15/2019` creates the date July 15, 2019.
2. `10:59:58` creates the time 10 hours, 59 minutes, 59 seconds (sic).
3. `July/15/2019 at: 10:00` creates the date/time of July 15, 2019 at 10:00.
4. `July/15/2019 previous` returns `July/14/2019`.
5. `July/15/2019 next: 6*day` returns `July/21/2019`.
6. `July/15/2019 nextDay: Sunday` returns `July/21/2019`.
7. `(July/15/2019 at: 10:00) timeOfDay` returns `10:00`.
8. `(10:30:59) minutes` returns `30*minute`.
9. `(10:30:59) seconds` returns `59*second`.
10. `(10:30:59) timeFromMidnight` returns a time measure from 0 hours.
10. `((10:30:59) timeFromMidnight convertTo: hour) isAmountInteger` returns `false`.
11. `July/15/2019 to: (July/15/2019 next: 6*day)` returns an interval that includes all the dates from July 15, 2019 to July 21, 2019, that is, the dates of the week of July 15, 2019.
