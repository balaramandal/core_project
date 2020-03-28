import java.io.*;
class WriteData1
{
	public static void main(String args[])throws Exception
	{
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		String text=br.readLine();
		File f=new File("d:\\balia.txt");
		FileWriter fw=new FileWriter(f);
		
		fw.write(text);
		fw.close();
	}
}