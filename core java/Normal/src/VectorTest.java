import java.util.*;
class VectorTest{
	public static void main(String[] args){
		Vector v = new Vector();
		Thread t1 = new Thread(){
			public void run(){
				try{
					for(int i=1;i<=1000;i++){
					System.out.println(i);
					v.add(i);
				}
				}catch(Exception ex){
					
				}
			}
		};t1.start();
		Thread t2 = new Thread(){
			public void run(){
				try{
					for(char i='a';i<='z';i++){
					System.out.println(i);
					v.add(i);
					}
				}catch(Exception ex){
					
				}
			}
		};t2.start();
	}
}