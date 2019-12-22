SELECT * FROM statut

INSERT INTO statut
VALUES(1, 'Commande validée', 'La commande a été validée par le client.'),
(2, 'Commande annulée', 'La commande a été annulée par le client.'),
(3, 'Commande en attente', 'La commande est en attente de préparation.'),
(4, 'Commande en préparation', 'La commande est en préparation.'),
(5, 'commande en attente de livraison', 'La commande est terminée et en attente d''être livrée.'),
(6, 'Commande en cours de livraison', 'La commande est en cours de livraison.'),
(7, 'Commande livrée et payée', 'La commande a été livrée chez le client et réglée.'),
(8, 'Commande prête à être retirée en point de vente', 'La commande est terminée, le client peut venir la récuperer dans un point de vente.'),
(9, 'Commande finalisée', 'La commande est complète et donc finalisée.');