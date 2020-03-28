import java.util.Scanner;
class Fifth
{
  public static void main(String args[])
  {
   Scanner sc=new Scanner(System.in);
   try 
   {
    int a=sc.nextInt();
    int b=sc.nextInt();
    int c= a/b;
    System.out.println("Result is: "+c);
   }
   catch(ArrayIndexOutOfBoundsException e)
   {
    System.out.println("Error: "+e);
   }
   catch(ArithmeticException e)
   {
    System.out.println("Error: "+e);
   }
   System.out.println("Going on");
  }
}