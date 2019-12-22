package commande;

import java.text.DateFormat;

public class EtatCommande {
	
	private Statut status;
	private DateFormat date;
	
	public EtatCommande(Statut status, DateFormat date) {
		super();
		this.status = status;
		this.date = date;
	}

	public Statut getStatus() {
		return status;
	}

	public void setStatus(Statut status) {
		this.status = status;
	}

	public DateFormat getDate() {
		return date;
	}

	public void setDate(DateFormat date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "EtatCommande [status=" + status + ", date=" + date + "]";
	}
	
		
}
