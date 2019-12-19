package commande;

import produit.Produit;

public class LigneDeCommande {
	
	private Commande commande;
	private Produit produit;
	private int quantite;
	private Double prixUnitaire;
	private Double TVA;
	
	public LigneDeCommande(Commande commande, Produit produit, int quantite, Double prixUnitaire, Double tVA) {
		super();
		this.commande = commande;
		this.produit = produit;
		this.quantite = quantite;
		this.prixUnitaire = prixUnitaire;
		TVA = tVA;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
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

	public Double getPrixUnitaire() {
		return prixUnitaire;
	}

	public void setPrixUnitaire(Double prixUnitaire) {
		this.prixUnitaire = prixUnitaire;
	}

	public Double getTVA() {
		return TVA;
	}

	public void setTVA(Double tVA) {
		TVA = tVA;
	}

	@Override
	public String toString() {
		return "LigneDeCommande [commande=" + commande + ", produit=" + produit + ", quantite=" + quantite
				+ ", prixUnitaire=" + prixUnitaire + ", TVA=" + TVA + "]";
	}
					
}
