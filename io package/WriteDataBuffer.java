import java.io.*;
class WriteDataBuffer
{
	public static void main(String args[])throws Exception
	{
		FileWriter fw=new FileWriter("d:\\balia.txt");
		BufferWriter bw=new BufferWriter(fw);
		bw.write("good morning");
		bw.close();
		fw.close();
	}
}