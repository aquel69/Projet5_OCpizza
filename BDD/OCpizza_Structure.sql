--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2019-12-17 08:30:35

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 17010)
-- Name: adresse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adresse (
    id numeric NOT NULL,
    voie character varying(50) NOT NULL,
    complement character varying(50),
    code_postal numeric(5,0) NOT NULL,
    commune character varying(25) NOT NULL
);


ALTER TABLE public.adresse OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17008)
-- Name: adresse_id_adresse_seq_2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.adresse_id_adresse_seq_2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adresse_id_adresse_seq_2 OWNER TO postgres;

--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 217
-- Name: adresse_id_adresse_seq_2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adresse_id_adresse_seq_2 OWNED BY public.adresse.id;


--
-- TOC entry 229 (class 1259 OID 17089)
-- Name: authentification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentification (
    id numeric NOT NULL,
    username character varying(20) NOT NULL,
    password character varying(25) NOT NULL
);


ALTER TABLE public.authentification OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16942)
-- Name: categorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorie (
    id character varying NOT NULL,
    classe character varying(20) NOT NULL,
    sous_classe character varying(25) NOT NULL
);


ALTER TABLE public.categorie OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16940)
-- Name: categorie_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorie_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorie_id_seq_1 OWNER TO postgres;

--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 206
-- Name: categorie_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorie_id_seq_1 OWNED BY public.categorie.id;


--
-- TOC entry 228 (class 1259 OID 17081)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id numeric NOT NULL,
    numero numeric(10,0) NOT NULL,
    email character varying(50) NOT NULL,
    id_adresse_livraison numeric NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17057)
-- Name: commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande (
    id numeric NOT NULL,
    numero numeric NOT NULL,
    date_enregistrement timestamp without time zone NOT NULL,
    id_facture numeric NOT NULL,
    id_adresse_de_livraison numeric NOT NULL,
    id_1 numeric NOT NULL,
    siret numeric(14,0) NOT NULL
);


ALTER TABLE public.commande OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17065)
-- Name: commande_etat_commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande_etat_commande (
    id numeric NOT NULL,
    id_commande numeric NOT NULL,
    id_etat_commande numeric NOT NULL
);


ALTER TABLE public.commande_etat_commande OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17049)
-- Name: employe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employe (
    id_utilisateur numeric NOT NULL,
    numero_employe numeric NOT NULL,
    id_role numeric NOT NULL
);


ALTER TABLE public.employe OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16988)
-- Name: etat_commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.etat_commande (
    id numeric NOT NULL,
    id_statut numeric NOT NULL,
    date timestamp without time zone NOT NULL
);


ALTER TABLE public.etat_commande OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16986)
-- Name: etat_commande_statut_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.etat_commande_statut_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etat_commande_statut_seq OWNER TO postgres;

--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 213
-- Name: etat_commande_statut_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.etat_commande_statut_seq OWNED BY public.etat_commande.id;


--
-- TOC entry 216 (class 1259 OID 16999)
-- Name: facture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facture (
    id numeric NOT NULL,
    numero character varying(10) NOT NULL,
    date timestamp without time zone NOT NULL,
    montant_ht numeric NOT NULL,
    tva numeric NOT NULL
);


ALTER TABLE public.facture OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16997)
-- Name: facture_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facture_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facture_id_seq_1 OWNER TO postgres;

--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 215
-- Name: facture_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facture_id_seq_1 OWNED BY public.facture.id;


--
-- TOC entry 227 (class 1259 OID 17073)
-- Name: ligne_de_commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ligne_de_commande (
    id numeric NOT NULL,
    id_commande numeric NOT NULL,
    id_produit numeric NOT NULL,
    quantite numeric(4,0) NOT NULL,
    prix_unitaire_ht numeric(5,0) NOT NULL,
    tva numeric(4,0) NOT NULL
);


ALTER TABLE public.ligne_de_commande OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16959)
-- Name: pizza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pizza (
    id numeric NOT NULL,
    nom character varying(25) NOT NULL,
    description character varying(1000) NOT NULL,
    id_ingredient numeric NOT NULL,
    id_taille numeric NOT NULL
);


ALTER TABLE public.pizza OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17019)
-- Name: point_de_vente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.point_de_vente (
    siret numeric(14,0) NOT NULL,
    id_adresse_du_site numeric NOT NULL
);


