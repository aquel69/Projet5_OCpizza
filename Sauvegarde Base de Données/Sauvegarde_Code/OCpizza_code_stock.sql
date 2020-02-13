SELECT point_de_vente, code_ean AS ean, produit.libelle, id_produit_de_base AS pro, quantite_restante AS qte, to_char(date_achat, 'dd-mm-yyyy') AS datachat, to_char(date_de_peremption, 'dd-mm-yyyy') AS datperemption, adresse.voie, adresse.complement, adresse.code_postal, adresse.commune
FROM stock
JOIN point_de_vente ON stock.point_de_vente = point_de_vente.siret
JOIN adresse ON point_de_vente.id_adresse_du_site = adresse.id
JOIN produit ON stock.id_produit_de_base = produit.id
WHERE point_de_vente IN (80295478500001, 80295478500002,80295478500005);

INSERT INTO stock(code_ean,id_produit_de_base, quantite_restante, date_achat, date_de_peremption, point_de_vente)
VALUES('3309586415225', 1, 10000, '31-12-2019', '10-01-2020', 80295478500001),
('330435526548', 2, 5000, '31-12-2019', '10-01-2020', 80295478500001),
('3456825265339', 3, 1000, '31-12-2019', '27-01-2020', 80295478500001),
('3304545813229', 4, 5000, '31-12-2019', '29-01-2020', 80295478500002),
('3301810011089', 5, 500, '31-12-2019', '31-12-2021', 80295478500002),
('3304848008865', 6, 100000, '31-12-2019', '31-12-2021', 80295478500003),
('3425588111000', 7, 10000, '31-12-2019', '31-12-2020', 80295478500003),
('3388044400088', 8, 5000, '31-12-2019', '31-12-2021', 80295478500004),
('3149812800099', 9, 480, '31-12-2019', '31-12-2021', 80295478500004),
('3306597000870', 10, 480, '31-12-2019', '31-12-2021', 80295478500005),
('3304488000580', 11, 200, '31-12-2019', '29-01-2021', 80295478500005),
('3429710004691', 21, 6000, '31-12-2019', '30-06-2020', 80295478500005);


