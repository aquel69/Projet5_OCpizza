package produit;

public enum Pizza {
	
	margherita(1, "margherita"),
	regina(2, "regina"),
	reine(3, "reine"),
	norvegienne(4, "norvegienne");
	
	private int id;
	private String nom;
	
	private Pizza(int id, String nom) {
		this.id = id;
		this.nom = nom;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
			
}
