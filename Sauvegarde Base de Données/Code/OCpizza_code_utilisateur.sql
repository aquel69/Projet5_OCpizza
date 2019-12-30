SELECT nom, prenom, to_char(date_de_naissance, 'dd-mm-yyyy') AS date_de_naissance, to_char(date_creation_de_compte, 'dd-mm-yyyy hh24:mi:ss') AS date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe
FROM utilisateur

INSERT INTO utilisateur(nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe,id_adresse_postale)
VALUES('Giroud', 'Franck', '1976-10-20', NOW(), '0625336459', '0478905896', 1),
('Giroud', 'Lola', '1978-11-10', NOW(), '0789436521', '0478905896', 1),
('Bernard', 'Eddy', '1981-05-25', NOW(), '0795852543', '0472659811', 2),
('Dupont', 'Gerard', '1970-08-11', NOW(), '0658901143', '0478924233', 3),
('Pacouret', 'Nathan', '1997-01-11', NOW(), '0790114943', '0472024225', 4),
('Rut', 'Sophie', '1980-01-16', NOW(), '0665729143', '0478880051', 5),
('Sita', 'Sheriff', '1963-02-12', NOW(), '0612096685', '0472413389', 6),
('Rodriguez', 'Philippe', '1979-05-24', NOW(), '0628465251', '0472235580', 7);