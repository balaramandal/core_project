class MyException extends Exception
{
 MyException()
 {
  super("devided by 2");
 }
} 
class Test
{
 public static void main(String args[])
 {
  try
  {
   int a=Integer.parseInt(args[0]);
   int b=Integer.parseInt(args[1]);
   if(b==2)
   {
    MyException ob=new MyException();
    throw ob;
   }
  }
  catch(MyException e)
  {
    System.out.println("error: "+e);
  }
 }
}

   