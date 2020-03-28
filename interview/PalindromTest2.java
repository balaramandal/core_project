import java.io.*;
class PalicdromTest2	
{	
	public static void main(String args[])throws IOException
	{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter the number ");
		int result=0, reminder, number = Integer.parseInt(br.readLine());
		int temp=number;
		while(number>0)
		{
			reminder=number%10;
			result=(result*10)+reminder;
			number=number/10;
		}
		if(result==temp)
		{
			System.out.println("numberis palindrom");
		}
		else
		{
			System.out.println("not palindrom");
		}
	}
}	