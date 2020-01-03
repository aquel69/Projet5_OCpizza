SELECT * FROM ligne_de_commande

SELECT* FROM produit

INSERT INTO ligne_de_commande(id_commande, id_produit, quantite, prix_unitaire_ht, tva)
VALUES
(1, 20, 2, 9.5, 10),
(1, 14, 1, 1.4, 10),
(1, 15, 1, 2, 5.5),
(2, 21, 2, 12.5, 10),
(2, 16, 3, 2, 20),
(2, 17, 2, 4.8, 10),
(2, 19, 1, 3.5, 10);
