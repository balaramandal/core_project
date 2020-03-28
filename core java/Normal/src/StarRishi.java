
public class StarRishi {
	public static void main(String args[]){
		for(int i=1;i<=6;i++){
			for(int j=6;j>=i;j--){
				System.out.print(" ");
			}
			if(!(i%2==0)){
				System.out.print("*");
			}else{
				for(int k=1;k<=i+1;k++){
					System.out.print("*");
				}
			}
			System.out.println();
		}
	}
}
