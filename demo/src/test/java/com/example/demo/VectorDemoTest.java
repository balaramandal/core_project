package com.example.demo;

import java.util.Vector;

public class VectorDemoTest extends Thread{
	Vector v = new Vector<>();
	public void run() {
		for(int i=1;i<=5;i++) {
			System.out.println(Thread.currentThread().getName());
			v.add(i);
			try {
				Thread.sleep(400);
			}catch(Exception ex) {
				
			}
		}
	}
	
	public void show() {
		System.out.println(v);
	}
	public static void main(String[] args) {
		
		Thread t1 = new VectorDemoTest();
		Thread t2 = new VectorDemoTest();
		t1.setName("Child1");
		t2.setName("Child2");
		
		t1.start();
		t2.start();
		
		VectorDemoTest d = new VectorDemoTest();
		d.show();
		
	}

}
