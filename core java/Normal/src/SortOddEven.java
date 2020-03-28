
public class SortOddEven {

	public static void main(String[] args) {
		int[] arr={1,2,3,4,5,6,7,8,9};
		int temp;
		for(int i=0;i<arr.length;i++)
		{
			for(int j=i+1;j<arr.length;j++)
			{
				if(arr[i]%2==0 && arr[j]%2!=0)
				{
					temp=arr[j];
					arr[j]=arr[i];
					arr[i]=temp;
				}
			}
		}
		for(int k=0;k<arr.length;k++)
		{
			System.out.println(arr[k]);
		}

	}

}
