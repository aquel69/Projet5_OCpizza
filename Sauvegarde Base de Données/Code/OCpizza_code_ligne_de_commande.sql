SELECT id_produit, quantite, prix_unitaire_ht, tva, ROUND((SUM(prix_unitaire_ht) * 10 / 100) + SUM(prix_unitaire_ht)) AS prix_ttc WITH SUM(prix_ttc) AS total_ttc FROM ligne_de_commande
WHERE id_commande = 4
GROUP BY id_produit, quantite, prix_unitaire_ht, tva;

SELECT SUM (prix_ttc) FROM ligne_de_commande

SELECT* FROM produit

SELECT ROUND((SUM(prix_unitaire_ht) * 10 / 100) + SUM(prix_unitaire_ht)) AS total FROM ligne_de_commande
WHERE id_commande = 4;

UPDATE ligne_de_commande
SET prix_unitaire_ht = 11.81
WHERE id = 9;

INSERT INTO ligne_de_commande(id_commande, id_produit, quantite, prix_unitaire_ht, tva)
VALUES
(1, 20, 2, 9.5, 10),
(1, 14, 1, 1.4, 10),
(1, 15, 1, 2, 5.5),
(2, 21, 2, 12.5, 10),
(2, 16, 3, 2, 20),
(2, 17, 2, 4.8, 10),
(2, 19, 1, 3.5, 10),
(4, 20, 1, 10, 10),
(4, 21, 1, 11.81, 10);
