package produit;

import java.text.DateFormat;

public class Stock {
	
	private Produit produitDeBase;
	private String codeEAN;
	private int quantiteRestante;
	private DateFormat dateAchat;
	private DateFormat dateDePeremption;
	
	
	public Stock(Produit produitDeBase, String codeEAN, int quantiteRestante, DateFormat dateAchat,
			DateFormat dateDePeremption) {
		super();
		this.produitDeBase = produitDeBase;
		this.codeEAN = codeEAN;
		this.quantiteRestante = quantiteRestante;
		this.dateAchat = dateAchat;
		this.dateDePeremption = dateDePeremption;
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
		return quantiteRestante;
	}

	public void setQuantite(int quantiteRestante) {
		this.quantiteRestante = quantiteRestante;
	}

	public DateFormat getDateAchat() {
		return dateAchat;
	}

	public void setDateAchat(DateFormat dateAchat) {
		this.dateAchat = dateAchat;
	}
	
	public DateFormat getDateDePeremption() {
		return dateDePeremption;
	}

	public void setDateDePeremption(DateFormat dateDePeremption) {
		this.dateDePeremption = dateDePeremption;
	}
	

	@Override
	public String toString() {
		return "Stock [produitDeBase=" + produitDeBase + ", codeEAN=" + codeEAN + ", quantiteRestante=" + quantiteRestante
				+ ", dateAchat=" + dateAchat + ", dateDePeremption=" + dateDePeremption + "]";
	}

	
		
}
