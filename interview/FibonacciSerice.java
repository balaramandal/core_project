import java.io.*;
class FibonacciSerice
{
	public static void main(String args[])throws Exception
	{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int number=Integer.parseInt(br.readLine());
		int a=0 , b=1,sum=0;
		System.out.print(a+" "+b);
		for(int i=2;i<10;i++)
		{
			sum=a+b;
			System.out.print(" "+sum);
			a=b;
			b=sum;
			
		}
	}
}