class Test
{
  void method1()
  {
    method2();
    System.out.println("1");
  }
  void method2()
  {
   method1();
   System.out.println("2");
  }
  public static void main(String args[]) 
  {
   Test t=new Test();
   t.method1();
  }
}