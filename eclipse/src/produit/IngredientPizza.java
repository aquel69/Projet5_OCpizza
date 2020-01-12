package produit;


public enum IngredientPizza {
		
	mozzarella1("margherita", "mozzarella", 80),
	paton1("margherita", "paton", 1),
	tomate1("margherita", "tomate", 80),
	sauceTomate1("margherita", "sauce tomate", 150),
	melangeHerbe1("margherita", "melange Herbe", 1),
	olive1("margherita", "olive", 3),
	mozzarella2("regina", "mozzarella", 80),
	jambon2("regina", "jambon", 1.5f),
	paton2("regina", "paton", 1),
	tomate2("regina", "tomate", 80),
	sauceTomate2("regina", "sauce tomate", 150),
	melangeHerbe2("regina", "melange Herbe", 1),
	olive2("regina", "olive", 3),
	mozzarella4("norvegienne", "mozzarella", 80),
	paton4("norvegienne", "paton", 1),
	tomate4("norvegienne", "tomate", 80),
	sauceTomate4("norvegienne", "sauce tomate", 150),
	melangeHerbe4("norvegienne", "melange Herbe", 1),
	olive4("norvegienne", "olive", 3),
	saumon4("norvegienne", "saumon", 60);
	 	
	private String pizza;
	private String produit;
	private float quantite;
	
	
	private IngredientPizza(String pizza, String produit, float quantite) {
		this.pizza = pizza;
		this.produit = produit;
		this.quantite = quantite;
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
	
		
}
