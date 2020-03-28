import java.io.*;
class Best
{
public static void main(String args[])
{
 File f1=new File("D:\\balaram");
 f1.mkdirs();
 System.out.println(f1.exists());
 FileWritter fw=new FileWritter("D:\\balaram\balu.txt");
 fw.createNewFile();
}
}

