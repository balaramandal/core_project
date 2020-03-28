import java.io.*;
class Palindrom
{
	public static void main(String args[])throws Exception
	{
		int no=0;
		int sum=0;
		int temp=0;
		int rem=0;
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		no=Integer.parseInt(br.readLine());
		temp=no;
		while(no>0)
		{
			rem=no%10;
			sum=(sum*10)+rem;
			no=no/10;
		}
		if(sum==temp)
		{
			System.out.println("Number is palindrom");
		}
		else
		{
			System.out.println("number is not palindrom");
		}
	}
}