class Negative
{
 public static void main(String args[])
 {
  try
  {
   int arr[]=new int[-2];
  }
  catch(NegativeArraySizeExceptopn e)
  {
   System.out.println(e.getMessage());
  }
 }
}