package produit;

public enum Taille {
	
	Petite(1, "petite", 1),
	Moyenne(2, "moyenne", 2),
	Grande(3, "grande", 3);
	
	private int id;
	private String taille;
	private int facteurQuantite;
	
	private Taille(int id, String taille, int facteurQuantite) {
		this.id = id;
		this.taille = taille;
		this.facteurQuantite = facteurQuantite;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTaille() {
		return taille;
	}

	public void setTaille(String taille) {
		this.taille = taille;
	}

	public int getQuantite() {
		return facteurQuantite;
	}

	public void setQuantite(int quantite) {
		this.facteurQuantite = quantite;
	}
	
			
}