ALTER TABLE public.point_de_vente OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16951)
-- Name: produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit (
    id numeric NOT NULL,
    reference_article character varying NOT NULL,
    libelle character varying(100) NOT NULL,
    composition character varying(250) NOT NULL,
    date_de_peremption date,
    prix_unitaire_ht numeric(5,0) NOT NULL,
    tva numeric(4,0) NOT NULL,
    id_pizza numeric NOT NULL,
    id_categorie character varying NOT NULL
);


ALTER TABLE public.produit OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16969)
-- Name: recette; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recette (
    id numeric NOT NULL,
    id_pizza numeric NOT NULL,
    recette character varying(1000) NOT NULL
);


ALTER TABLE public.recette OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16967)
-- Name: recette_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recette_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recette_id_seq OWNER TO postgres;

--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 210
-- Name: recette_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recette_id_seq OWNED BY public.recette.id;


--
-- TOC entry 221 (class 1259 OID 17029)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id numeric NOT NULL,
    role character varying(30) NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17027)
-- Name: role_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq_1 OWNER TO postgres;

--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 220
-- Name: role_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_id_seq_1 OWNED BY public.role.id;


--
-- TOC entry 203 (class 1259 OID 16920)
-- Name: statut; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statut (
    id numeric NOT NULL,
    code character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.statut OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16918)
-- Name: statut_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statut_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statut_id_seq_1 OWNER TO postgres;

--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 202
-- Name: statut_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statut_id_seq_1 OWNED BY public.statut.id;


--
-- TOC entry 212 (class 1259 OID 16978)
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    code_ean character varying(13) NOT NULL,
    id_produit_de_base numeric NOT NULL,
    quantite numeric(4,0) NOT NULL,
    date_achat date NOT NULL
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16931)
-- Name: taille; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taille (
    id_taille numeric NOT NULL,
    taille character varying NOT NULL,
    quantite_produit numeric NOT NULL
);


ALTER TABLE public.taille OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16929)
-- Name: taille_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taille_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taille_id_seq_1 OWNER TO postgres;

--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 204
-- Name: taille_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taille_id_seq_1 OWNED BY public.taille.id_taille;


--
-- TOC entry 223 (class 1259 OID 17040)
-- Name: utilisateur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateur (
    id numeric NOT NULL,
    nom character varying(25) NOT NULL,
    prenom character varying(20) NOT NULL,
    date_de_naissance date NOT NULL,
    date_creation_de_compte timestamp without time zone NOT NULL,
    numero_de_telephone_mobile character varying(10) NOT NULL,
    numero_de_telephone_fixe character varying(10),
    id_adresse_postale numeric NOT NULL
);


ALTER TABLE public.utilisateur OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17038)
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.utilisateur_id_utilisateur_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.utilisateur_id_utilisateur_seq OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 222
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.utilisateur_id_utilisateur_seq OWNED BY public.utilisateur.id;


--
-- TOC entry 2800 (class 2604 OID 17013)
-- Name: adresse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse ALTER COLUMN id SET DEFAULT nextval('public.adresse_id_adresse_seq_2'::regclass);


--
-- TOC entry 2796 (class 2604 OID 16945)
-- Name: categorie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorie ALTER COLUMN id SET DEFAULT nextval('public.categorie_id_seq_1'::regclass);


--
-- TOC entry 2798 (class 2604 OID 16991)
-- Name: etat_commande id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etat_commande ALTER COLUMN id SET DEFAULT nextval('public.etat_commande_statut_seq'::regclass);


--
-- TOC entry 2799 (class 2604 OID 17002)
-- Name: facture id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture ALTER COLUMN id SET DEFAULT nextval('public.facture_id_seq_1'::regclass);


