# Make-up Exam 1c 2018 – Garage Reservation

## Practical exercise

Develop the system that meets the requirement below.

### Garage reservation (Reserva de Cochera)

A company wants to improve the distribution of use of the only garage space (cochera) they have among their employees. For that, they ask us to write a program that decides who must use the garage based on the requests for its use that there were.

The system must allow receiving reservation requests for a date, a person, and with some reason.

The reasons can be: 1) I have a meeting with a client 2) I have to teach a class 3) Personal use.

Once a day, the reservation of the day is closed. This means that no more requests will be received for that date and it is decided who must use the garage.

The assignment of the garage is done in the following way:

1. If there is only one request, it is granted to that person.
2. If there is more than one, priority is given by reason. The meeting with a client has priority, then teaching a class and lastly personal use.
3. If as a result of 2) more than one possible winner remains, it is assigned to the one who used the garage the fewest times in the last 30 days.

Once the garage is assigned, no more requests can be accepted for that date.

If a person makes more than one reservation for a date, the one they had is discarded and the last one is taken.
