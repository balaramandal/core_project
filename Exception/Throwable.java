class Throwable
{
 public static void main(String args[])
 {
  try
  {
   int a=Integer.parseInt(args[0]);
   int b=Integer.parseInt(args[1]);
   int c=a/b;
   System.out.println();
  }
  catch(Exception e)
  {
   System.out.println("error: "+e);
  }
   System.out.println("Going on");
 }
}
