import java.util.Scanner;
class Generic 
{
 public static void main(String args[])
 {
  Scanner sc=new Scanner(System.in);
  try
  {
   int a=sc.nextInt();
   int b=sc.nextInt();
   int c=a/b;
   System.out.println("Result: "+ c);
  }
  catch(Exception e)
  {
   System.out.println("error: "+e);
  }
   System.out.println("Good bye....");
 }
}