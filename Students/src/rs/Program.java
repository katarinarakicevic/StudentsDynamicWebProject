package rs;

import java.util.ArrayList;

public class Program {
	private ArrayList<Student> ls;	// student list
	private String name;
	public Program(String name) {		// constructor
		super();
		ls = new ArrayList<Student>();
		this.name = name;
	}
	public ArrayList<Student> getLs() {	return ls;}
	public String getName() {return name;}

	public void addStudent(Student s){		// adding student in list
		ls.add(s);
	}
	public int NumberOfStudents(){
		return ls.size();
	}
}

