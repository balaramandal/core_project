import java.util.Scanner;
class First
{
 public static void main(String args[])
 {
  Scanner sc=new Scanner(System.in);
  try
  {
   System.out.println("Enter 1st number...");
   int x=sc.nextInt();
   System.out.println("Enter 2nd number...");
   int y=sc.nextInt();
   int z=x/y;
   System.out.println("Result ="+z);
  }
  catch(ArithmeticException e)
  {
   System.out.println("you can't give value 0");
  }
  System.out.println("Thanku");
  } 
}
  