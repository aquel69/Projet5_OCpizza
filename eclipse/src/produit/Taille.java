package produit;

public class Taille {
	
	String petite;
	String moyenne;
	String grande;
	
	public Taille(String petite, String moyenne, String grande) {
		super();
		this.petite = petite;
		this.moyenne = moyenne;
		this.grande = grande;
	}

	public String getPetite() {
		return petite;
	}

	public void setPetite(String petite) {
		this.petite = petite;
	}

	public String getMoyenne() {
		return moyenne;
	}

	public void setMoyenne(String moyenne) {
		this.moyenne = moyenne;
	}

	public String getGrande() {
		return grande;
	}

	public void setGrande(String grande) {
		this.grande = grande;
	}

	@Override
	public String toString() {
		return "Taille [petite=" + petite + ", moyenne=" + moyenne + ", grande=" + grande + "]";
	}
	
		
}
