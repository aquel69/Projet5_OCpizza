package produit;

public class Pizza {
	
	private String nom;
	private String descritpion;
	private Produit ingredient;
	private Taille taille;
	
	public Pizza(String nom, String descritpion, Produit ingredient, Taille taille) {
		super();
		this.nom = nom;
		this.descritpion = descritpion;
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
		return descritpion;
	}
	public void setDescritpion(String descritpion) {
		this.descritpion = descritpion;
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
		return "Pizza [nom=" + nom + ", descritpion=" + descritpion + ", Ingredient=" + ingredient + ", taille="
				+ taille + "]";
	}
	
	
	
}
