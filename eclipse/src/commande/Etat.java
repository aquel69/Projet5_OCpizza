package commande;

public class Etat {
	
	private String enAttente;
	private String enCours;
	private String livrerEtPayer;
	
	public Etat(String enAttente, String enCours, String livrerEtPayer) {
		super();
		this.enAttente = enAttente;
		this.enCours = enCours;
		this.livrerEtPayer = livrerEtPayer;
	}

	public String getEnAttente() {
		return enAttente;
	}

	public void setEnAttente(String enAttente) {
		this.enAttente = enAttente;
	}

	public String getEnCours() {
		return enCours;
	}

	public void setEnCours(String enCours) {
		this.enCours = enCours;
	}

	public String getLivrerEtPayer() {
		return livrerEtPayer;
	}

	public void setLivrerEtPayer(String livrerEtPayer) {
		this.livrerEtPayer = livrerEtPayer;
	}

	@Override
	public String toString() {
		return "Etat [enAttente=" + enAttente + ", enCours=" + enCours + ", livrerEtPayer=" + livrerEtPayer + "]";
	}
		
}
