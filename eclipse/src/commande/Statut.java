package commande;

public enum Statut {
	
	commandeValide(1, "Commande validée", "La commande a été validée par le client."),
	commandeAnnule(2, "Commande annulée", "La commande a été annulée par le client."),
	commandeEnAttente(3, "Commande en attente", "La commande est en attente de préparation."),
	commandeEnPreparation(4, "Commande en préparation", "La commande est en préparation."),
	commandeEnAttenteDeLivraion(5, "commande en attente de livraison", "La commande est terminée et en attente d'être livrée."),
	commandeEnCoursDeLivraison(6, "Commande en cours de livraison", "La commande est en cours de livraison."),
	commandeLivreEtPaye(7, "Commande livrée et payée", "La commande a été livrée chez le client et réglée."),
	commandePreteAEtreRetire(8, "Commande prête à être retirée en point de vente", "La commande est terminée, le client peut venir la récuperer dans un point de vente."),
	commandeFinalise(9, "Commande finalisée", "La commande est complète et donc finalisée.");
	
	private int id;
	private String code = "";
	private String description = "";
	
	Statut(int id, String code, String description) {
		this.id = id;
		this.code = code;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
