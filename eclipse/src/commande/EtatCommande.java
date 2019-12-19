package commande;

import java.text.DateFormat;

public class EtatCommande {
	
	private Status status;
	private DateFormat date;
	
	public EtatCommande(Status status, DateFormat date) {
		super();
		this.status = status;
		this.date = date;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
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
