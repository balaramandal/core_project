
public class FindDuplicate 
{
	int temp;
	public void sort(int arr[])
	{
		for(int i=0;i<arr.length;i++)
		{
			for(int j=i+1;j<arr.length;j++)
			{
				if(arr[i]>arr[j])
				{
					temp=arr[j];
					arr[j]=arr[i];
					arr[i]=temp;
				}
					
			}
		}
	}
	public void find(int arr[])
	{
	for(int i=0;i<arr.length;i++)
	{
		for(int j=i+1;j<arr.length;j++)
		{
			if(arr[i]==arr[j])
			{
				System.out.println(arr[j]+ " index is "+j);
				i=j;
			}
		}
	}
	}
	public static void main(String[] args)
	{
		int arr[] = {1,4,1,2,6,7,3,7,2,9,0,5,3,1,6,8,};
		FindDuplicate f = new FindDuplicate();
		f.sort(arr);
		f.find(arr);
	}
}
