CREATE TABLE public.recette (
                id NUMERIC NOT NULL,
                recette VARCHAR(1000) NOT NULL,
                CONSTRAINT recette_pk PRIMARY KEY (id)
);

ALTER TABLE public.recette ADD CONSTRAINT pizza_recette_fk
FOREIGN KEY (id)
REFERENCES public.pizza (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

SELECT nom, recette FROM recette, pizza

WHERE recette.id = pizza.id

SELECT * FROM recette

DELETE FROM recette

INSERT INTO recette
VALUES
(1, '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)Prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 8 mn au four.'),
(2, '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 1.5 tranches de jambon, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 9 mn au four.'),
(3, '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 1.5 tranches de jambon et 50g de champignon, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 9 mn au four.'),
(4, '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de crème et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 60g de saumon fumé, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 9 mn au four.');
 