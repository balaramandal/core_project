import java.io.*;
class ReadData
{
	public static void main(String args[])throws Exception
	{
		FileReader fr=new FileReader("d:\\balia.txt");
		int c=fr.read();
		while(c!=-1)
		{
			char ch=(char)c;
			System.out.println(ch+" "+c);			
			c=fr.read();
		}
		System.out.println("over");
		fr.close();
	}
}