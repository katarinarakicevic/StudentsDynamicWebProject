package rs;

public class Student {
	private String name;
	private String surname;
	private float average;

	public Student(String name, String surname, float average) {
		super();
		this.name = name;
		this.surname = surname;
		this.average = average;
	}

	public String getName() {return name;	}
	public String getSurname() {return surname;}
	public float getAverage() {return average;}
}
