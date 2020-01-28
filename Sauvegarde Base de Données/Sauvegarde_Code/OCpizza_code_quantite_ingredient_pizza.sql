SELECT * FROM ingredient_pizza
SELECT * FROM produit
SELECT * FROM recette
SELECT * FROM pizza

INSERT INTO ingredient_pizza(id_pizza, id_produit, quantite, facteur_quantite)
VALUES
(1, 23, 80, 1),
(1, 12, 1, 1),
(1, 1, 80, 1),
(1, 6, 150, 1),
(1, 5, 1, 1),
(1, 24, 3, 1),
(2, 23, 80, 2),
(2, 3, 1.5, 2),
(2, 12, 1, 2),
(2, 1, 80, 2),
(2, 6, 150, 2),
(2, 5, 1, 2),
(2, 24, 3, 2),
(4, 23, 80, 3),
(4, 12, 1, 3),
(4, 1, 80, 3),
(4, 22, 150, 3),
(4, 5, 1, 3),
(4, 24, 3, 3),
(4, 4, 60, 3);


