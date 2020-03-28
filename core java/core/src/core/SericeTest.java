package core;

public class SericeTest {
	public static void main(String args[]){
		int x=0;
		for(int i=1;i<=10;i++){
			x=x+1;
			if(x<=10){
				System.out.println(x);
				if(x==10){
					i=1;
					System.out.println(x=x+1);
				}
				continue;
			}
			
			System.out.println(x);
		}
	}
}
