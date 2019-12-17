package produit;

import java.util.ArrayList;

public class Recette {
	
	private ArrayList<Pizza> listeDesPizzas;

	public Recette(ArrayList<Pizza> listeDesPizzas) {
		super();
		this.listeDesPizzas = listeDesPizzas;
	}

	public ArrayList<Pizza> getListeDesPizzas() {
		return listeDesPizzas;
	}

	public void setListeDesPizzas(ArrayList<Pizza> listeDesPizzas) {
		this.listeDesPizzas = listeDesPizzas;
	}

	@Override
	public String toString() {
		return "Recette [listeDesPizzas=" + listeDesPizzas + "]";
	}
	
}	
