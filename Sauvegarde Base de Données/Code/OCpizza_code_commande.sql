SELECT numero, id_adresse_de_livraison, to_char(date_enregistrement, 'dd-mm-yyyy'), siret, id_employe FROM commande

INSERT INTO commande(numero, to_char(date_enregistrement, 'dd-mm-yyyy'), id_adresse_de_livraison, id_employe, siret)
VALUES
(2020000001, NOW(), 5, 3, 80295478500003),
(2020000002, NOW(), 6, 3, 80295478500003),
(2020000003, NOW(), 7, 3, 80295478500003);
