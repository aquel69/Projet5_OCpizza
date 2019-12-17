package commande;

import java.text.DateFormat;

import utilisateur.Adresses;
import utilisateur.Client;
import utilisateur.Employe;

public class Facture {
	
	private Client numeroClient;
	private String numero;
	private Employe vendeur;
	private DateFormat date;
	private Adresses adresse;
	private Commande commande;
	
	public Facture(Client numeroClient, String numero, Employe vendeur, DateFormat date, Adresses adresse,
			Commande commande) {
		super();
		this.numeroClient = numeroClient;
		this.numero = numero;
		this.vendeur = vendeur;
		this.date = date;
		this.adresse = adresse;
		this.commande = commande;
	}

	public Client getNumeroClient() {
		return numeroClient;
	}

	public void setNumeroClient(Client numeroClient) {
		this.numeroClient = numeroClient;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public Employe getVendeur() {
		return vendeur;
	}

	public void setVendeur(Employe vendeur) {
		this.vendeur = vendeur;
	}

	public DateFormat getDate() {
		return date;
	}

	public void setDate(DateFormat date) {
		this.date = date;
	}

	public Adresses getAdresse() {
		return adresse;
	}

	public void setAdresse(Adresses adresse) {
		this.adresse = adresse;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	@Override
	public String toString() {
		return "Factures [numeroClient=" + numeroClient + ", numero=" + numero + ", vendeur=" + vendeur + ", date="
				+ date + ", adresse=" + adresse + ", commande=" + commande + "]";
	}
	
	
	
}
