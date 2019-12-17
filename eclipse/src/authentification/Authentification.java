package authentification;

import utilisateur.Utilisateurs;

public class Authentification {
	
	private String username;
	private String password;
	private Utilisateurs utilisateur;
	
	public Authentification(String username, String password, Utilisateurs utilisateur) {
		super();
		this.username = username;
		this.password = password;
		this.utilisateur = utilisateur;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Utilisateurs getUtilisateur() {
		return utilisateur;
	}
	public void setUtilisateur(Utilisateurs utilisateur) {
		this.utilisateur = utilisateur;
	}
	@Override
	public String toString() {
		return "Authentifier [username=" + username + ", password=" + password + ", utilisateur=" + utilisateur + "]";
	}
	
	
}
