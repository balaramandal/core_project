import java.io.*;
class ArmstrongTest
{
	public static void main(String args[])throws Exception
	{
		BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter the number..");
		int number=Integer.parseInt(bf.readLine());
		
		int reminder,result=0;
		
		int temp=number;
		
		while(number>0)
		{
			reminder=number%10;
			result+=reminder*reminder*reminder;
			number=number/10;
		}
		if(result==temp)
		{
			System.out.println("number is palindrom");
		}
		else
		{
			System.out.println("not palindrom");
		}
	}
}