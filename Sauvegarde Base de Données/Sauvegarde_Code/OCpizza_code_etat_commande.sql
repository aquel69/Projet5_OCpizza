SELECT statut.id, statut.code, to_char(date, 'dd-mm-yyyy hh24:mi:ss') FROM statut, etat_commande
WHERE statut.id = etat_commande.id_statut

SELECT * FROM statut

UPDATE etat_commande
SET id_statut = 3
WHERE id = 2;


INSERT INTO etat_commande(id_statut, date)
VALUES
(1, NOW()),
(3, NOW()),
(4, NOW()),
(5, NOW()),
(6, NOW()),
(7, NOW()),
(1, NOW()),
(3, NOW()),
(4, NOW()),
(8, NOW()),
(9, NOW()),
(1, NOW()),
(3, NOW()),
(2, NOW());