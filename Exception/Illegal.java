class Illegal
{
 public static void main(String args[])
 {
  try
  {
   Thread t=new Thread();
   t.start();
   t.start();
  }
  catch(IllegalThreadStateException e)
  {
   System.out.println(e);
  }
 }
}
