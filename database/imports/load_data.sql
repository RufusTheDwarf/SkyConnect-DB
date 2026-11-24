-- STATUS: PENDING approved schema and teacher-provided TSV files.
USE db_aeroport;
-- Inspect server-side import restriction before loading:
SHOW VARIABLES LIKE 'secure_file_priv';
-- Example template only; adapt all placeholders before uncommenting.
-- LOAD DATA INFILE '/var/lib/mysql-files/<actual-file>.tsv'
-- INTO TABLE <approved_table>
-- CHARACTER SET utf8mb4
-- FIELDS TERMINATED BY '\t'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES
-- (<actual_column_list>);
-- Use IGNORE 1 LINES only if a header exists; choose LF or CRLF as observed.
-- After each load: retain output, SHOW WARNINGS; and verify record counts.
-- Do not use IGNORE or REPLACE duplicate handling to mask rejected records.
