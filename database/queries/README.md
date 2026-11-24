# SQL exercises (7.3.4)

Each file is an intentional placeholder; no solution or result is claimed. Complete after schema approval and import. Explain the technical concepts and record real results in the report.

| File | Objective | Concepts |
| --- | --- | --- |
| [Q01](query_01.sql) | Top 2 aircraft by descending capacity for airline ID 60; all columns. | WHERE, ORDER BY, LIMIT |
| [Q02](query_02.sql) | Three most recent flights by latest departure time; all columns. | ORDER BY, LIMIT |
| [Q03](query_03.sql) | Flight count per airline foreign key, descending; two columns. | COUNT, GROUP BY |
| [Q04](query_04.sql) | Passenger surname, given name, passport number and reserved flight departure airport name. | JOIN |
| [Q05](query_05.sql) | Average reservation price per flight foreign key, ascending. | AVG, GROUP BY |
| [Q06](query_06.sql) | All airport names and names of airlines based there, including airports without airlines. | LEFT JOIN |
| [Q07](query_07.sql) | All airlines with aircraft counts, including zero, descending. | LEFT JOIN, COUNT |
| [Q08](query_08.sql) | Airlines with at least 1500 flights; descending count, first five. | GROUP BY, HAVING, LIMIT |
| [Q09](query_09.sql) | Flight count per airline name and departure airport name; sort by airline name then descending count. | JOIN, GROUP BY |
| [Q10](query_10.sql) | Total aircraft capacity by airline and aircraft type; descending capacity. | SUM, GROUP BY |
| [Q11](query_11.sql) | Airlines with no aircraft, alphabetical; use a subquery and return only the airline name. | Subquery, NOT EXISTS |
| [Q12](query_12.sql) | Scheduled flight numbers and departure times for airports with IATA MPL. | JOIN or subquery |
| [Q13](query_13.sql) | Count total passengers, valid passports (one letter + six digits), and invalid passports; use required aliases. | REGEXP, conditional aggregation |
| [Q14](query_14.sql) | Flight schedule numbers starting AM or SL, followed by four digits with the second digit 8. | REGEXP |
| [Q15](query_15.sql) | Airlines with more than two long-haul aircraft; Airbus 330/340/350/380 or Boeing 747/777/787; descending count. | REGEXP, JOIN, HAVING |
