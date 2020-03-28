class Test
{
 private Test()
 {
  System.out.println("hello srusti...");
 }
 void show()
 {
  Test o=new Test();
 }
}
class Main1
{
 public static void main(String args[])
 {
  Test t=new Test();
  t.show();
 }
}