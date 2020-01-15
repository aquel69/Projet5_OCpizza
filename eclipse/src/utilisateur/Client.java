package utilisateur;

import java.text.DateFormat;

import adresse.Adresses;

public class Client extends Utilisateurs{
	
	
	protected String numero;
	protected Adresses adresseLivraison;
				
	
	public Client(String nom, String prenom, DateFormat dateDeNaissance, DateFormat dateDeCreationDeCompte,
			Adresses adressePostale, int numeroTelephoneMobile, int numeroTelephoneFixe, String email, int type,
			String numero, Adresses adresseLivraison) {
		super(nom, prenom, dateDeNaissance, dateDeCreationDeCompte, adressePostale, numeroTelephoneMobile,
				numeroTelephoneFixe, email, type);
		this.numero = numero;
		this.adresseLivraison = adresseLivraison;
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



	@Override
	public String toString() {
		return "Client [numero=" + numero + ", adresseLivraison=" + adresseLivraison +  "]";
	}
	
		
}
