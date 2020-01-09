package commande;

import java.text.DateFormat;

import adresse.Adresses;
import pointDeVente.PointDeVente;
import utilisateur.Employe;

public class Commande {
	                                       
	private String numero;                 
	private Employe vendeur;               
	private DateFormat dateEnregistrement;               
	private PointDeVente siret;
	private Adresses adresseDeLivraison;
	
	public Commande(String numero, Employe vendeur, DateFormat dateEnregistrement, PointDeVente siret,
			Adresses adresseDeLivraison) {
		super();
		this.numero = numero;
		this.vendeur = vendeur;
		this.dateEnregistrement = dateEnregistrement;
		this.siret = siret;
		this.adresseDeLivraison = adresseDeLivraison;
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

	public DateFormat getDateEnregistrement() {
		return dateEnregistrement;
	}

	public void setDateEnregistrement(DateFormat dateEnregistrement) {
		this.dateEnregistrement = dateEnregistrement;
	}

	
	public PointDeVente getSiret() {
		return siret;
	}

	public void setSiret(PointDeVente siret) {
		this.siret = siret;
	}

	public Adresses getAdresseDeLivraison() {
		return adresseDeLivraison;
	}

	public void setAdresseDeLivraison(Adresses adresseDeLivraison) {
		this.adresseDeLivraison = adresseDeLivraison;
	}

	@Override
	public String toString() {
		return "Commande [numero=" + numero + ", vendeur=" + vendeur + ", dateEnregistrement=" + dateEnregistrement
				+ ", siret=" + siret + ", adresseDeLivraison=" + adresseDeLivraison + "]";
	}
	
				
}
