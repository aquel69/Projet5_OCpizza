--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2019-12-30 19:01:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3015 (class 0 OID 33688)
-- Dependencies: 219
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (1, '16 avenue du val de saone', 'batîment C', 69580, 'Sathonay camp');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (2, '16 rue de la montée', '1 étage', 69580, 'Sathonay Village');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (3, '46 rue de la république', 'bat C', 69300, 'Caluire');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (4, '56 rue de la montée', '4 étages', 69300, 'caluire');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (5, '66 rue de la Ligote', '8 étages', 69500, 'Bron');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (6, '1 impasse de la vie', 'maison au fond de l''impasse', 69330, 'Meyzieu');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (7, '18 square marechal Lyautey', 'bat A', 69300, 'Caluire');


--
-- TOC entry 3019 (class 0 OID 33715)
-- Dependencies: 223
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (1, 'Giroud', 'Franck', '1976-10-20', '2019-12-22 18:12:12.96427', '0625336459', '0478905896', 1);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (2, 'Giroud', 'Lola', '1978-11-10', '2019-12-22 18:12:12.96427', '0789436521', '0478905896', 1);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (3, 'Bernard', 'Eddy', '1981-05-25', '2019-12-22 18:12:12.96427', '0795852543', '0472659811', 2);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (4, 'Dupont', 'Gerard', '1970-08-11', '2019-12-22 18:12:12.96427', '0658901143', '0478924233', 3);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (5, 'Pacouret', 'Nathan', '1997-01-11', '2019-12-22 18:12:12.96427', '0790114943', '0472024225', 4);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (6, 'Rut', 'Sophie', '1980-01-16', '2019-12-29 10:20:29.36646', '0665729143', '0478880051', 5);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (7, 'Sita', 'Sheriff', '1963-02-12', '2019-12-29 10:20:29.36646', '0612096685', '0472413389', 6);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (8, 'Rodriguez', 'Philippe', '1979-05-24', '2019-12-29 10:20:29.36646', '0628465251', '0472235580', 7);


