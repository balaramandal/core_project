import java.util.Scanner;
class Forth1
{
  public static void main(String args[])
  {
   try
   {
    Scanner sc=new Scanner(System.in);                      //ArrayIndexOutOfException using Scanner class//
    int a=sc.nextInt();
    int b=sc.nextInt();
    int c=a/b;
    System.out.println("The result is: "+c);
   }
   catch(ArrayIndexOutOfBoundsException e)
   {
    System.out.println("please give proper input");
   }
  }
}

//Activate Hibernate Framework(Bootstrap Hibernate)
//Read both configure and mapping file data
//build SessionFactory object
//Open session with database software
//Create Object for domain class