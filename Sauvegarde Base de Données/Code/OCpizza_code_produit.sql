SELECT reference_article, libelle, composition, prix_unitaire_ht , tva, id_categorie, unite FROM produit

SELECT * FROM categorie
INNER JOIN produit ON produit.id_categorie = categorie.id
WHERE catégorie = 'achat' ORDER BY produit.id ASC

UPDATE produit
SET prix_unitaire_ht = 4.10
WHERE id = 5;

DELETE FROM produit
ALTER SEQUENCE produit_id_seq_1 RESTART 1

UPDATE produit
SET composition = 'sauce tomate spécial pizza, pot de 1L'
WHERE id = 6;


INSERT INTO produit(reference_article, libelle, composition, prix_unitaire_ht, id_categorie, unite)
VALUES
('00001ACHINGLEG', 'tomate', 'tomate au kilo', 1.40, 9, 'gramme'),
('00002ACHINGLEG', 'champignon', 'champignon au kilo', 7.07, 9, 'gramme'),
('00001ACHINGVIA', 'jambon', 'Jambon cuit de Paris 20 tranches 800 g', 7.45, 10, 'tranche'),
('00001ACHINGPOI', 'saumon fumé', 'saumon fumé au kg', 22.5, 11, 'gramme'),
('00001ACHINGCON', 'mélange herbes', 'mélange de plusieurs herbes, pot de 50g', 4.0, 12, 'gramme'),
('00001ACHINGSAU', 'sauce tomate', 'sauce tomate spécial pizza, pot de 1L', 3.20, 13, 'millilitre'),
('00002ACHINGSAU', 'crème fraiche', 'crème fraiche 30%, pot de 5L', 14.69, 13, 'millilitre'),
('00001ACHINGPRE', 'farine', 'paquet de farine de 1kg', 0.49, 14, 'gramme'),
('00002ACHINGPRE', 'sachet de café', 'sachet de café en Grains Miscela Bar SINFONIA', 10.33, 14, 'tasse'),
('00003ACHINGPRE', 'mozzarella', 'mozzarella en cossette de 2,5kg', 12.47, 14, 'gramme'),
('00004ACHINGPRE', 'olive', 'olives noires à la grecque dénoyautées, seau de 2.5Kg', 11.82, 14, 'gramme'),
('00001ACHBOISOD', 'pack coca-cola', 'pack de 24 bouteilles de 50cl', 34.30, 16, 'bouteille'),
('00001ACHBOIALC', 'pack biere blonde Hoegaarden', 'pack de 24 bouteilles 25cl', 28.83, 17, 'bouteille'),
('00001ACHDESGLA', 'boîte de magnum chocolat', 'une boite de 6 magnum chocolat', 3.10, 15, 'piece'),
('00003ACHINGPRE', 'paton à pizza', '60 patons congelé', 15.55, 14, 'piece');


INSERT INTO produit(reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite)
VALUES
('00001VENBOICHA', 'grand café', 'un café dans une grande tasse', 2.70, 10, 8, 'tasse'),
('00002VENBOICHA', 'café normal', 'un café dans tasse normale', 1.40, 10, 8, 'tasse'),
('00001VENBOISOD', 'coca-cola', 'bouteille de coca-cola 50cl à l''unité', 2.00, 5.5, 6, 'bouteille'),
('00001VENBOIALC', 'biere blonde Hoegaarden', 'bouteille de biere blonde Hoegaarden 25cl à l''unité', 2.00, 20, 7, 'bouteille'),
('00001VENDESGAT', 'tiramisu', 'tiramisu à l''unité', 4.80, 10, 3, 'part'),
('00001VENDESFLA', 'crème brulée', 'ramequin de crème brulée à l''unité', 5.30, 10, 5, 'part'),
('00001VENDESGLA', 'magnum chocolat', 'glace magnum chocolat à l''unité', 3.50, 10, 4, 'piece'),
('00001VENPIZTOM', 'pizza jambon', 'pizza base tomate, jambon et mozzarela à l''unité', 9.50, 10, 1, 'piece'),
('00001VENPIZCRE', 'pizza jambon', 'pizza saumon base crème, saumon à l''unité', 12.50, 10, 2, 'piece');
