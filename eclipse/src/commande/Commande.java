package commande;

import java.text.DateFormat;

import pointDeVente.PointDeVente;
import utilisateur.Adresses;
import utilisateur.Employe;

public class Commande {
	                                       
	private String numero;                 
	private Employe vendeur;               
	private DateFormat date;               
	private LigneDeCommande ligne;       
	private byte etat;                     
	private Facture facture;  
	private Adresses adresseDeLivraison;
	private PointDeVente pointDeVente;
	
	public Commande(String numero, Employe vendeur, DateFormat date, LigneDeCommande ligne, byte etat, Facture facture,
			Adresses adresseDeLivraison, PointDeVente pointDeVente) {
		super();
		this.numero = numero;
		this.vendeur = vendeur;
		this.date = date;
		this.ligne = ligne;
		this.etat = etat;
		this.facture = facture;
		this.adresseDeLivraison = adresseDeLivraison;
		this.pointDeVente = pointDeVente;
	}
	
	
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public Employe getVendeur() {
		return vendeur;
	}
	public void setVendeur(Employe vendeur) {
		this.vendeur = vendeur;
	}
	public DateFormat getDate() {
		return date;
	}
	public void setDate(DateFormat date) {
		this.date = date;
	}
	public LigneDeCommande getLigne() {
		return ligne;
	}
	public void setLigne(LigneDeCommande ligne) {
		this.ligne = ligne;
	}
	public byte getEtat() {
		return etat;
	}
	public void setEtat(byte etat) {
		this.etat = etat;
	}
	public Facture getFacture() {
		return facture;
	}
	public void setFacture(Facture facture) {
		this.facture = facture;
	}
	public Adresses getAdresseDeLivraison() {
		return adresseDeLivraison;
	}
	public void setAdresseDeLivraison(Adresses adresseDeLivraison) {
		this.adresseDeLivraison = adresseDeLivraison;
	}
	public PointDeVente getPointDeVente() {
		return pointDeVente;
	}
	public void setPointDeVente(PointDeVente pointDeVente) {
		this.pointDeVente = pointDeVente;
	}
	
	@Override
	public String toString() {
		return "Commande [numero=" + numero + ", vendeur=" + vendeur + ", date=" + date + ", ligne=" + ligne + ", etat="
				+ etat + ", facture=" + facture + ", adresseDeLivraison=" + adresseDeLivraison + ", pointDeVente="
				+ pointDeVente + "]";
	}
	
			
}
