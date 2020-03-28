import java.util.Arrays;

public class OccranceTest {
	public static void main(String args[]){
		String str = "Balaram";
		char[] arr = str.toCharArray();
		int count = 0;
		Arrays.sort(arr);
		for(int i=0;i<arr.length;i++){
			count = 1;
			for(int j=i+1;j<arr.length;j++){
				if(arr[i] == arr[j]){
					count++;
					i = j;
				}
			}
			System.out.println(arr[i] +" = "+count);
		}
	}
}
