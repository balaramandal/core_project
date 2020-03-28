import java.io.*;
class Test1
{
	public static void main(String args[])throws Exception
	{
		File f=new File("d:\\balu.txt");
		f.createNewFile();
		System.out.println(f.exists());
	}
}