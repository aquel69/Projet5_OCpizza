package utilisateur;

import java.text.DateFormat;

import adresse.Adresses;

public class Utilisateurs {
	
	protected String nom;
	protected String prenom;
	protected DateFormat dateDeNaissance;
	protected DateFormat dateDeCreationDeCompte;
	protected Adresses adressePostale;
	protected int numeroTelephoneMobile;
	protected int numeroTelephoneFixe;
	protected String email;
	protected int type;
	
	public Utilisateurs(String nom, String prenom, DateFormat dateDeNaissance, DateFormat dateDeCreationDeCompte,
			Adresses adressePostale, int numeroTelephoneMobile, int numeroTelephoneFixe, String email, int type) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.dateDeNaissance = dateDeNaissance;
		this.dateDeCreationDeCompte = dateDeCreationDeCompte;
		this.adressePostale = adressePostale;
		this.numeroTelephoneMobile = numeroTelephoneMobile;
		this.numeroTelephoneFixe = numeroTelephoneFixe;
		this.email = email;
		this.type = type;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public DateFormat getDateDeNaissance() {
		return dateDeNaissance;
	}

	public void setDateDeNaissance(DateFormat dateDeNaissance) {
		this.dateDeNaissance = dateDeNaissance;
	}

	public DateFormat getDateDeCreationDeCompte() {
		return dateDeCreationDeCompte;
	}

	public void setDateDeCreationDeCompte(DateFormat dateDeCreationDeCompte) {
		this.dateDeCreationDeCompte = dateDeCreationDeCompte;
	}

	public Adresses getAdressePostale() {
		return adressePostale;
	}

	public void setAdressePostale(Adresses adressePostale) {
		this.adressePostale = adressePostale;
	}

	public int getNumeroTelephoneMobile() {
		return numeroTelephoneMobile;
	}

	public void setNumeroTelephoneMobile(int numeroTelephoneMobile) {
		this.numeroTelephoneMobile = numeroTelephoneMobile;
	}

	public int getNumeroTelephoneFixe() {
		return numeroTelephoneFixe;
	}

	public void setNumeroTelephoneFixe(int numeroTelephoneFixe) {
		this.numeroTelephoneFixe = numeroTelephoneFixe;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Utilisateurs [nom=" + nom + ", prenom=" + prenom + ", dateDeNaissance=" + dateDeNaissance
				+ ", dateDeCreationDeCompte=" + dateDeCreationDeCompte + ", adressePostale=" + adressePostale
				+ ", numeroTelephoneMobile=" + numeroTelephoneMobile + ", numeroTelephoneFixe=" + numeroTelephoneFixe
				+ ", email=" + email + ", type=" + type + "]";
	}
		
	
}
