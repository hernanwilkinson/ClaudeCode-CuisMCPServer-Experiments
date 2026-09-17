# Holiday Calendar

## Statement

- Model a holiday calendar (calendario de días feriados) that can be asked whether a date is a holiday or not.
- It must be possible to state which days are holidays in the following ways:
  - By a day of the week, e.g. Sunday.
  - By a day of a month, e.g. December 25.
  - By a particular day, e.g. 20/4/2012.

## New requirement

- Holidays are valid within a time interval! Examples:
  - From 1/1/1990 to 31/12/1999, Mondays were holidays.

## The exercise as the solution poses it (`HolidayCalendar.st`)

The solution uses the Chalten date objects (`October first, 2017` is a date, `Sunday` a day of the week, `December twentyfifth` a day of a month, `aDate to: anotherDate` an interval), category `Calendar`. Its protocol:

- `HolidayCalendar new`; `isHoliday: aDate`.
- `makeDayOfWeekAsHoliday: Sunday`; `makeDayOfMonthAsHoliday: December twentyfifth`; `makeDateAsHoliday: (December first, 2017)`.
- New requirement: `makeDayOfWeekAsHoliday: aRule from: aFromDate to: aToDate`, where the rule is an object such as `DayOfWeekHolidayRule for: Monday` (the selector's name was not updated when the parameter became a rule).

Tests (`XXXTest`; the class name is deliberately meaningless):

| Test | Given | Asserts |
|---|---|---|
| `test01OneWeekdayCanBeHoliday` | Sunday is a holiday | 1 Oct 2017 (a Sunday) is a holiday |
| `test02NoWeekdayCanBeHoliday` | nothing | 2 Oct 2017 (a Monday) is not a holiday |
| `test04MoreThanOneWeekdayCanBeHoliday` | Saturday and Sunday | 7 Oct 2017 and 1 Oct 2017 are holidays |
| `test05` | December 25 | 25 Dec 2017 is a holiday |
| `test06` | December 25 and January 1 | 25 Dec 2017 and 1 Jan 2017 are holidays |
| `test07` | the date 1 Dec 2017 | that date is a holiday |
| `test08` | Mondays from 1 Jan 1990 to 31 Dec 1999 | 2 Dec 1991 (a Monday) is a holiday |

There is no `test03`. `atest08` is an earlier version of `test08` that passed `Monday` directly to `makeDayOfWeekAsHoliday:from:to:`; it was renamed so that it does not run. No test checks the negative cases of the interval (a Monday outside 1990-1999) nor the day-of-month and particular-date rules bounded by an interval.

## Reference design (from the solution)

- First solution: a `HolidayCalendar` understanding `isHoliday:`, holding a list of `weekdaysHolidays` (e.g. Saturday, Sunday) and a list of `monthDaysHolidays` (e.g. 12/25, 1/1).
- After the new requirement: the calendar holds one list of `rules`; `HolidayRule` is an abstract class with `isHoliday` and three subclasses, `WeekdayHolidayRule`, `MonthDayHolidayRule` and `BoundedHolidayRule`, the last one wrapping another rule together with a `from` and a `to` date.
- The solution file matches the second design with different names and no abstract class: `HolidayCalendar` with `rules` (`isHoliday:` is `rules anySatisfy: [ :aRule | aRule isHoliday: aDate ]`); `DayOfWeekHolidayRule for: aDay` (`aDate day = weekday`), `DayOfMonthHolidayRule for: aDayOfMonth` (`aDate dayOfMonth = dayOfMonth`), `DateHolidayRule for: aDate` (`aDate = date`) and `CompoundHolidayRule for: aRule into: aRange` (`(range includes: aDate) and: [ rule isHoliday: aDate ]`).

Conclusions drawn from this exercise: naming is hard because the domain is not known yet, so prefer "meaningless names" over bad names at first and rename later; distinguish test data from test cases; use witness cases (out of the interval, on the border, particular data); the code "talks" and tests that are hard to write signal bad design; the second solution is a big conceptual leap but the tests made the change safe; there are more objects in the dates domain than the ones programming languages give us.
