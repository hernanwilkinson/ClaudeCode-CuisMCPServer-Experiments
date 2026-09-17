# Second Midterm 1c 2019 – Personal and Team Calendars

## Statement

We have detected a business opportunity related to managing the calendar of people and of groups of people, since the solutions that currently exist are very limited.

The objective is to be able to create calendars for each person of a company and then to be able to group them according to the working groups of a company.

For example, if Ana Perez and Pepe Sanchez work in the company, each one will have their calendar, and since both are part of the development team there will also be a calendar of the "Development Team" that will include the calendars of Ana Perez and Pepe Sanchez. If later María Fernandez joins the group, it must be possible to add her calendar to the development team's one.

Since the development team is part of the IT group of the company, that calendar will be part of the calendar of the IT group together with the QA team's and the PMs' (and all the other IT groups that exist or that are created later). All of them will be part of the group calendar of the company (where the CEO's calendar also is).

Fortunately the client companies we have possess a perfect hierarchical organization, so in this version there is no need to worry about repeated calendars or a badly formed hierarchy.

What is desired at the functional level of the calendars is to be able to add events to them so as to later search for free spots easily, either in the calendar of a person or of a group.

All events have a start and end time on a certain day, and some can repeat over time.

The events we are going to support for now are:

1. One-off events that do not repeat. Example: From 10:00 to 11:00 on 1/1/2019.
2. Events that repeat every certain measure of time. Examples:
   - a) From 10:00 to 11:30 on 2/2/2019 repeating every 1 week until 3/3/2019.
   - b) From 11:00 to 11:30 on 3/5/2019 repeating every 3 days until the end of time (that is, it has no end date).
   - c) From 9:50 to 11:30 on 28/10/2019 repeating every 1 year until 2/2/2030.

   The measure of time can be of any time unit greater than or equal to 1 day (day, week, month, year, etc.).

Events must be addable to personal or group calendars. When an event is added to a group calendar, it must be reflected in the calendars that make it up.

The calendars must serve to know whether a spot in them is available. For example, if Ana Perez's calendar has an event from 9 to 10 hrs on day 4/7/2019 and it is asked whether there is a spot available between 8:30 and 9:30 on 4/7/2019, it should say no. Whereas if it is asked whether there is a spot between 10:00 and 11:00 that same day it should say yes.

A very important functionality that we must offer for the calendars, both group and individual ones, is to be able to search for the first available spot to create an event. These searches must always indicate the time-of-day range in which the spot is to be searched, what duration the spot to find has, and in which date range. For example:

- a) Between 9 and 12 hrs, of 1 hr. duration, from 1/1/2019 to 7/1/2019.
- b) Between 15 and 17 hrs, of 30 minutes duration, between 10/3/2019 and 20/3/2019.

The search time always increases in intervals of 1 hour. That is, for example b), if there is no spot on 10/3/2019 at 15 hrs it must search as the next possible spot 10/3/2019 at 16 hrs and so on until 17 hrs of that day. If there is no spot that day it must move on to the next one (11/3/2019) starting to search at 15 hrs.

Implement the model that satisfies these needs.

## Hints

1. `January/10/2019` creates the date January 10, 2019.
2. `10:00` creates the time 10:00.
3. `January/10/2019 at: 10:00` creates the date/time of January 10, 2019 at 10:00.
4. `(January/10/2019 at: 10:00) to: (January/10/2019 at: 11:00)` creates a time interval that goes from January 10, 2019 at 10:00 to 11:00 of the same day. In the same way, date-only intervals such as `January/10/2019 to: January/11/2019` or time-of-day intervals such as `10:00 to: 15:30` can be created.
5. The days of the week are `Sunday` (for domingo), `Monday` (for lunes), etc.
6. Time measures can be created by multiplying an amount by its unit, for example: `1*hour` or `10*day` or `5*week`, etc.
7. `January/10/2019 to: January/15/2019 by: 2*day` creates a date interval that goes from January 10 to 15 every 2 days, that is, it includes January 10, 12 and 14.
8. `January/10/2019 to: FixedGregorianDate theEndOfTime` creates a date interval that starts on January 10, 2019 and does not end.
