# Second Midterm 1c 2019 – Personal and Team Calendars (extended variant)

This statement has more functionality than what was finally given in the exam, but it is useful if you wish to practise more.

---

We have detected a business opportunity related to managing the calendar of people and of groups of people, since the solutions that currently exist are very limited.

The objective is to be able to create calendars for each person of a company and then to be able to group them according to the working groups of a company.

For example, if Juan Perez and Pepe Sanchez work in the company, each one will have their calendar, and since both are part of the development team there will also be a calendar of the "Development Team" that will include the calendars of Juan Perez and Pepe Sanchez. Since the development team is part of the IT group of the company, that calendar will be part of the calendar of the IT group together with the QA team's and the PMs' (among others). All of them will be part of the group calendar of the company (where the CEO's calendar also is).

Fortunately the client companies we have possess a perfect hierarchical organization, so in this version there is no need to worry about the organization of the calendars.

What is desired at the functional level of the calendars is to be able to create events so as to later search for free spots easily, either in the calendar of a person or of a group.

All events have a start and end time on a certain day, and some can repeat over time.

The events we are going to support for now are:

1. One-off events that do not repeat. Example: From 10:00 to 11:00 on 1/1/2019.
2. Events that repeat every certain measure of time. Examples:
   - a) From 10:00 to 11:30 on 2/2/2019 repeating every 1 week until 3/3/2019.
   - b) From 11:00 to 11:30 on 3/5/2019 repeating every 3 days until the end of time (that is, it has no end date).
   - c) From 9:50 to 11:30 on 28/10/2019 repeating every 1 year until 2/2/2030.

   etc. The measure of time can be of any time unit greater than or equal to 1 day (day, week, month, year, etc.).
3. Events that repeat on certain days of the week. Examples:
   - a) From 9:00 to 12:00 on 1/1/2019 until 1/3/2019 repeating on Tuesdays and Thursdays.
   - b) From 17:00 to 22:00 on 18/3/2019 until 6/6/2019 repeating on Mondays and Thursdays (the schedule of the Software Engineering course!).

Events must be addable to personal or group calendars. When an event is added to a group calendar, it must be reflected in the calendars that make it up.

The calendars must serve to know whether a spot in them is available. For example, if Juan Perez's calendar has an event from 9 to 10 hrs on day 4/7/2019 and it is asked whether there is a spot available between 8:30 and 9:30 on 4/7/2019, it should say no. Whereas if it is asked whether there is a spot between 10:00 and 11:00 that same day it should say yes.

A very important functionality that we must offer for the calendars, both group and individual ones, is to be able to search for the first available spot to create an event. These searches must always indicate the time-of-day range to search in, what duration the spot to find has, with what increment of minutes to search, and in which date range, avoiding certain days of the week. For example:

- a) Between 9 and 12 hrs, of 1 hr. duration, searching every 15 minutes, from 1/1/2019 to 7/1/2019, except Saturdays and Sundays.
- b) Between 15 and 17 hrs, of 30 minutes duration, every 30 minutes, between 10/3/2019 and 20/3/2019, except Mondays and Wednesdays.

Implement the model that satisfies these needs.
