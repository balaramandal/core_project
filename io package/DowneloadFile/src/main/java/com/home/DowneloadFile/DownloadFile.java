package com.home.DowneloadFile;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public class DownloadFile {
	public static void downLoadFile(String url){
		try {
			URL ul = new URL(url);
			InputStream in = ul.openStream();
			OutputStream fileOutputStream = new FileOutputStream("C:\\Users\\Balaram\\Desktop\\java\\ganesh.png");
		    byte dataBuffer[] = new byte[1024];
		    int bytesRead = 0;
		    while ((bytesRead = in.read(dataBuffer,0,1024)) != -1) {
		        fileOutputStream.write(dataBuffer, 0, bytesRead);
		    }
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("Finish");
   }
}
