# Installation and local workflow

1. Start Docker Desktop (Windows containers mode is not suitable; use Linux containers).
2. From the root, copy `.env.example` to `.env`, set a unique root password, then run `docker compose config --quiet`, `docker compose up -d` and `docker compose ps`.
3. Access phpMyAdmin at `http://127.0.0.1:8081` or the chosen port. Use `docker compose exec db mysql -u root -p` for the CLI.
4. Verify `SELECT VERSION();`, `SHOW DATABASES;`, `SHOW VARIABLES LIKE 'secure_file_priv';`.
5. **After teacher approval**, replace the placeholder in `database/schema/02_create_tables.sql` with the SQL exported from Looping. Inspect the generated SQL before execution. In the interactive MySQL client run `SOURCE /workspace/database/schema/02_create_tables.sql;` and inspect `SHOW TABLES;` in `db_aeroport`.
6. Place teacher-provided TSVs in `data/`. Confirm field order, header, encoding, line ending, NULL representation and dependency order. Complete the import script, then execute individual LOAD DATA statements and retain screenshots privately. Confirm zero skipped records and warnings and compare source and destination counts.
7. Implement and execute remaining stages individually. No SQL exercise, import or role file is automatically run by Compose.

## Troubleshooting

- Port already in use: change `PMA_HTTP_PORT` in `.env`, run `docker compose up -d`.
- MySQL not ready: inspect `docker compose logs db` and `docker compose ps`.
- Password changed in `.env` but rejected: the existing volume retains the original credentials; changing the environment does not rotate an existing account password.
- LOAD DATA errors: check `secure_file_priv`, the container path, read permissions and the TSV format. Do not disable integrity checks to hide errors.
- On a shared machine use restricted access to the local folder and never publish the root port. MySQL root access from the Compose network is enabled only for bootstrap convenience.

## Backup and shutdown

Use `docker compose down` to stop services without deleting the named volume. Before changes that can delete data, create and verify a local backup. Example in the container (password entered interactively):

```sh
docker compose exec db sh
mysqldump -u root -p --single-transaction --routines --triggers db_aeroport > /tmp/db_aeroport.sql
exit
```

From the host create a private `backups/` directory and copy the file:

```powershell
New-Item -ItemType Directory -Force backups
docker compose cp db:/tmp/db_aeroport.sql backups/db_aeroport.sql
docker compose exec db rm /tmp/db_aeroport.sql
```

Verify the dump by restoring to an isolated test instance, not over the original database. The ignored backup folder is not for publication. `docker compose down -v` destroys the named database volume; do not use it as routine shutdown.
