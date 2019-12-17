package pointDeVente;

import java.util.ArrayList;
import java.util.List;

import utilisateur.Adresses;
import utilisateur.Employe;

public class PointDeVente {
	
	private Adresses adresse;
	private List<Employe> listeDesEmployes = new ArrayList<Employe>();
	
	public PointDeVente(Adresses adresse, byte numeroMagasin, List<Employe> listeDesEmployes) {
		super();
		this.adresse = adresse;
		this.listeDesEmployes = listeDesEmployes;
	}

	public Adresses getAdresse() {
		return adresse;
	}

	public void setAdresse(Adresses adresse) {
		this.adresse = adresse;
	}
	
	public List<Employe> getListeDesEmployes() {
		return listeDesEmployes;
	}

	public void setListeDesEmployes(List<Employe> listeDesEmployes) {
		this.listeDesEmployes = listeDesEmployes;
	}

	@Override
	public String toString() {
		return "pointDeVente [adresse=" + adresse + ", listeDesEmployes="
				+ listeDesEmployes + "]";
	}
	
	
	
}
