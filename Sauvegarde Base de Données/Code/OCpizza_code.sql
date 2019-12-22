SELECT * FROM adresse

INSERT INTO adresse
VALUES (1, '16 avenue du val de saone', 'batîment C', 69580, 'Sathonay camp')

ALTER SEQUENCE adresse_id_adresse_seq_2 RESTART 2

INSERT INTO adresse(voie, complement, code_postal, commune)
VALUES ('16 rue de la montée','1 étage',69580, 'Sathonay Village'),
('46 rue de la république','bat C', 69300, 'Caluire'),
('56 rue de la montée','4 étages', 69300, 'caluire')