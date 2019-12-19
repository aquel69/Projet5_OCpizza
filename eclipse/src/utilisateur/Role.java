package utilisateur;

public enum Role {
	
	gerant(1, "gérant", "Le gérant est le propriétaire de l'entreprise,il traitera toutes les affaires de la société. La gestion des stocks de la centrale d'achat et aura un accés total au site"),
	responsable(2, "responsable", "Le responsable point de vente est chargé du bon fonctionnement de son établissement, de la gestion des stocks et à un accès au site sur tout ce qui concerne son point de vente"),
	pizzaiolo(3, "pizzaïolo", "Le pizzaïolo est chargé de préparer les pizzas et de la gestion du stock des ingrédients"),
	livreur(4, "livreur", "Le livreur est chargé de l'acheminement des livraisons aux clients et des stocks en provenance de la centrale d'achat.");
	
	private int id;
	private String role = "";
	private String description = "";
	
	Role (int id, String role, String description) {
		this.id = id;
		this.role = role;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
