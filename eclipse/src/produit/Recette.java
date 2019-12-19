package produit;

public class Recette {
	
	private Pizza pizza;
	private String recette;
	
	public Recette(Pizza pizza, String recette) {
		super();
		this.pizza = pizza;
		this.recette = recette;
	}

	public Pizza getPizza() {
		return pizza;
	}

	public void setPizza(Pizza pizza) {
		this.pizza = pizza;
	}

	public String getRecette() {
		return recette;
	}

	public void setRecette(String recette) {
		this.recette = recette;
	}

	@Override
	public String toString() {
		return "Recette [pizza=" + pizza + ", recette=" + recette + "]";
	}
	
		
}	
