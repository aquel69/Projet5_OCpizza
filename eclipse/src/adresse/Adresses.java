package adresse;

public class Adresses {
	
	private String voie;
	private String complement;
	private String commune;
	private short codePostal;
	
		public Adresses(String voie, String complement, String commune, short codePostal) {
		super();
		this.voie = voie;
		this.complement = complement;
		this.commune = commune;
		this.codePostal = codePostal;
	}
		
	
	public String getVoie() {
		return voie;
	}


	public void setVoie(String voie) {
		this.voie = voie;
	}


	public String getComplement() {
		return complement;
	}


	public void setComplement(String complement) {
		this.complement = complement;
	}


	public String getCommune() {
		return commune;
	}


	public void setCommune(String commune) {
		this.commune = commune;
	}


	public short getCodePostal() {
		return codePostal;
	}


	public void setCodePostal(short codePostal) {
		this.codePostal = codePostal;
	}


	@Override
	public String toString() {
		return "Adresse [voie=" + voie + ", complement=" + complement + ", commune=" + commune + ", codePostal="
				+ codePostal + "]";
	}
	
		
}
