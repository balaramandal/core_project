package com.home.core.CoreProgramme;


public class Student {
	
	private int id;
	private String fName;
	private String lName;
	private String address;
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public Student(int id, String fName, String lName, String address) {
		super();
		this.id = id;
		this.fName = fName;
		this.lName = lName;
		this.address = address;
	}
	
	
}
