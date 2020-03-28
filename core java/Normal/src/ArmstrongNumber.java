import java.util.Scanner;

public class ArmstrongNumber 
{
	static int number,reminder,temp,sum;
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		number = sc.nextInt();
		temp=number;
		
		while(number>0)
		{
			reminder = number%10;
			sum += reminder*reminder*reminder;
			number = number/10;
		}
		if(temp==sum)
		{
			System.out.println("Armstrong number");
		}
		else
		{
			System.out.println("not Armstrong");
		}
	}

}
