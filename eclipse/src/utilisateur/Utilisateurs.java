package utilisateur;

import java.text.DateFormat;

import authentification.Authentification;

public class Utilisateurs {
	
	protected String nom;
	protected String nomDeJeuneFille;
	protected String prenom;
	protected DateFormat dateDeNaissance;
	protected DateFormat dateDeCreationDeCompte;
	protected Adresses adressePostale;
	protected int numeroTelephoneMobile;
	protected int numeroTelephoneFixe;
	protected byte niveauDAcces;
	protected Authentification authentifier;
	
	public Utilisateurs(String nom, String nomDeJeuneFille, String prenom, DateFormat dateDeNaissance,
			DateFormat dateDeCreationDeCompte, Adresses adressePostale, int numeroTelephoneMobile,
			int numeroTelephoneFixe, byte niveauDAcces, Authentification authentifier) {
		super();
		this.nom = nom;
		this.nomDeJeuneFille = nomDeJeuneFille;
		this.prenom = prenom;
		this.dateDeNaissance = dateDeNaissance;
		this.dateDeCreationDeCompte = dateDeCreationDeCompte;
		this.adressePostale = adressePostale;
		this.numeroTelephoneMobile = numeroTelephoneMobile;
		this.numeroTelephoneFixe = numeroTelephoneFixe;
		this.niveauDAcces = niveauDAcces;
		this.authentifier = authentifier;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getNomDeJeuneFille() {
		return nomDeJeuneFille;
	}

	public void setNomDeJeuneFille(String nomDeJeuneFille) {
		this.nomDeJeuneFille = nomDeJeuneFille;
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

	public byte getNiveauDAcces() {
		return niveauDAcces;
	}

	public void setNiveauDAcces(byte niveauDAcces) {
		this.niveauDAcces = niveauDAcces;
	}

	public Authentification getAuthentifier() {
		return authentifier;
	}

	public void setAuthentifier(Authentification authentifier) {
		this.authentifier = authentifier;
	}

	@Override
	public String toString() {
		return "Utilisateurs [nom=" + nom + ", nomDeJeuneFille=" + nomDeJeuneFille + ", prenom=" + prenom
				+ ", dateDeNaissance=" + dateDeNaissance + ", dateDeCreationDeCompte=" + dateDeCreationDeCompte
				+ ", adressePostale=" + adressePostale + ", numeroTelephoneMobile=" + numeroTelephoneMobile
				+ ", numeroTelephoneFixe=" + numeroTelephoneFixe + ", niveauDAcces=" + niveauDAcces + ", authentifier="
				+ authentifier + "]";
	}
	
	
	
	
}
