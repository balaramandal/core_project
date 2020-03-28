class Strng
{
 public static void main(String args[])
 {
  try
  {
   String str="Bbsr";
   System.out.println(str.charAt(1));
   System.out.println(str.charAt(4));
  }
  catch(StringIndexOutOfBoundsException e)
  {
   System.out.println(e.getMessage());
  }
 }
}