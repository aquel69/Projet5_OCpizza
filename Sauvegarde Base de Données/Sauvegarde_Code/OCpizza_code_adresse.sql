SELECT voie, complement, code_postal, commune
FROM adresse
WHERE id = 6 OR id = 7;

INSERT INTO adresse
VALUES (1, '16 avenue du val de saone', 'batîment C', 69580, 'Sathonay camp');

ALTER SEQUENCE adresse_id_adresse_seq_2 RESTART 2;

INSERT INTO adresse(voie, complement, code_postal, commune)
VALUES ('16 rue de la montée','1 étage',69580, 'Sathonay Village'),
('46 rue de la république','bat C', 69300, 'Caluire'),
('56 rue de la montée','4 étages', 69300, 'Caluire'),
('66 rue de la Ligote','8 étages', 69500, 'Bron'),
('1 impasse de la vie','maison au fond de l''impasse', 69330, 'Meyzieu'),
('18 square marechal Lyautey','bat A', 69300, 'Caluire'),
('16 rue de la République', 'OC Pizza de Lyon Terreau', 69001, 'Lyon'),
('164 grande rue de la Croix-Rousse', 'OC Pizza de Lyon Croix-Rousse', 69002, 'Lyon'),
('10 rue Victor Hugo', 'OC Pizza de Lyon Bellecour', 69004, 'Lyon'),
('25 cours Charlemagne', 'OC Pizza de Lyon Perrache', 69002, 'Lyon'),
('CC de Lyon Part-Dieu', 'OC Pizza de Lyon Part-Dieu', 69003, 'Lyon');
