SELECT id, catégorie, classe, sous_classe FROM categorie

SELECT * FROM categorie


DELETE FROM categorie

ALTER SEQUENCE categorie_id_seq_1 RESTART 1

INSERT INTO categorie (catégorie, classe, sous_classe)
VALUES ('vente', 'pizza', 'base tomate'),
('vente', 'pizza', 'base crème'),
('vente', 'dessert','gateau'),
('vente', 'dessert', 'glace'),
('vente', 'dessert', 'flan'),
('vente', 'boisson', 'soda'),
('vente', 'boisson', 'alcool'),
('vente', 'boisson', 'chaude'),
('achat', 'ingredient', 'legume'),
('achat', 'ingredient', 'viande'),
('achat', 'ingredient', 'poisson'),
('achat', 'ingredient', 'condiment'),
('achat', 'ingredient', 'sauce'),
('achat', 'ingredient', 'preparation'),
('achat', 'dessert', 'glace'),
('achat', 'boisson', 'soda'),
('achat', 'boisson', 'alcool');




