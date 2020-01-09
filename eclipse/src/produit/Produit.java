package produit;

public class Produit{
	
	private String referenceArticle;
	private String libelle;
	private String composition;
	private Double prixUnitaireHT;
	private Double TVA;
	private Categorie categorie;
	private String unite;
	
	public Produit(String referenceArticle, String libelle, String composition, Double prixUnitaireHT, Double tVA,
			Categorie categorie, String unite) {
		super();
		this.referenceArticle = referenceArticle;
		this.libelle = libelle;
		this.composition = composition;
		this.prixUnitaireHT = prixUnitaireHT;
		TVA = tVA;
		this.categorie = categorie;
		this.unite = unite;
	}

	public String getReferenceArticle() {
		return referenceArticle;
	}

	public void setReferenceArticle(String referenceArticle) {
		this.referenceArticle = referenceArticle;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public String getComposition() {
		return composition;
	}

	public void setComposition(String composition) {
		this.composition = composition;
	}

	public Double getPrixUnitaireHT() {
		return prixUnitaireHT;
	}

	public void setPrixUnitaireHT(Double prixUnitaireHT) {
		this.prixUnitaireHT = prixUnitaireHT;
	}

	public Double getTVA() {
		return TVA;
	}

	public void setTVA(Double tVA) {
		TVA = tVA;
	}

	public Categorie getCategorie() {
		return categorie;
	}

	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}

	public String getUnite() {
		return unite;
	}

	public void setUnite(String unite) {
		this.unite = unite;
	}

	@Override
	public String toString() {
		return "Produit [referenceArticle=" + referenceArticle + ", libelle=" + libelle + ", composition=" + composition
				+ ", prixUnitaireHT=" + prixUnitaireHT + ", TVA=" + TVA + ", categorie=" + categorie + ", unite="
				+ unite + "]";
	}		
	
				
}
