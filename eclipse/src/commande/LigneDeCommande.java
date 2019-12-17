package commande;

import produit.Produit;

public class LigneDeCommande {
	
	private Produit produit;
	private int quantite;
	
	public LigneDeCommande(Produit produit, int quantite) {
		super();
		this.produit = produit;
		this.quantite = quantite;
	}

	public Produit getProduit() {
		return produit;
	}

	public void setProduit(Produit produit) {
		this.produit = produit;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	@Override
	public String toString() {
		return "LigneDeCommande [produit=" + produit + ", quantite=" + quantite + "]";
	}
	
			
}
