import java.util.Scanner;
class Third
{
 public static void main(String args)
 {
  Scanner sc=new Scanner(System.in);
  try
  {
   int x=sc.nextInt();
   int y=sc.nextInt();
   int z=x/y;
   System.out.println(z);
  }
  catch(ArrayIndexOutOfBoundException e)
  {
   System.out.println(e);
  }
 }
}