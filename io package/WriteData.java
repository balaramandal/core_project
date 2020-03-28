import java.io.*;
class WriteData
{
	public static void main(String args[])throws Exception
	{
		FileWriter fw=new FileWriter("d:\\balia.txt");
		fw.write("hello balaram");
		fw.close();
	}
}