SELECT id, numero, to_char(date, 'dd/mm/yyyy') AS date_facture, montant_ht, tva FROM facture

SELECT to_char(date_de_naissance, 'dd/mm/yyyy') AS date_de_naissance, * FROM utilisateur
ALTER DATABASE "OCpizza" SET DateStyle =German

INSERT INTO facture(numero, date , montant_ht, tva)
VALUES('0000012019', NOW(), 20.5, 10),
('0000022019', NOW(), 45.8, 10),
('0000032019', NOW(), 12.5, 10);