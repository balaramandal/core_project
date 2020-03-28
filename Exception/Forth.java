class Forth
{
 public static void main(String args[])
 {
  try
  {
   String s1=args[0];                                             //ArrayIndexOutOfException using cmd line argu//
   String s2=args[1];
   int a=Integer.parseInt(s1);
   int b=Integer.parseInt(s2);
   float c=a/b;
   System.out.println("result: "+c);
  }
  catch(ArrayIndexOutOfBoundsException e)
  {
   System.out.println("Error: "+e);
  }
 }
}