--
-- TOC entry 2797 (class 2604 OID 16972)
-- Name: recette id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recette ALTER COLUMN id SET DEFAULT nextval('public.recette_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 17032)
-- Name: role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq_1'::regclass);


--
-- TOC entry 2794 (class 2604 OID 16923)
-- Name: statut id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statut ALTER COLUMN id SET DEFAULT nextval('public.statut_id_seq_1'::regclass);


--
-- TOC entry 2795 (class 2604 OID 16934)
-- Name: taille id_taille; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taille ALTER COLUMN id_taille SET DEFAULT nextval('public.taille_id_seq_1'::regclass);


--
-- TOC entry 2802 (class 2604 OID 17043)
-- Name: utilisateur id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur ALTER COLUMN id SET DEFAULT nextval('public.utilisateur_id_utilisateur_seq'::regclass);


--
-- TOC entry 2822 (class 2606 OID 17018)
-- Name: adresse adresse_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_pk PRIMARY KEY (id);


--
-- TOC entry 2840 (class 2606 OID 17096)
-- Name: authentification authentification_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentification
    ADD CONSTRAINT authentification_pk PRIMARY KEY (id);


--
-- TOC entry 2808 (class 2606 OID 16950)
-- Name: categorie categorie_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorie
    ADD CONSTRAINT categorie_pk PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 17088)
-- Name: client client_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pk PRIMARY KEY (id);


--
-- TOC entry 2834 (class 2606 OID 17072)
-- Name: commande_etat_commande commande_etat_commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_etat_commande
    ADD CONSTRAINT commande_etat_commande_pk PRIMARY KEY (id);


--
-- TOC entry 2832 (class 2606 OID 17064)
-- Name: commande commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pk PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 17056)
-- Name: employe employe_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT employe_pk PRIMARY KEY (id_utilisateur);


--
-- TOC entry 2818 (class 2606 OID 16996)
-- Name: etat_commande etat_commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etat_commande
    ADD CONSTRAINT etat_commande_pk PRIMARY KEY (id);


--
-- TOC entry 2820 (class 2606 OID 17007)
-- Name: facture facture_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_pk PRIMARY KEY (id);


--
-- TOC entry 2836 (class 2606 OID 17080)
-- Name: ligne_de_commande ligne_de_commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_de_commande
    ADD CONSTRAINT ligne_de_commande_pk PRIMARY KEY (id);


--
-- TOC entry 2812 (class 2606 OID 16966)
-- Name: pizza pizza_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pk PRIMARY KEY (id);


--
-- TOC entry 2824 (class 2606 OID 17026)
-- Name: point_de_vente point_de_vente_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.point_de_vente
    ADD CONSTRAINT point_de_vente_pk PRIMARY KEY (siret);


--
-- TOC entry 2810 (class 2606 OID 16958)
-- Name: produit produit_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pk PRIMARY KEY (id);


--
-- TOC entry 2814 (class 2606 OID 16977)
-- Name: recette recette_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recette
    ADD CONSTRAINT recette_pk PRIMARY KEY (id);


--
-- TOC entry 2826 (class 2606 OID 17037)
-- Name: role role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pk PRIMARY KEY (id);


--
-- TOC entry 2804 (class 2606 OID 16928)
-- Name: statut statut_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statut
    ADD CONSTRAINT statut_pk PRIMARY KEY (id);


--
-- TOC entry 2816 (class 2606 OID 16985)
-- Name: stock stock_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pk PRIMARY KEY (code_ean);


--
-- TOC entry 2806 (class 2606 OID 16939)
-- Name: taille taille_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taille
    ADD CONSTRAINT taille_pk PRIMARY KEY (id_taille);


--
-- TOC entry 2828 (class 2606 OID 17048)
-- Name: utilisateur utilisateur_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pk PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 17152)
-- Name: client adresse_client_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT adresse_client_fk FOREIGN KEY (id_adresse_livraison) REFERENCES public.adresse(id);


--
-- TOC entry 2853 (class 2606 OID 17162)
-- Name: commande adresse_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT adresse_commande_fk FOREIGN KEY (id_adresse_de_livraison) REFERENCES public.adresse(id);


--
-- TOC entry 2848 (class 2606 OID 17157)
-- Name: point_de_vente adresse_point_de_vente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.point_de_vente
    ADD CONSTRAINT adresse_point_de_vente_fk FOREIGN KEY (id_adresse_du_site) REFERENCES public.adresse(id);


--
-- TOC entry 2849 (class 2606 OID 17147)
-- Name: utilisateur adresse_utilisateur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT adresse_utilisateur_fk FOREIGN KEY (id_adresse_postale) REFERENCES public.adresse(id);


