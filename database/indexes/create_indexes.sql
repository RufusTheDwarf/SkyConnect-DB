-- STATUS: TODO after baseline EXPLAIN and SHOW INDEX.
USE db_aeroport;
-- Review existing PK/FK indexes before creating any new index.
-- Investigate equality + range ordering for query 1; investigate filter/join
-- order and selectivity for query 2. Do not assume a new index is beneficial.
-- TODO: Add justified CREATE INDEX statements, then compare execution plans.
