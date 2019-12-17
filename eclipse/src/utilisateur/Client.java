package utilisateur;

import java.text.DateFormat;

import authentification.Authentification;

public class Client extends Utilisateurs{
	
	
	protected String numero;
	protected Adresses adresseLivraison;
	protected String eMail;
	
	public Client(String nom, String nomDeJeuneFille, String prenom, DateFormat dateDeNaissance,
			DateFormat dateDeCreationDeCompte, Adresses adressePostale, int numeroTelephoneMobile,
			int numeroTelephoneFixe, byte niveauDAcces, Authentification authentifier, String numero,
			Adresses adresseLivraison, String eMail) {
		super(nom, nomDeJeuneFille, prenom, dateDeNaissance, dateDeCreationDeCompte, adressePostale,
				numeroTelephoneMobile, numeroTelephoneFixe, niveauDAcces, authentifier);
		this.numero = numero;
		this.adresseLivraison = adresseLivraison;
		this.eMail = eMail;
	}


		
	public String getNumero() {
		return numero;
	}


	public void setNumero(String numero) {
		this.numero = numero;
	}

	public Adresses getAdresseLivraison() {
		return adresseLivraison;
	}


	public void setAdresseLivraison(Adresses adresseLivraison) {
		this.adresseLivraison = adresseLivraison;
	}


	public String geteMail() {
		return eMail;
	}


	public void seteMail(String eMail) {
		this.eMail = eMail;
	}


	@Override
	public String toString() {
		return "Client [numero=" + numero + ", adresseLivraison=" + adresseLivraison + ", eMail=" + eMail + "]";
	}
	
		
}
