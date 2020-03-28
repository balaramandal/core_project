class Thrd
{
 public static void main(String args[])
 {
  try
  {
   Thread t=new Thread();
   t.setPriority(11);
  }
  catch(IllegalArgumentException e)
  {
   System.out.println("error: "+e//.getMessage()//);
  }
 }
}
   
 