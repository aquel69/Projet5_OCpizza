package produit;

import java.text.DateFormat;

public class Stock {
	
	private Produit produitDeBase;
	private String codeEAN;
	private int quantite;
	private DateFormat dateAchat;
	
	public Stock(Produit produitDeBase, String codeEAN, int quantite, DateFormat dateAchat) {
		super();
		this.produitDeBase = produitDeBase;
		this.codeEAN = codeEAN;
		this.quantite = quantite;
		this.dateAchat = dateAchat;
	}

	public Produit getProduitDeBase() {
		return produitDeBase;
	}

	public void setProduitDeBase(Produit produitDeBase) {
		this.produitDeBase = produitDeBase;
	}

	public String getCodeEAN() {
		return codeEAN;
	}

	public void setCodeEAN(String codeEAN) {
		this.codeEAN = codeEAN;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public DateFormat getDateAchat() {
		return dateAchat;
	}

	public void setDateAchat(DateFormat dateAchat) {
		this.dateAchat = dateAchat;
	}

	@Override
	public String toString() {
		return "Stock [produitDeBase=" + produitDeBase + ", codeEAN=" + codeEAN + ", quantite=" + quantite
				+ ", dateAchat=" + dateAchat + "]";
	}
	
		
}
