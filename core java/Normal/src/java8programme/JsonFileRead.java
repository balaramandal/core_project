package java8programme;

import java.io.BufferedReader;
import java.io.FileReader;

public class JsonFileRead {
	public static void main(String args[]){
		String data;
		String jsonData="";
		try{
			BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\Balaram\\Desktop\\data.json"));
			while((data=br.readLine())!=null){
				jsonData +=data;
			}
			br.close();
		}catch(Exception exception){
			
		}
	}
}
