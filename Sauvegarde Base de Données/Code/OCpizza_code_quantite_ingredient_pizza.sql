CREATE SEQUENCE public.ingredient_pizza_id_quantite_seq;

CREATE TABLE public.ingredient_pizza (
                id NUMERIC NOT NULL DEFAULT nextval('public.ingredient_pizza_id_quantite_seq'),
                id_pizza NUMERIC NOT NULL,
                id_produit NUMERIC NOT NULL,
                quantite NUMERIC NOT NULL,
                id_taille NUMERIC NOT NULL,
                CONSTRAINT ingredient_pizza_pk PRIMARY KEY (id)
);

ALTER SEQUENCE public.ingredient_pizza_id_quantite_seq OWNED BY public.ingredient_pizza.id;

ALTER TABLE public.ingredient_pizza ADD CONSTRAINT pizza_ingredient_pizza_fk
FOREIGN KEY (id_pizza)
REFERENCES public.pizza (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


ALTER TABLE public.ingredient_pizza ADD CONSTRAINT produit_ingredient_pizza_fk
FOREIGN KEY (id_produit)
REFERENCES public.produit (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ingredient_pizza ADD CONSTRAINT taille_ingredient_pizza_fk
FOREIGN KEY (id_taille)
REFERENCES public.taille (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

SELECT * FROM pizza
WHERE
pizza.id IN (                             
SELECT recette.id FROM recette
	WHERE pizza.nom = 'margherita'
);

SELECT * FROM ingredient_pizza
SELECT * FROM produit
SELECT * FROM recette

SELECT pizza.nom, recette.recette, ingredient_pizza.*
FROM pizza
JOIN recette  ON pizza.id = recette.id
JOIN ingredient_pizza ON pizza.id = ingredient_pizza.id_pizza
WHERE ingredient_pizza.id = null;

INSERT INTO ingredient_pizza(id_pizza, id_produit, quantite)
VALUES
(1, 23, 80),
(1, 12, 1),
(1, 1, 80),
(1, 6, 150),
(1, 5, 1),
(1, 24, 3),
(2, 23, 80),
(2, 3, 1.5),
(2, 12, 1),
(2, 1, 80),
(2, 6, 150),
(2, 5, 1),
(2, 24, 3),
(4, 23, 80),
(4, 12, 1),
(4, 1, 80),
(4, 22, 150),
(4, 5, 1),
(4, 24, 3),
(4, 4, 60);


