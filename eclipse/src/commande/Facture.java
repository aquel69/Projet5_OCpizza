package commande;

import java.text.DateFormat;

public class Facture {
	
	private String numero;
	private DateFormat date;
	private Double montant;
	private Double TVA;
	private Commande commande;
	
	public Facture(String numero, DateFormat dateFacture, Double montant, Double tVA, Commande commande) {
		super();
		this.numero = numero;
		this.date = dateFacture;
		this.montant = montant;
		TVA = tVA;
		this.commande = commande;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public DateFormat getDateFacture() {
		return date;
	}

	public void setDateFacture(DateFormat dateFacture) {
		this.date = dateFacture;
	}

	public Double getMontant() {
		return montant;
	}

	public void setMontant(Double montant) {
		this.montant = montant;
	}

	public Double getTVA() {
		return TVA;
	}

	public void setTVA(Double tVA) {
		TVA = tVA;
	}
	
	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	@Override
	public String toString() {
		return "Facture [numero=" + numero + ", dateFacture=" + date + ", montant=" + montant + ", TVA=" + TVA
				+ ", commande=" + commande + "]";
	}

	
}
