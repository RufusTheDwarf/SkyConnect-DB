-- Baseline queries provided by assignment section 7.3.5.
-- Run only after the approved tables and data exist; check column types.
USE db_aeroport;
SHOW INDEX FROM t_vol;
SHOW INDEX FROM t_compagnie;
SHOW INDEX FROM t_aeroport;

EXPLAIN
SELECT V.vol_id, V.heure_depart, V.heure_arrivee, C.nom AS compagnie
FROM t_vol AS V
JOIN t_compagnie AS C ON V.compagnie_fk = C.compagnie_id
WHERE V.compagnie_fk = 3 AND V.heure_depart > '12:00:00'
ORDER BY V.heure_depart DESC;

EXPLAIN
SELECT A.nom AS aeroport, COUNT(V.vol_id) AS nombre_vols
FROM t_vol AS V
JOIN t_aeroport AS A ON V.aeroport_depart_fk = A.aeroport_id
WHERE V.heure_depart > '10:00:00'
GROUP BY A.nom
ORDER BY nombre_vols DESC;
