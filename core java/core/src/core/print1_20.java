package core;

public class print1_20 {
	public static void main(String args[]){
		int temp = 0;
		for(int i=1;i<=10;i++){
			 temp += 1;
			 System.out.println(temp);
			if(temp==10){
				i=0;
			}
		}
	}
}