--
-- TOC entry 2841 (class 2606 OID 17107)
-- Name: produit categorie_produit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT categorie_produit_fk FOREIGN KEY (id_categorie) REFERENCES public.categorie(id);


--
-- TOC entry 2857 (class 2606 OID 17202)
-- Name: commande_etat_commande commande_commande_etat_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_etat_commande
    ADD CONSTRAINT commande_commande_etat_commande_fk FOREIGN KEY (id_commande) REFERENCES public.commande(id);


--
-- TOC entry 2859 (class 2606 OID 17197)
-- Name: ligne_de_commande commande_ligne_de_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_de_commande
    ADD CONSTRAINT commande_ligne_de_commande_fk FOREIGN KEY (id_commande) REFERENCES public.commande(id);


--
-- TOC entry 2855 (class 2606 OID 17192)
-- Name: commande employe_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT employe_commande_fk FOREIGN KEY (id_1) REFERENCES public.employe(id_utilisateur);


--
-- TOC entry 2856 (class 2606 OID 17137)
-- Name: commande_etat_commande etat_commande_commande_etat_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_etat_commande
    ADD CONSTRAINT etat_commande_commande_etat_commande_fk FOREIGN KEY (id_etat_commande) REFERENCES public.etat_commande(id);


--
-- TOC entry 2852 (class 2606 OID 17142)
-- Name: commande facture_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT facture_commande_fk FOREIGN KEY (id_facture) REFERENCES public.facture(id);


--
-- TOC entry 2842 (class 2606 OID 17127)
-- Name: produit pizza_produit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT pizza_produit_fk FOREIGN KEY (id_pizza) REFERENCES public.pizza(id);


--
-- TOC entry 2845 (class 2606 OID 17132)
-- Name: recette pizza_recette_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recette
    ADD CONSTRAINT pizza_recette_fk FOREIGN KEY (id_pizza) REFERENCES public.pizza(id);


--
-- TOC entry 2854 (class 2606 OID 17167)
-- Name: commande point_de_vente_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT point_de_vente_commande_fk FOREIGN KEY (siret) REFERENCES public.point_de_vente(siret);


--
-- TOC entry 2858 (class 2606 OID 17112)
-- Name: ligne_de_commande produit_ligne_de_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_de_commande
    ADD CONSTRAINT produit_ligne_de_commande_fk FOREIGN KEY (id_produit) REFERENCES public.produit(id);


--
-- TOC entry 2844 (class 2606 OID 17122)
-- Name: pizza produit_pizza_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT produit_pizza_fk FOREIGN KEY (id_ingredient) REFERENCES public.produit(id);


--
-- TOC entry 2846 (class 2606 OID 17117)
-- Name: stock produit_stock_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT produit_stock_fk FOREIGN KEY (id_produit_de_base) REFERENCES public.produit(id);


--
-- TOC entry 2850 (class 2606 OID 17172)
-- Name: employe role_employe_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT role_employe_fk FOREIGN KEY (id_role) REFERENCES public.role(id);


--
-- TOC entry 2847 (class 2606 OID 17097)
-- Name: etat_commande statut_etat_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etat_commande
    ADD CONSTRAINT statut_etat_commande_fk FOREIGN KEY (id_statut) REFERENCES public.statut(id);


--
-- TOC entry 2843 (class 2606 OID 17102)
-- Name: pizza taille_pizza_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT taille_pizza_fk FOREIGN KEY (id_taille) REFERENCES public.taille(id_taille);


--
-- TOC entry 2862 (class 2606 OID 17177)
-- Name: authentification utilisateur_authentification_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentification
    ADD CONSTRAINT utilisateur_authentification_fk FOREIGN KEY (id) REFERENCES public.utilisateur(id);


--
-- TOC entry 2861 (class 2606 OID 17182)
-- Name: client utilisateur_client_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT utilisateur_client_fk FOREIGN KEY (id) REFERENCES public.utilisateur(id);


--
-- TOC entry 2851 (class 2606 OID 17187)
-- Name: employe utilisateur_employe_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT utilisateur_employe_fk FOREIGN KEY (id_utilisateur) REFERENCES public.utilisateur(id);


-- Completed on 2019-12-17 08:30:35

--
-- PostgreSQL database dump complete
--

