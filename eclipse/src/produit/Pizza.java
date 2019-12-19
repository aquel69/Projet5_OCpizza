package produit;

public class Pizza {
	
	private String nom;
	private String description;
	private Produit ingredient;
	private Taille taille;
	
	public Pizza(String nom, String description, Produit ingredient, Taille taille) {
		super();
		this.nom = nom;
		this.description = description;
		this.ingredient = ingredient;
		this.taille = taille;
	}
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getDescritpion() {
		return description;
	}
	public void setDescritpion(String descritpion) {
		this.description = descritpion;
	}
	public Produit getIngredient() {
		return ingredient;
	}
	public void setIngredient(Produit ingredient) {
		this.ingredient = ingredient;
	}
	public Taille getTaille() {
		return taille;
	}
	public void setTaille(Taille taille) {
		this.taille = taille;
	}
	
	@Override
	public String toString() {
		return "Pizza [nom=" + nom + ", description=" + description + ", Ingredient=" + ingredient + ", taille="
				+ taille + "]";
	}
	
	
	
}
