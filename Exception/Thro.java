class Thro
{
 public static void main(String args[])
 { 
  try 
  {
    int a=Integer.parseInt(args[0]);
    int b=Integer.parseInt(args[1]);
    if(b==2)
    {
     ArithmeticException a=new ArithmeticException();
     throw a;
    }
    System.out.println("hiiii");
    int c=a/b;
    System.out.println(c);
   }
   catch(ArithmeticException e)
   {
    System.out.println(e.getMessage());
   }
    System.out.println("bye");
  }
}
