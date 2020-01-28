SELECT nom, prenom, voie, complement, commune, code_postal, numero_de_telephone_mobile, numero_de_telephone_fixe, to_char(date_de_naissance, 'dd-mm-yyyy') AS date_de_naissance, id_adresse_livraison, voie AS livraison_voie, complement AS livraison_complement, commune AS livraison_commune, code_postal AS livraison_code_postal,password, email
FROM utilisateur
JOIN adresse ON utilisateur.id_adresse_postale = adresse.id
JOIN authentification  ON utilisateur.id = authentification.id_utilisateur
JOIN client ON utilisateur.id = client.id
WHERE utilisateur.nom = 'Rut'

SELECT * FROM utilisateur

INSERT INTO utilisateur(email, type)
VALUES('Giroud', 'Franck', '1976-10-20', NOW(), '0625336459', '0478905896', 1, 'franck.giroud@ocpizza.fr', 1),
('Giroud', 'Lola', '1978-11-10', NOW(), '0789436521', '0478905896', 1, 'lola.giroud@ocpizza.fr', 1),
('Bernard', 'Eddy', '1981-05-25', NOW(), '0795852543', '0472659811', 2, 'eddy.bernard@ocpizza.fr', 2),
('Dupont', 'Gerard', '1970-08-11', NOW(), '0658901143', '0478924233', 3, 'gerard.dupont@ocpizza.fr', 3),
('Pacouret', 'Nathan', '1997-01-11', NOW(), '0790114943', '0472024225', 4,'nathan.pacouret@ocpizza.fr', 4),
('Rut', 'Sophie', '1980-01-16', NOW(), '0665729143', '0478880051', 5, 'rut.sophie69@yahoo.com', 5),
('Sita', 'Sheriff', '1963-02-12', NOW(), '0612096685', '0472413389', 6, 'sheriff@gmail.com', 5),
('Rodriguez', 'Philippe', '1979-05-24', NOW(), '0628465251', '0472235580', 7, 'rodriguodu69@laposte.net', 5);
