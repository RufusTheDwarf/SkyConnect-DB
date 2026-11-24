<div align="center">
  <img src="assets/header.svg" alt="SkyConnect-DB — Airport Database Engineering" width="100%" />

  <p>
    <img src="assets/badges/mysql.svg" alt="MySQL 8.4" />
    <img src="assets/badges/docker.svg" alt="Docker Compose" />
    <img src="assets/badges/phpmyadmin.svg" alt="phpMyAdmin 5.2" />
    <img src="assets/badges/merise.svg" alt="MERISE" />
    <img src="assets/badges/sql.svg" alt="SQL" />
    <img src="assets/badges/status.svg" alt="Scaffold" />
  </p>

  **Relational Airport Database Management System**

  [Overview](#01--overview) · [Architecture](#02--architecture) · [Quick start](#03--quick-start) · [Repository](#04--repository-structure) · [Roadmap](#05--roadmap) · [Security](#06--security) · [Documentation](#07--documentation)
</div>

---

## 01 — Overview

SkyConnect-DB is an individual educational project at ETML, Switzerland. It covers the design and implementation of a relational database for a fictional international airport, including flights, airlines, aircraft, passengers and reservations.

The project follows the MERISE methodology and explores bulk data loading, 15 SQL exercises, index optimization, role-based access control and ACID transactions.

**Status:** initial repository scaffold. The database model, SQL solutions, imported datasets and measured results are not yet validated or implemented. The teacher must approve the conceptual and logical data models before table creation.

| Technology | Purpose |
| --- | --- |
| MySQL 8.4 | Relational database; InnoDB target |
| Docker Compose | Local service orchestration |
| phpMyAdmin 5.2 | Web administration |
| Looping | MERISE conceptual and logical models |
| SQL | Schema, import, queries, security and transactions |
| Git / GitHub | Version control and project history |

Image tags track their respective release series, not immutable digests. Confirm compatibility with the school environment before use.

## 02 — Architecture

<img src="assets/diagrams/architecture.svg" alt="Local browser connects to phpMyAdmin, which connects to MySQL and its persistent volume; TSV input is mounted read-only" width="100%" />

Database: `db_aeroport`. MySQL is not published to the host. phpMyAdmin is reachable only on the local loopback interface. The database persists in a Docker-managed named volume.

The preliminary domain includes airports, airlines, aircraft types, aircraft, flight schedules, actual flights, passengers and reservations. See [modeling notes](docs/modeling/README.md). The final entities, associations and cardinalities depend on the approved MCD/MLD.

## 03 — Quick start

Prerequisites: Docker Engine/Desktop with Compose v2 or compatible Compose CLI, Git, and Looping for modeling.

From the repository directory in PowerShell:

```powershell
Copy-Item .env.example .env
notepad .env
```

Set a unique non-empty `MYSQL_ROOT_PASSWORD`. Change `PMA_HTTP_PORT` if 8081 is already in use.

```powershell
docker compose config --quiet
docker compose up -d
docker compose ps
docker compose exec db mysql -u root -p
```

Open [phpMyAdmin](http://127.0.0.1:8081) (adjust port if changed). Use the local bootstrap account `root` and the password in `.env` only for administration. The empty database is created on first startup; no unapproved tables are created automatically.

In the MySQL client:

```sql
SELECT VERSION();
SHOW DATABASES;
USE db_aeroport;
SHOW TABLES;
```

Stop the environment without removing its database:

```powershell
docker compose down
```

See [installation](docs/installation.md) for model approval, imports, troubleshooting and backup guidance.

## 04 — Repository structure

```text
SkyConnect-DB/
├── .github/ISSUE_TEMPLATE/    # Issue templates
├── assets/                   # Animated SVG header, footer, badges, architecture
├── database/
│   ├── schema/               # Database initialization and approved DDL
│   ├── imports/              # LOAD DATA scripts
│   ├── queries/              # 15 individual exercise files
│   ├── indexes/              # Baseline and proposed index work
│   ├── security/             # Roles, grants, users and role activation
│   └── transactions/         # Cancellation and seat booking cases
├── data/                     # Local TSV files, excluded from Git
├── docs/
│   ├── modeling/             # Looping, MCD, MLD and data dictionary
│   ├── screenshots/          # Private evidence, excluded from Git
│   └── report/               # Report outline and evidence checklist
├── tests/                    # Integrity, privileges and transaction test plans
├── .env.example              # Local configuration template
├── .gitignore
├── compose.yaml
├── CHANGELOG.md
├── LICENSE
└── README.md
```

## 05 — Roadmap

- [ ] 7.3.1 — Create MCD and MLD in Looping; obtain teacher approval.
- [ ] 7.3.2 — Export the MySQL DDL and create the tables.
- [ ] 7.3.3 — Import all teacher-provided TSV files using `LOAD DATA`; verify zero skipped records and warnings and capture each result.
- [ ] 7.3.4 — Complete and explain all 15 SQL queries.
- [ ] 7.3.5 — Analyze existing indexes, propose additional ones and compare execution plans.
- [ ] 7.3.6 — Implement five roles and at least one user per role; verify allowed and denied actions.
- [ ] 7.3.7 — Implement flight cancellation and explain the seat-reservation transaction.
- [ ] 7.4 — Document actual AI usage and verify all generated material.
- [ ] Finalize the report and project evidence.

See [requirements tracking](docs/requirements.md) and the [test plan](tests/README.md).

## 06 — Security

The project follows least privilege. Planned roles: Administrator, Flight Manager, Reservation Agent, Check-in Agent and Analyst. The check-in agent may change assigned seats but may not create/delete reservations or modify flights. The analyst is read-only.

The bootstrap root account is available from the local Compose network for phpMyAdmin setup. Do not expose this stack to the internet. Use restricted accounts for normal operations once implemented. Secrets, TSV datasets, raw screenshots and personal information must never enter Git. See [security notes](docs/security.md).

## 07 — Documentation

| Document | Purpose |
| --- | --- |
| [Requirements](docs/requirements.md) | Assignment traceability |
| [Installation](docs/installation.md) | Docker and MySQL workflow |
| [Architecture](docs/architecture.md) | Service layout and constraints |
| [Modeling](docs/modeling/README.md) | MCD/MLD approval gate |
| [Data dictionary](docs/modeling/data_dictionary.md) | Preliminary domain rules |
| [Import guide](data/README.md) | Local dataset handling |
| [Query index](database/queries/README.md) | 15 mandatory exercises |
| [Security](docs/security.md) | Role and privilege planning |
| [Report](docs/report/README.md) | Report outline and evidence checklist |
| [Journal](docs/journal.md) | Work log |
| [AI usage](docs/ai-usage.md) | AI disclosure |
| [Tests](tests/README.md) | Verification strategy |
| [Changelog](CHANGELOG.md) | Project history |

Official references: [MySQL Docker image](https://hub.docker.com/_/mysql), [phpMyAdmin Docker image](https://hub.docker.com/_/phpmyadmin), [MySQL 8.4 manual](https://dev.mysql.com/doc/refman/8.4/en/), [Docker Compose](https://docs.docker.com/compose/).

---

<div align="center">
  <strong>RufusTheDwarf</strong><br />
  <a href="https://github.com/RufusTheDwarf">GitHub profile</a><br />
  Educational project · ETML · Switzerland<br />
  Thank you for exploring SkyConnect-DB.
  <img src="assets/footer.svg" alt="SkyConnect footer" width="100%" />
</div>
