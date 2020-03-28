import java.util.Scanner;
class Six
{ 
 public static void main(String args[])
 {
  Scanner sc=new Scanner(System.in);
  try
  {
   int a=sc.nextInt();
   int b=sc.nextInt();
   int c=a/b;
   System.out.println("Result: "+c);
  }
  catch(Exception e)
  {
   
   System.out.println("Error2: "+e.toString());
   System.out.println("Error3: "+e.getMessage());
  }
 }
}