package com.example.demo;

public class ThreadTestDemo extends Thread{
	
	public static void print(int val) {
		for(int i=1;i<=5;i++) {
			System.out.println(Thread.currentThread().getName()+" "+val*i);
			try {
				Thread.sleep(400);
			}catch(Exception exception) {
				
			}
		}
	}
	public void run() {
		ThreadTestDemo.print(5);
	}
	public static void main(String[] args) {
		try{
			Thread t1 = new ThreadTestDemo();
			Thread t2 = new ThreadTestDemo();
			t1.setName("Child1");
			t2.setName("Child2");
			t1.start();
			t2.start();
			
		}catch(Exception exception) {
			
		}
	}
}
