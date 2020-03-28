package com.home.core.CoreProgramme;

public class StudentCopy {
	private int id;
	private String fName;
	private String lName;
	
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
	@Override
	public String toString() {
		return "StudentCopy [id=" + id + ", fName=" + fName + ", lName=" + lName + "]";
	}
	
}
