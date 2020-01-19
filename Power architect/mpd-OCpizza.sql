
CREATE SEQUENCE public.statut_id_seq_1;

CREATE TABLE public.statut (
                id NUMERIC NOT NULL DEFAULT nextval('public.statut_id_seq_1'),
                code VARCHAR NOT NULL,
                description VARCHAR NOT NULL,
                CONSTRAINT statut_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.statut_id_seq_1 OWNED BY public.statut.id;

CREATE TABLE public.taille (
                id NUMERIC NOT NULL,
                taille VARCHAR NOT NULL,
                facteur_quantite NUMERIC NOT NULL,
                CONSTRAINT taille_pk PRIMARY KEY (id)
);


CREATE SEQUENCE public.pizza_id_seq_2_1_1;

CREATE TABLE public.pizza (
                id NUMERIC NOT NULL DEFAULT nextval('public.pizza_id_seq_2_1_1'),
                nom VARCHAR NOT NULL,
                CONSTRAINT pizza_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.pizza_id_seq_2_1_1 OWNED BY public.pizza.id;

CREATE TABLE public.recette (
                id NUMERIC NOT NULL,
                recette VARCHAR(1000) NOT NULL,
                CONSTRAINT recette_pk PRIMARY KEY (id)
);


CREATE SEQUENCE public.categorie_id_seq_1;

CREATE TABLE public.categorie (
                id VARCHAR NOT NULL DEFAULT nextval('public.categorie_id_seq_1'),
                categorie VARCHAR NOT NULL,
                classe VARCHAR(20) NOT NULL,
                sous_classe VARCHAR(25) NOT NULL,
                CONSTRAINT categorie_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.categorie_id_seq_1 OWNED BY public.categorie.id;

CREATE SEQUENCE public.produit_id_seq_1;

CREATE TABLE public.produit (
                id NUMERIC NOT NULL DEFAULT nextval('public.produit_id_seq_1'),
                reference_article VARCHAR NOT NULL,
                libelle VARCHAR(100) NOT NULL,
                composition VARCHAR(250) NOT NULL,
                prix_unitaire_HT NUMERIC(5) NOT NULL,
                TVA NUMERIC(4),
                id_categorie VARCHAR NOT NULL,
                unite VARCHAR NOT NULL,
                CONSTRAINT produit_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.produit_id_seq_1 OWNED BY public.produit.id;

CREATE SEQUENCE public.ingredient_pizza_id_seq;

CREATE TABLE public.ingredient_pizza (
                id NUMERIC NOT NULL DEFAULT nextval('public.ingredient_pizza_id_seq'),
                id_pizza NUMERIC NOT NULL,
                id_produit NUMERIC NOT NULL,
                quantite NUMERIC NOT NULL,
                facteur_quantite NUMERIC NOT NULL,
                CONSTRAINT ingredient_pizza_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.ingredient_pizza_id_seq OWNED BY public.ingredient_pizza.id;

CREATE TABLE public.stock (
                code_EAN VARCHAR(13) NOT NULL,
                date_de_peremption DATE,
                id_produit_de_base NUMERIC NOT NULL,
                quantite_restante NUMERIC NOT NULL,
                date_achat DATE NOT NULL,
                CONSTRAINT stock_pk PRIMARY KEY (code_EAN)
);


CREATE SEQUENCE public.etat_commande_statut_seq;

CREATE TABLE public.etat_commande (
                id NUMERIC NOT NULL DEFAULT nextval('public.etat_commande_statut_seq'),
                id_statut NUMERIC NOT NULL,
                date TIMESTAMP NOT NULL,
                CONSTRAINT etat_commande_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.etat_commande_statut_seq OWNED BY public.etat_commande.id;

CREATE SEQUENCE public.adresse_id_adresse_seq_2;

CREATE TABLE public.adresse (
                id NUMERIC NOT NULL DEFAULT nextval('public.adresse_id_adresse_seq_2'),
                voie VARCHAR(50) NOT NULL,
                complement VARCHAR(50),
                code_postal NUMERIC(5) NOT NULL,
                commune VARCHAR(25) NOT NULL,
                CONSTRAINT adresse_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.adresse_id_adresse_seq_2 OWNED BY public.adresse.id;

CREATE TABLE public.point_de_vente (
                siret NUMERIC(14) NOT NULL,
                id_adresse_du_site NUMERIC NOT NULL,
                CONSTRAINT point_de_vente_pk PRIMARY KEY (siret)
);


CREATE TABLE public.role (
                id NUMERIC NOT NULL,
                role VARCHAR(15) NOT NULL,
                description VARCHAR NOT NULL,
                CONSTRAINT role_pk PRIMARY KEY (id)
);


CREATE SEQUENCE public.utilisateur_id_utilisateur_seq;

CREATE TABLE public.utilisateur (
                id NUMERIC NOT NULL DEFAULT nextval('public.utilisateur_id_utilisateur_seq'),
                nom VARCHAR(25) NOT NULL,
                prenom VARCHAR(20) NOT NULL,
                date_de_naissance DATE NOT NULL,
                date_creation_de_compte TIMESTAMP NOT NULL,
                numero_de_telephone_mobile VARCHAR(10) NOT NULL,
                numero_de_telephone_fixe VARCHAR(10),
                id_adresse_postale NUMERIC NOT NULL,
                email VARCHAR NOT NULL,
                type NUMERIC NOT NULL,
                CONSTRAINT utilisateur_pk PRIMARY KEY (id)
);
COMMENT ON COLUMN public.utilisateur.type IS 'le type d''utilisateur correspond a :
1 : gérant
2 : responsable
3 : pizzaiolo
4 : livreur
5 : client';


ALTER SEQUENCE public.utilisateur_id_utilisateur_seq OWNED BY public.utilisateur.id;

CREATE TABLE public.employe (
                id NUMERIC NOT NULL,
                numero_employe NUMERIC NOT NULL,
                id_role NUMERIC NOT NULL,
                CONSTRAINT employe_pk PRIMARY KEY (id)
);


CREATE SEQUENCE public.commande_numero_seq;

CREATE TABLE public.commande (
                id NUMERIC NOT NULL DEFAULT nextval('public.commande_numero_seq'),
                numero NUMERIC NOT NULL,
                date_enregistrement TIMESTAMP NOT NULL,
                id_adresse_de_livraison NUMERIC NOT NULL,
                id_1 NUMERIC NOT NULL,
                siret NUMERIC(14) NOT NULL,
                CONSTRAINT commande_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.commande_numero_seq OWNED BY public.commande.id;

CREATE SEQUENCE public.facture_id_seq_1;

CREATE TABLE public.facture (
                id NUMERIC NOT NULL DEFAULT nextval('public.facture_id_seq_1'),
                numero VARCHAR(10) NOT NULL,
                date TIMESTAMP NOT NULL,
                montant_HT NUMERIC NOT NULL,
                TVA NUMERIC NOT NULL,
                id_commande NUMERIC NOT NULL,
                CONSTRAINT facture_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.facture_id_seq_1 OWNED BY public.facture.id;

CREATE SEQUENCE public.commande_etat_commande_id_seq;

CREATE TABLE public.commande_etat_commande (
                id NUMERIC NOT NULL DEFAULT nextval('public.commande_etat_commande_id_seq'),
                id_commande NUMERIC NOT NULL,
                id_etat_commande NUMERIC NOT NULL,
                CONSTRAINT commande_etat_commande_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.commande_etat_commande_id_seq OWNED BY public.commande_etat_commande.id;

CREATE SEQUENCE public.ligne_de_commande_id_seq;

CREATE TABLE public.ligne_de_commande (
                id NUMERIC NOT NULL DEFAULT nextval('public.ligne_de_commande_id_seq'),
                id_commande NUMERIC NOT NULL,
                id_produit NUMERIC NOT NULL,
                quantite NUMERIC(4) NOT NULL,
                prix_unitaire_HT NUMERIC(5) NOT NULL,
                TVA NUMERIC(4) NOT NULL,
                CONSTRAINT ligne_de_commande_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.ligne_de_commande_id_seq OWNED BY public.ligne_de_commande.id;

CREATE TABLE public.client (
                id NUMERIC NOT NULL,
                numero NUMERIC(10) NOT NULL,
                id_adresse_livraison NUMERIC NOT NULL,
                CONSTRAINT client_pk PRIMARY KEY (id)
);


CREATE TABLE public.authentification (
                id_utilisateur NUMERIC NOT NULL,
                username VARCHAR(20) NOT NULL,
                password VARCHAR(25) NOT NULL,
                CONSTRAINT authentification_pk PRIMARY KEY (id_utilisateur)
);


ALTER TABLE public.etat_commande ADD CONSTRAINT statut_etat_commande_fk
FOREIGN KEY (id_statut)
REFERENCES public.statut (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ingredient_pizza ADD CONSTRAINT taille_ingredient_pizza_fk
FOREIGN KEY (facteur_quantite)
REFERENCES public.taille (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ingredient_pizza ADD CONSTRAINT pizza_quantite_ingredient_pizza_fk
FOREIGN KEY (id_pizza)
REFERENCES public.pizza (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.recette ADD CONSTRAINT pizza_recette_fk
FOREIGN KEY (id)
REFERENCES public.pizza (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.produit ADD CONSTRAINT categorie_produit_fk
FOREIGN KEY (id_categorie)
REFERENCES public.categorie (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ligne_de_commande ADD CONSTRAINT produit_ligne_de_commande_fk
FOREIGN KEY (id_produit)
REFERENCES public.produit (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.stock ADD CONSTRAINT produit_stock_fk
FOREIGN KEY (id_produit_de_base)
REFERENCES public.produit (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ingredient_pizza ADD CONSTRAINT produit_quantite_ingredient_pizza_fk
FOREIGN KEY (id_produit)
REFERENCES public.produit (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.commande_etat_commande ADD CONSTRAINT etat_commande_commande_etat_commande_fk
FOREIGN KEY (id_etat_commande)
REFERENCES public.etat_commande (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.utilisateur ADD CONSTRAINT adresse_utilisateur_fk
FOREIGN KEY (id_adresse_postale)
REFERENCES public.adresse (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.client ADD CONSTRAINT adresse_client_fk
FOREIGN KEY (id_adresse_livraison)
REFERENCES public.adresse (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.point_de_vente ADD CONSTRAINT adresse_point_de_vente_fk
FOREIGN KEY (id_adresse_du_site)
REFERENCES public.adresse (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.commande ADD CONSTRAINT adresse_commande_fk
FOREIGN KEY (id_adresse_de_livraison)
REFERENCES public.adresse (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.commande ADD CONSTRAINT point_de_vente_commande_fk
FOREIGN KEY (siret)
REFERENCES public.point_de_vente (siret)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.employe ADD CONSTRAINT role_employe_fk
FOREIGN KEY (id_role)
REFERENCES public.role (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.authentification ADD CONSTRAINT utilisateur_authentification_fk
FOREIGN KEY (id_utilisateur)
REFERENCES public.utilisateur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.client ADD CONSTRAINT utilisateur_client_fk
FOREIGN KEY (id)
REFERENCES public.utilisateur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.employe ADD CONSTRAINT utilisateur_employe_fk
FOREIGN KEY (id)
REFERENCES public.utilisateur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.commande ADD CONSTRAINT employe_commande_fk
FOREIGN KEY (id_1)
REFERENCES public.employe (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ligne_de_commande ADD CONSTRAINT commande_ligne_de_commande_fk
FOREIGN KEY (id_commande)
REFERENCES public.commande (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.commande_etat_commande ADD CONSTRAINT commande_commande_etat_commande_fk
FOREIGN KEY (id_commande)
REFERENCES public.commande (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.facture ADD CONSTRAINT commande_facture_fk
FOREIGN KEY (id_commande)
REFERENCES public.commande (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
