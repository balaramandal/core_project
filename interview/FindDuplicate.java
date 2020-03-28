import java.util.Arrays;
class FindDuplicate
{
	public static void main(String args[])
	{
		int arr[] = {3,2,3,4,3,5,6,5,4,6,7,8,6,2,8};
		int count=0;
		Arrays.sort(arr);
		
		for(int i=0;i<=arr.length-1;i++)
		{
			for(int j=i+1;j<=arr.length-1;j++)
			{
				if(arr[i]==arr[j])
				{
					i=j;
					System.out.println(arr[i]);
				}
				
			}	
		}
	}
}