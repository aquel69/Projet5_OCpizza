package produit;


public enum IngredientPizza {
		
	mozzarella1_1("margherita", "mozzarella", 80, 1),
	paton1_1("margherita", "paton", 1, 1),
	tomate1_1("margherita", "tomate", 80, 1),
	sauceTomate1_1("margherita", "sauce tomate", 150, 1),
	melangeHerbe1_1("margherita", "melange Herbe", 1, 1),
	olive1_1("margherita", "olive", 3, 1),
	mozzarella1_2("margherita", "mozzarella", 80, 2),
	paton1_2("margherita", "paton", 1, 2),
	tomate1_2("margherita", "tomate", 80, 2),
	sauceTomate1_2("margherita", "sauce tomate", 150, 2),
	melangeHerbe1_2("margherita", "melange Herbe", 1, 2),
	olive1_2("margherita", "olive", 3, 2),
	mozzarella1_3("margherita", "mozzarella", 80, 3),
	paton1_3("margherita", "paton", 1, 3),
	tomate1_3("margherita", "tomate", 80, 3),
	sauceTomate1_3("margherita", "sauce tomate", 150, 3),
	melangeHerbe1_3("margherita", "melange Herbe", 1, 3),
	olive1_3("margherita", "olive", 3, 3),
	mozzarella2("regina", "mozzarella", 80, 1),
	jambon2("regina", "jambon", 1.5f, 1),
	paton2("regina", "paton", 1, 1),
	tomate2("regina", "tomate", 80, 1),
	sauceTomate2("regina", "sauce tomate", 150, 1),
	melangeHerbe2("regina", "melange Herbe", 1, 1),
	olive2("regina", "olive", 3, 1),
	mozzarella4("norvegienne", "mozzarella", 80, 1),
	paton4("norvegienne", "paton", 1, 1),
	tomate4("norvegienne", "tomate", 80, 1),
	sauceTomate4("norvegienne", "sauce tomate", 150, 1),
	melangeHerbe4("norvegienne", "melange Herbe", 1, 1),
	olive4("norvegienne", "olive", 3, 1),
	saumon4("norvegienne", "saumon", 60, 1);
	 	
	private String pizza;
	private String produit;
	private float quantite;
	private int facteurQuantite;
			
	private IngredientPizza(String pizza, String produit, float quantite, int facteurQuantite) {
		this.pizza = pizza;
		this.produit = produit;
		this.quantite = quantite;
		this.facteurQuantite = facteurQuantite;
	}


	public String getPizza() {
		return pizza;
	}


	public void setPizza(String pizza) {
		this.pizza = pizza;
	}


	public String getProduit() {
		return produit;
	}


	public void setProduit(String produit) {
		this.produit = produit;
	}


	public float getQuantite() {
		return quantite;
	}


	public void setQuantite(float quantite) {
		this.quantite = quantite;
	}


	public int getFacteurQuantite() {
		return facteurQuantite;
	}


	public void setFacteurQuantite(int facteurQuantite) {
		this.facteurQuantite = facteurQuantite;
	}
			
		
}
