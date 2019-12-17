--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2019-12-17 08:28:06

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
-- TOC entry 3005 (class 0 OID 17010)
-- Dependencies: 218
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (1, '24 chemin de lagarde', 'bat 1', 69580, 'sathonay camp');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (2, '16 rue de la république', 'RdC', 69001, 'Lyon');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (3, '25 rue de la libération', NULL, 69680, 'Chassieu');


--
-- TOC entry 3010 (class 0 OID 17040)
-- Dependencies: 223
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (1, 'Dupont', 'Franck', '1976-10-19', '2019-12-14 14:12:33.210966', '0762322512', '0478905462', 1);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale) VALUES (2, 'Dupont', 'Lola', '1978-11-23', '2019-12-14 14:14:32.256854', '0762349581', '0478905462', 1);


--
-- TOC entry 3016 (class 0 OID 17089)
-- Dependencies: 229
-- Data for Name: authentification; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2994 (class 0 OID 16942)
-- Dependencies: 207
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3015 (class 0 OID 17081)
-- Dependencies: 228
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3008 (class 0 OID 17029)
-- Dependencies: 221
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role (id, role, description) VALUES (1, 'Gérant', 'Le gérant est le propriétaire de l''entreprise,il traitera toutes les affaires de la société. La gestion des stocks de la centrale d''achat et aura un accés total au site');
INSERT INTO public.role (id, role, description) VALUES (2, 'Responsable Point de Vente', 'Le responsable point de vente est chargé du bon fonctionnement de son établissement, de la gestion des stocks et à un accès au site sur tout ce qui concerne son point de vente');
INSERT INTO public.role (id, role, description) VALUES (3, 'Pizzaïolo', 'Le pizzaïolo est chargé de préparer les pizzas et de la gestion du stock des ingrédients');
INSERT INTO public.role (id, role, description) VALUES (4, 'Livreur', 'Le livreur est chargé de l''acheminement des livraisons aux clients et des stocks en provenance de la centrale d''achat.');


--
-- TOC entry 3011 (class 0 OID 17049)
-- Dependencies: 224
-- Data for Name: employe; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employe (id_utilisateur, numero_employe, id_role) VALUES (1, 184081305500522, 1);


--
-- TOC entry 3003 (class 0 OID 16999)
-- Dependencies: 216
-- Data for Name: facture; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3006 (class 0 OID 17019)
-- Dependencies: 219
-- Data for Name: point_de_vente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.point_de_vente (siret, id_adresse_du_site) VALUES (80295478500028, 2);


--
-- TOC entry 3012 (class 0 OID 17057)
-- Dependencies: 225
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2990 (class 0 OID 16920)
-- Dependencies: 203
-- Data for Name: statut; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3001 (class 0 OID 16988)
-- Dependencies: 214
-- Data for Name: etat_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3013 (class 0 OID 17065)
-- Dependencies: 226
-- Data for Name: commande_etat_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2995 (class 0 OID 16951)
-- Dependencies: 208
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3014 (class 0 OID 17073)
-- Dependencies: 227
-- Data for Name: ligne_de_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2992 (class 0 OID 16931)
-- Dependencies: 205
-- Data for Name: taille; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2996 (class 0 OID 16959)
-- Dependencies: 209
-- Data for Name: pizza; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2998 (class 0 OID 16969)
-- Dependencies: 211
-- Data for Name: recette; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2999 (class 0 OID 16978)
-- Dependencies: 212
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 217
-- Name: adresse_id_adresse_seq_2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresse_id_adresse_seq_2', 3, true);


--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 206
-- Name: categorie_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorie_id_seq_1', 1, false);


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 213
-- Name: etat_commande_statut_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.etat_commande_statut_seq', 1, false);


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 215
-- Name: facture_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facture_id_seq_1', 1, false);


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 210
-- Name: recette_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recette_id_seq', 1, false);


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 220
-- Name: role_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_seq_1', 4, true);


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 202
-- Name: statut_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statut_id_seq_1', 1, false);


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 204
-- Name: taille_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taille_id_seq_1', 1, false);


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 222
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilisateur_id_utilisateur_seq', 5, true);


-- Completed on 2019-12-17 08:28:06

--
-- PostgreSQL database dump complete
--

