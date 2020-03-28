class Seven
{
 public static void main(String args[])
 {
  try
  {
   String s="Balaram";
   System.out.println("length: "+s.length());
   String s1=args[0];
   System.out.println("length: "+s1.length());
  }
  catch(NullPointerException e)
  {
   System.out.println("error: "+e.getMessage());
  }
 }
}