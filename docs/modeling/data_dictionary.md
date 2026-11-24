# Preliminary data dictionary

Proposed names only; do not treat this as the validated MLD. Types, technical keys and nullability remain to be defined in Looping.

| Domain entity | Requirements to model |
| --- | --- |
| Airport (`t_aeroport`) | Official name, 3-letter IATA (not unique per specification), unique 4-letter ICAO |
| Airline (`t_compagnie`) | Name, 2-character IATA as described in the specification, base airport |
| Aircraft type (`t_type_avion`) | Model name, description |
| Aircraft (`t_avion`) | Airline, aircraft type, individual capacity, identifier/registration |
| Flight schedule (`t_programme_vol`) | Flight number, operating airline, route, weekly frequency, planned times; no specific aircraft |
| Actual flight (`t_vol`) | Schedule, date, assigned aircraft, operating airline, actual route, planned and actual times |
| Passenger (`t_passager`) | Unique passport number, surname, given name |
| Reservation (`t_reservation`) | Passenger, actual flight, seat, price |

## Rules to validate

- An aircraft belongs to a company and a model; capacity is aircraft-specific.
- A real flight follows a schedule but has its own airline, aircraft, route and times as specified.
- A reservation links a passenger and a flight. Consider a unique constraint on `(vol_fk, siege)` to prevent double booking; validate the design with the teacher.
- Define how weekly operating days and check-in confirmation are represented. The latter is required by the role description, but its storage attribute is not specified.
- Preserve the assignment's passport-format validation as a query; do not reject source records prematurely.

## Final dictionary template

| Table | Column | Type | PK/FK | Nullable | Constraint | Description |
| --- | --- | --- | --- | --- | --- | --- |
| To complete | | | | | | |
