package commande;

import java.text.DateFormat;

public class Facture {
	
	private String numero;
	private DateFormat dateFacture;
	private Double montant;
	private Double TVA;
	
	public Facture(String numero, DateFormat dateFacture, Double montant, Double tVA) {
		super();
		this.numero = numero;
		this.dateFacture = dateFacture;
		this.montant = montant;
		TVA = tVA;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public DateFormat getDateFacture() {
		return dateFacture;
	}

	public void setDateFacture(DateFormat dateFacture) {
		this.dateFacture = dateFacture;
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

	@Override
	public String toString() {
		return "Facture [numero=" + numero + ", dateFacture=" + dateFacture + ", montant=" + montant + ", TVA=" + TVA
				+ "]";
	}
	
	
}
