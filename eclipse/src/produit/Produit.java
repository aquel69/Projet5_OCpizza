package produit;

import java.text.DateFormat;

public class Produit{
	
	private String referenceArticle;
	private Double prixUnitaireHT;
	private Double TVA;
	private DateFormat dateDePeremption;
	private Categorie categorie;
	private String libelle;
	private String composition;
	private Pizza pizza;
	
	public Produit(String referenceArticle, Double prixUnitaireHT, Double tVA, DateFormat dateDePeremption,
			Categorie categorie, String libelle, String composition, Pizza pizza) {
		super();
		this.referenceArticle = referenceArticle;
		this.prixUnitaireHT = prixUnitaireHT;
		TVA = tVA;
		this.dateDePeremption = dateDePeremption;
		this.categorie = categorie;
		this.libelle = libelle;
		this.composition = composition;
		this.pizza = pizza;
	}

	public String getReferenceArticle() {
		return referenceArticle;
	}

	public void setReferenceArticle(String referenceArticle) {
		this.referenceArticle = referenceArticle;
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

	public DateFormat getDateDePeremption() {
		return dateDePeremption;
	}

	public void setDateDePeremption(DateFormat dateDePeremption) {
		this.dateDePeremption = dateDePeremption;
	}

	public Categorie getCategorie() {
		return categorie;
	}

	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
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

	public Pizza getPizza() {
		return pizza;
	}

	public void setPizza(Pizza pizza) {
		this.pizza = pizza;
	}

	@Override
	public String toString() {
		return "Produit [referenceArticle=" + referenceArticle + ", prixUnitaireHT=" + prixUnitaireHT + ", TVA=" + TVA
				+ ", dateDePeremption=" + dateDePeremption + ", categorie=" + categorie + ", libelle=" + libelle
				+ ", composition=" + composition + ", pizza=" + pizza + "]";
	}
	
			
}
