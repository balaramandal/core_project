package core;
import java.util.Arrays;

public class Best {
	public static void main(String args[]){
		String[] arr =  {"Hello","Hello World","Hello","Hello World"};
		Arrays.sort(arr);
		int count;
		for(int i = 0;i<arr.length;i++){
			count = 1;
			for(int j = i+1;j<arr.length;j++){
				if(arr[i].equals(arr[j])){
					count++;
					arr[i] = null;
					i = j;
				}
			}
			System.out.println(arr[i] +" = "+count);
		}
		for(String str : arr){
			System.out.println(str);
		}
	}
}
