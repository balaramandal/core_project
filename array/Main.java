class Test
{
 Test()
 {
  System.out.println("inside test...");
 }
}
class Best extends Test
{
 Best()
 {
  System.out.println("inside Best...");
 }
}
class Main
{
  public static void main(String args[])
  {
   Best o=new Best();
  }
}

