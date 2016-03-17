package entity;

public class Pet {
	private int id;
	private String petName;
	private String petSex;
	private int petAge;
	private String petSort;
	private String petIllHostory;
	public Pet(){}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPetAge() {
		return petAge;
	}
	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetSex() {
		return petSex;
	}
	public void setPetSex(String petSex) {
		this.petSex = petSex;
	}
	public String getPetSort() {
		return petSort;
	}
	public void setPetSort(String petSort) {
		this.petSort = petSort;
	}
	public String getPetIllHostory() {
		return petIllHostory;
	}
	public void setPetIllHostory(String petIllHostory) {
		this.petIllHostory = petIllHostory;
	}
	
}
