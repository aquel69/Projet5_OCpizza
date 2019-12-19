package commande;

public class CommandeEtatCommande {
	private Commande commande;
	private EtatCommande etatCommande;
	
	public CommandeEtatCommande(Commande commande, EtatCommande etatCommande) {
		super();
		this.commande = commande;
		this.etatCommande = etatCommande;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public EtatCommande getEtatCommande() {
		return etatCommande;
	}

	public void setEtatCommande(EtatCommande etatCommande) {
		this.etatCommande = etatCommande;
	}

	@Override
	public String toString() {
		return "CommandeEtatCommande [commande=" + commande + ", etatCommande=" + etatCommande + "]";
	}
	
		
}