--
-- TOC entry 3028 (class 0 OID 33773)
-- Dependencies: 232
-- Data for Name: authentification; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (1, 'gerand', 'FranckieOC!!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (2, 'LolaResp', 'responsable!OC69580!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (3, 'respPDV', 'BErespLyon01?!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (4, 'OCpizzaiolo', 'GegeDup25!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (5, 'PacLiv', 'NathPacLiv69!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (6, 'BelleSophie', 'LaMaisonDuCoin!!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (7, 'Sheriff69', 'SITACpas?!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (8, 'Phillipo69', 'RPPR!!25900');


--
-- TOC entry 3002 (class 0 OID 33614)
-- Dependencies: 206
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categorie (id, classe, sous_classe) VALUES ('1', 'pizza', 'base tomate');
INSERT INTO public.categorie (id, classe, sous_classe) VALUES ('2', 'pizza', 'base crème');
INSERT INTO public.categorie (id, classe, sous_classe) VALUES ('3', 'dessert', 'gateau');
INSERT INTO public.categorie (id, classe, sous_classe) VALUES ('4', 'dessert', 'glace');
INSERT INTO public.categorie (id, classe, sous_classe) VALUES ('5', 'dessert', 'flan');
INSERT INTO public.categorie (id, classe, sous_classe) VALUES ('6', 'boisson', 'soda');
INSERT INTO public.categorie (id, classe, sous_classe) VALUES ('7', 'boisson', 'alcool');
INSERT INTO public.categorie (id, classe, sous_classe) VALUES ('8', 'boisson', 'chaude');


--
-- TOC entry 3027 (class 0 OID 33765)
-- Dependencies: 231
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.client (id, numero, email, id_adresse_livraison) VALUES (6, 169500, 'rut.sophie69@yahoo.com', 5);
INSERT INTO public.client (id, numero, email, id_adresse_livraison) VALUES (7, 269330, 'sheriff@gmail.com', 6);
INSERT INTO public.client (id, numero, email, id_adresse_livraison) VALUES (8, 369300, 'rodriguodu69@laposte.net', 7);


--
-- TOC entry 3017 (class 0 OID 33705)
-- Dependencies: 221
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role (id, role, description) VALUES (1, 'gérant', 'Le gérant est le propriétaire de l''entreprise,il traitera toutes les affaires de la société. La gestion des stocks de la centrale d''achat et aura un accés total au site.');
INSERT INTO public.role (id, role, description) VALUES (2, 'responsable', 'Le responsable point de vente est chargé du bon fonctionnement de son établissement, de la gestion des stocks et à un accès au site sur tout ce qui concerne son point de vente.');
INSERT INTO public.role (id, role, description) VALUES (3, 'pizzaïolo', 'Le pizzaïolo est chargé de préparer les pizzas et de la gestion du stock des ingrédients.');
INSERT INTO public.role (id, role, description) VALUES (4, 'livreur', 'Le livreur est chargé de l''acheminement des livraisons aux clients et des stocks en provenance de la centrale d''achat.');


--
-- TOC entry 3020 (class 0 OID 33724)
-- Dependencies: 224
-- Data for Name: employe; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employe (id, numero_employe, id_role) VALUES (1, 176106938100158, 1);
INSERT INTO public.employe (id, numero_employe, id_role) VALUES (2, 278116938500181, 1);
INSERT INTO public.employe (id, numero_employe, id_role) VALUES (3, 181056938100242, 2);
INSERT INTO public.employe (id, numero_employe, id_role) VALUES (4, 170088422100185, 3);
INSERT INTO public.employe (id, numero_employe, id_role) VALUES (5, 197016938000111, 4);


--
-- TOC entry 3013 (class 0 OID 33677)
-- Dependencies: 217
-- Data for Name: facture; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.facture (id, numero, date, montant_ht, tva) VALUES (1, '0000012019', '2019-12-29 12:48:37.114296', 20.5, 10);
INSERT INTO public.facture (id, numero, date, montant_ht, tva) VALUES (2, '0000022019', '2019-12-30 09:35:36.109472', 45.8, 10);
INSERT INTO public.facture (id, numero, date, montant_ht, tva) VALUES (3, '0000032019', '2019-12-30 09:35:36.109472', 12.5, 10);


--
-- TOC entry 3016 (class 0 OID 33697)
-- Dependencies: 220
-- Data for Name: point_de_vente; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3022 (class 0 OID 33734)
-- Dependencies: 226
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2999 (class 0 OID 33595)
-- Dependencies: 203
-- Data for Name: statut; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.statut (id, code, description) VALUES (1, 'Commande validée', 'La commande a été validée par le client.');
INSERT INTO public.statut (id, code, description) VALUES (2, 'Commande annulée', 'La commande a été annulée par le client.');
INSERT INTO public.statut (id, code, description) VALUES (3, 'Commande en attente', 'La commande est en attente de préparation.');
INSERT INTO public.statut (id, code, description) VALUES (4, 'Commande en préparation', 'La commande est en préparation.');
INSERT INTO public.statut (id, code, description) VALUES (5, 'commande en attente de livraison', 'La commande est terminée et en attente d''être livrée.');
INSERT INTO public.statut (id, code, description) VALUES (6, 'Commande en cours de livraison', 'La commande est en cours de livraison.');
INSERT INTO public.statut (id, code, description) VALUES (7, 'Commande livrée et payée', 'La commande a été livrée chez le client et réglée.');
INSERT INTO public.statut (id, code, description) VALUES (8, 'Commande prête à être retirée en point de vente', 'La commande est terminée, le client peut venir la récuperer dans un point de vente.');
INSERT INTO public.statut (id, code, description) VALUES (9, 'Commande finalisée', 'La commande est complète et donc finalisée.');


--
-- TOC entry 3011 (class 0 OID 33666)
-- Dependencies: 215
-- Data for Name: etat_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3024 (class 0 OID 33745)
-- Dependencies: 228
-- Data for Name: commande_etat_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3004 (class 0 OID 33625)
-- Dependencies: 208
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3026 (class 0 OID 33756)
-- Dependencies: 230
-- Data for Name: ligne_de_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3000 (class 0 OID 33604)
-- Dependencies: 204
-- Data for Name: taille; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.taille (id, taille, quantite_produit) VALUES (1, 'petite', 1);
INSERT INTO public.taille (id, taille, quantite_produit) VALUES (2, 'moyenne', 2);
INSERT INTO public.taille (id, taille, quantite_produit) VALUES (3, 'grande', 3);


--
-- TOC entry 3006 (class 0 OID 33636)
-- Dependencies: 210
-- Data for Name: pizza; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3008 (class 0 OID 33647)
-- Dependencies: 212
-- Data for Name: recette; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3009 (class 0 OID 33656)
-- Dependencies: 213
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 218
-- Name: adresse_id_adresse_seq_2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresse_id_adresse_seq_2', 7, true);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 205
-- Name: categorie_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorie_id_seq_1', 8, true);


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 227
-- Name: commande_etat_commande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande_etat_commande_id_seq', 1, false);


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 225
-- Name: commande_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande_numero_seq', 1, false);


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 214
-- Name: etat_commande_statut_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.etat_commande_statut_seq', 1, false);


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 216
-- Name: facture_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facture_id_seq_1', 3, true);


--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 229
-- Name: ligne_de_commande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ligne_de_commande_id_seq', 1, false);


--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 209
-- Name: pizza_id_seq_2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizza_id_seq_2', 1, false);


--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 207
-- Name: produit_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produit_id_seq_1', 1, false);


--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 211
-- Name: recette_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recette_id_seq', 1, false);


--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 202
-- Name: statut_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statut_id_seq_1', 1, false);


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 222
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilisateur_id_utilisateur_seq', 8, true);


-- Completed on 2019-12-30 19:01:03

--
-- PostgreSQL database dump complete
--

