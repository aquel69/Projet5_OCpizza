SELECT * FROM utilisateur

INSERT INTO utilisateur(
nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe,id_adresse_postale)
VALUES('Giroud', 'Franck', '1976-10-20', NOW(), '0625336459', '0478905896', 1),
('Giroud', 'Lola', '1978-11-10', NOW(), '0789436521', '0478905896', 1),
('Bernard', 'Eddy', '1981-05-25', NOW(), '0795852543', '0472659811', 2),
('Dupont', 'Gerard', '1970-08-11', NOW(), '0658901143', '0478924233', 3),
('Pacouret', 'Nathan', '1997-01-11', NOW(), '0790114943', '0472024225', 4)