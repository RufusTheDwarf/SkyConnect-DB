
<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0D1117,50:00758F,100:2496ED&height=240&section=header&text=SkyConnect-DB&fontSize=48&fontColor=FFFFFF&animation=fadeIn&fontAlignY=38&desc=Airport%20Database%20Engineering&descAlignY=60" width="100%" alt="SkyConnect DB Header"/>

# SkyConnect-DB

**Relational Airport Database Management System**

![MySQL](https://img.shields.io/badge/MySQL-00758F?style=flat&logo=mysql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![phpMyAdmin](https://img.shields.io/badge/phpMyAdmin-6C78AF?style=flat&logo=phpmyadmin&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-336791?style=flat)
![MERISE](https://img.shields.io/badge/Modeling-MERISE-475569?style=flat)
![Windows](https://img.shields.io/badge/Platform-Windows-0078D4?style=flat)
![Status](https://img.shields.io/badge/Status-In_Development-orange?style=flat)
![Project](https://img.shields.io/badge/Project-Educational-555555?style=flat)

[Overview](#overview) ·
[Features](#features) ·
[Architecture](#architecture) ·
[Roadmap](#roadmap) ·
[Security](#security) ·
[Documentation](#documentation)

</div>

---

## Overview

SkyConnect-DB is an educational database engineering project
focused on designing and implementing a relational database
management system for a fictional international airport.

The project explores the complete database development lifecycle,
from conceptual modeling to SQL implementation, bulk data
imports, query optimization, access control and transactional
data integrity.

Developed as part of an individual IT project at ETML,
Switzerland.

## Features

- Airport and airline management
- Aircraft fleet management
- Aircraft type classification
- Recurring flight schedules
- Actual flight operations
- Passenger management
- Flight and seat reservations
- Bulk TSV data imports
- Advanced SQL queries
- Database index optimization
- Role-based access control
- ACID transaction management

These features represent the planned project scope.

## Technology Stack

| Technology | Purpose |
|------------|---------|
| MySQL | Relational database engine |
| Docker | Containerized infrastructure |
| Docker Compose | Service orchestration |
| phpMyAdmin | Database administration |
| Looping | MERISE database modeling |
| SQL | Database operations |
| Git | Version control |
| GitHub | Source code management |

## Architecture

```mermaid
flowchart LR
    U[Administrator] --> P[phpMyAdmin]
    U --> C[MySQL Client]
    P --> M[(MySQL Server)]
    C --> M
    D[TSV Data] --> M
    M --> V[(Persistent Volume)]
```

### Database

- Database name: `db_aeroport`
- Database engine: MySQL
- Target storage engine: InnoDB

### Core entities

- Airport
- Airline
- Aircraft type
- Aircraft
- Flight schedule
- Flight
- Passenger
- Reservation

The final database schema will be published after
the conceptual and logical models have been validated.

## Roadmap

- [ ] Requirements analysis
- [ ] Conceptual data model
- [ ] Logical data model
- [ ] Teacher validation
- [ ] Database implementation
- [ ] TSV data import
- [ ] 15 mandatory SQL queries
- [ ] Index analysis and optimization
- [ ] Database roles and privileges
- [ ] Transaction management
- [ ] Integrity and security testing
- [ ] Final technical documentation

## Security

The database is designed around the principle
of least privilege.

Five user profiles are planned:

| Role | Responsibilities |
|------|------------------|
| Administrator | Full database administration |
| Flight Manager | Flight planning and management |
| Reservation Agent | Passengers and reservations |
| Check-in Agent | Reservation verification and seat updates |
| Analyst | Read-only database access |

Credentials, sensitive datasets and personal information
must never be committed to this repository.

## Performance

Database performance will be evaluated through:

- Existing index analysis
- Composite index design
- Query execution plans
- Index selectivity
- SQL query optimization

Performance results will be documented after testing.

## Transactions

The project includes two transactional use cases:

1. Flight cancellation and reservation removal.
2. Seat availability verification and reservation creation.

The objective is to preserve database consistency
and prevent invalid or orphaned records.

## Documentation

The technical documentation will cover:

- Database modeling
- Installation and configuration
- SQL queries and explanations
- Data import verification
- Performance analysis
- Security configuration
- Transaction management
- Development journal
- AI usage disclosure

## Project Status

This repository is currently under development.

Implementation and validation results will be added
progressively throughout the project.

## AI Usage

AI-assisted tools may be used for planning, documentation,
SQL development, debugging and technical explanations.

All generated content must be reviewed and understood.
Actual AI usage will be documented in the project report.

---

<div align="center">

### Author

**RufusTheDwarf**

[![GitHub](https://img.shields.io/badge/GitHub-RufusTheDwarf-181717?style=flat&logo=github)](https://github.com/RufusTheDwarf)

Developed for educational purposes.

Thank you for exploring this project.

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0D1117,50:00758F,100:2496ED&height=120&section=footer" width="100%" alt="SkyConnect DB Footer"/>

</div>
