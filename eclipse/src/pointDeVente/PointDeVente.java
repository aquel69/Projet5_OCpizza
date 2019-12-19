package pointDeVente;

import adresse.Adresses;

public class PointDeVente {
	
	private Adresses adresseDuSite;
	private int siret;
	
	public PointDeVente(Adresses adresseDuSite, int siret) {
		super();
		this.adresseDuSite = adresseDuSite;
		this.siret = siret;
	}

	public Adresses getAdresseDuSite() {
		return adresseDuSite;
	}

	public void setAdresseDuSite(Adresses adresseDuSite) {
		this.adresseDuSite = adresseDuSite;
	}

	public int getSiret() {
		return siret;
	}

	public void setSiret(int siret) {
		this.siret = siret;
	}

	@Override
	public String toString() {
		return "PointDeVente [adresseDuSite=" + adresseDuSite + ", siret=" + siret + "]";
	}
	
		
}
