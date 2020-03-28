import java.util.*;
class VectorDemo
{
 public static void main(String args[])
 {
  int i,arr;
  Scanner s=new Scanner(System.in);
  Vector v =new Vector();
  System.out.println("the default size of victor of"+v.capacity());
  for(i=0;i<10;i++)
  {
   arr =s.nextInt();
   v.addElement(arr);
  }
  System.out.println(v);
 }
}
