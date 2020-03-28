class Illegal
{
 static void read()//throws Exception
 {
  System.out.println("hello");
 }
 public static void main(String args[])
 {
  try
  {
  read(); 
  }
  catch(Exception e)
  {
  System.out.println(e);
  }
 }
}
