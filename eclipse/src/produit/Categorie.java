package produit;

public class Categorie {
	
	String classe;
	String sousClasse;
	Produit produit;
	
	public Categorie(String classe, String sousClasse, Produit produit) {
		super();
		this.classe = classe;
		this.sousClasse = sousClasse;
		this.produit = produit;
	}

	public String getClasse() {
		return classe;
	}

	public void setClasse(String classe) {
		this.classe = classe;
	}

	public String getSousClasse() {
		return sousClasse;
	}

	public void setSousClasse(String sousClasse) {
		this.sousClasse = sousClasse;
	}

	public Produit getProduit() {
		return produit;
	}

	public void setProduit(Produit produit) {
		this.produit = produit;
	}

	@Override
	public String toString() {
		return "Categorie [classe=" + classe + ", sousClasse=" + sousClasse + ", produit=" + produit + "]";
	}
	
		
}
