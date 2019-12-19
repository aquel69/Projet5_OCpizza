package produit;

public class Categorie {
	
	String classe;
	String sousClasse;
		
	public Categorie(String classe, String sousClasse) {
		super();
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

	
	@Override
	public String toString() {
		return "Categorie [classe=" + classe + ", sousClasse=" + sousClasse + "]";
	}
	
		
}
