import java.io.*;
class MakeDir
{
	public static void main(String args[])
	{
		File f=new File("d:\\io\\data.txt");
		f.mkdir();
		System.out.println(f.exists());
	}
}
