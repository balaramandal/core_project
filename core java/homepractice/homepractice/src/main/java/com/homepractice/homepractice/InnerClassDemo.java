package com.homepractice.homepractice;
interface Test1{
	public void test1Method();
	public interface Best1{
		public void bestMethod();
	}
}

class ImplementsInterface implements Test1.Best1{

	public void bestMethod() {
		System.out.println("Inside Best1 Method");
	}
}

public class InnerClassDemo {

	public static void main(String[] args) {
		Test1.Best1 t = new ImplementsInterface();
		t.bestMethod();
	}
}
