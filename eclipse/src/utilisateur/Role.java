package utilisateur;

public class Role {
	private String gerant;
	private String responsable;
	private String pizzaiolo;
	private String livreur;
	
	public Role(String gerant, String responsable, String pizzaiolo, String livreur) {
		super();
		this.gerant = gerant;
		this.responsable = responsable;
		this.pizzaiolo = pizzaiolo;
		this.livreur = livreur;
	}

	public String getGerant() {
		return gerant;
	}

	public void setGerant(String gerant) {
		this.gerant = gerant;
	}

	public String getResponsable() {
		return responsable;
	}

	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}

	public String getPizzaiolo() {
		return pizzaiolo;
	}

	public void setPizzaiolo(String pizzaiolo) {
		this.pizzaiolo = pizzaiolo;
	}

	public String getLivreur() {
		return livreur;
	}

	public void setLivreur(String livreur) {
		this.livreur = livreur;
	}

	@Override
	public String toString() {
		return "Role [gerant=" + gerant + ", responsable=" + responsable + ", pizzaiolo=" + pizzaiolo + ", livreur="
				+ livreur + "]";
	}
	
}
