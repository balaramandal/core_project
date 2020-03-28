package core;

import java.io.*;
class OracleTest
{
	public static void main(String args[])throws IOException
	{
		File f = new File("E://14_12_2017__65000_21StockReport.csv");
		FileReader fr = new FileReader(f);
		
		File f2 = new File("E://Oracle.txt");
		FileWriter fw = new FileWriter(f2);
		int c= fr.read();
		char ch=(char)c;
		while(c>-1)
		{
			fw.write(ch);
			c=fr.read();
		//	fr.
		}
	}
}
