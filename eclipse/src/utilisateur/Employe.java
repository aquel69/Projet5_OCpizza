package utilisateur;

import java.text.DateFormat;

import authentification.Authentification;

public class Employe extends Utilisateurs {
	
	protected String statut;
	protected Role role;
	
	public Employe(String nom, String nomDeJeuneFille, String prenom, DateFormat dateDeNaissance,
			DateFormat dateDeCreationDeCompte, Adresses adressePostale, int numeroTelephoneMobile,
			int numeroTelephoneFixe, byte niveauDAcces, Authentification authentifier, String statut, Role role) {
		super(nom, nomDeJeuneFille, prenom, dateDeNaissance, dateDeCreationDeCompte, adressePostale,
				numeroTelephoneMobile, numeroTelephoneFixe, niveauDAcces, authentifier);
		this.statut = statut;
		this.role = role;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Employe [statut=" + statut + ", role=" + role + "]";
	}
			
}
