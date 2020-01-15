package utilisateur;

import java.text.DateFormat;

import adresse.Adresses;

public class Employe extends Utilisateurs {
	
	protected int numeroEmploye;
	protected Role role;
	
	
	public Employe(String nom, String prenom, DateFormat dateDeNaissance, DateFormat dateDeCreationDeCompte,
			Adresses adressePostale, int numeroTelephoneMobile, int numeroTelephoneFixe, String email, int type,
			int numeroEmploye, Role role) {
		super(nom, prenom, dateDeNaissance, dateDeCreationDeCompte, adressePostale, numeroTelephoneMobile,
				numeroTelephoneFixe, email, type);
		this.numeroEmploye = numeroEmploye;
		this.role = role;
	}

	public int getNumeroEmploye() {
		return numeroEmploye;
	}

	public void setNumeroEmploye(int numeroEmploye) {
		this.numeroEmploye = numeroEmploye;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Employe [numeroEmploye=" + numeroEmploye + ", role=" + role + "]";
	}
	
				
}
