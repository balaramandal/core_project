package com.home.DowneloadFile;

public class WaitNotfyDemo {
	static Thread1 t1 = new Thread1();
	
	public static void main(String[] args) throws InterruptedException{
		
		t1.start();
		System.out.println(t1.total);
		
		synchronized (t1) {
			t1.wait();
		}
	}

}
class Thread1 extends Thread{
	int total = 0;
	@Override
	public void run() {
		for(int i = 1; i <= 1000; i++){
			total = i%2 == 0? total+i : 0;
		}
	}
}
