package produit;

public enum Recette {
	
	margherita(1, "Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.Prenez un paton et étalez la pâte, jusqu'à la dimension voulue. Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d'un doigt vers les bords. Ajoutez 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d'herbes à pizza ainsi que 3g d'olives(environ 7 olives). Faite la chauffer pendant 8 mn au four."),
	regina(2, "Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande. Prenez un paton et étalez la pâte, jusqu'à la dimension voulue. Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d'un doigt vers les bords. Ajoutez 1.5 tranches de jambon, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d'herbes à pizza ainsi que 3g d'olives(environ 7 olives). Faite la chauffer pendant 9 mn au four."),
	reine(3 , "Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.Prenez un paton et étalez la pâte, jusqu'à la dimension voulue. Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d'un doigt vers les bords. Ajoutez 1.5 tranches de jambon et 50g de champignon, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d'herbes à pizza ainsi que 3g d'olives(environ 7 olives). Faite la chauffer pendant 9 mn au four."),
	norvegienne(4, "Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.Prenez un paton et étalez la pâte, jusqu'à la dimension voulue. Prenez 150 millilitre de crème et étalez là sur toute la surface, en laissant la taille d'un doigt vers les bords. Ajoutez 60g de saumon fumé, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d'herbes à pizza ainsi que 3g d'olives(environ 7 olives). Faite la chauffer pendant 9 mn au four.");
	
	
	private int pizza;
	private String recette;
	
	private Recette(int pizza, String recette) {
		this.pizza = pizza;
		this.recette = recette;
	}

	public int getPizza() {
		return pizza;
	}

	public void setPizza(int pizza) {
		this.pizza = pizza;
	}

	public String getRecette() {
		return recette;
	}

	public void setRecette(String recette) {
		this.recette = recette;
	}

			
}	
