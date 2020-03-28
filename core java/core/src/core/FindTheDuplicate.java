package core;
import java.util.HashSet;
import java.util.Set;

public class FindTheDuplicate {
	public static void main(String args[]){
		Integer a[] = {1,2,2,4,5,6,7,4,1,5,8,7,8,0,9,3};
		
		
		// duplicate value make a null
		/*for(int i=0;i<a.length;i++)
		{
			for(int j=i+1;j<a.length;j++){
				if(a[i]==a[j]){
					a[j]=null;
				}
			}
		}
		for(int k=0;k<a.length;k++){
			System.out.println(a[k]);
		}*/
		
		
		//useing set
		/*for(int i=0;i<a.length;i++){
			for(int j=i+1;j<a.length;j++){
				if(a[i]>a[j]){
					int temp = a[j];
					a[j] = a[i];
					a[i] = temp;
				}
			}
		}
		Set<Integer> set = new HashSet<>();
		for(int i : a){
			set.add(i);
		}
		a = new Integer[set.size()];
		set.toArray(a);
		for(int i=0;i<a.length;i++){
			System.out.println(a[i]);
		}*/
	}
}
