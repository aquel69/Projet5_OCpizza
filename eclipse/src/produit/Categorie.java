package produit;

public class Categorie {
	
	private String categorie;
	private String classe;
	private String sousClasse;
	
	
	public Categorie(String categorie, String classe, String sousClasse) {
		super();
		this.categorie = categorie;
		this.classe = classe;
		this.sousClasse = sousClasse;
	}

	public String getClasse() {
		return classe;
	}

	public void setClasse(String classe) {
		this.classe = classe;
	}

	public String getSousClasse() {
		return sousClasse;
	}

	public void setSousClasse(String sousClasse) {
		this.sousClasse = sousClasse;
	}
	
	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	@Override
	public String toString() {
		return "Categorie [categorie=" + categorie + ", classe=" + classe + ", sousClasse=" + sousClasse + "]";
	}
	
		
}
