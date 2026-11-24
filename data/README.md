# Local TSV datasets

Place teacher-provided `.tsv` files here after delivery. They are not included or tracked in Git. The directory is mounted read-only in the MySQL container at `/var/lib/mysql-files`.

Before import, record the actual filename, row count, encoding, field order, header presence, line ending and NULL representation. Determine import order from the approved foreign keys. Use server-side `LOAD DATA INFILE` (see `database/imports/load_data.sql`) and confirm zero skipped records and warnings for each file. Capture evidence privately. Never commit passenger identifiers, raw datasets, dumps or screenshots containing personal information.
