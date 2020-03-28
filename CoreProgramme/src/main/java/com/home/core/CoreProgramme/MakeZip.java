package com.home.core.CoreProgramme;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class MakeZip {

	public static void main(String[] args)throws Exception {
		String[] fileNames = {"D:\\boot\\20160411_091418.jpg","D:\\boot\\20160417_194941.jpg"}; //list of file
		
		FileOutputStream fos = new FileOutputStream("D:\\deepak.zip");
		ZipOutputStream zout = new ZipOutputStream(fos);
		
		byte[] b = null;
		
		for(String filName:fileNames){                       //iterating all file names.
			
			File file = new File(filName);
			FileInputStream fis = new FileInputStream(file);
			b = new byte[(int)file.length()];
			
			ZipEntry zEntry = new ZipEntry(filName);
			zout.putNextEntry(zEntry);                     //Here only inserted a file inside zip without content.
			
			int i = 0;
			while((i = fis.read(b))>0){
				zout.write(b, 0, i);        //this loop will help you read data from your original 
			}								//file to write into current insert file in zip.
			
			zout.closeEntry();				// one file is insertd with content, So we are closed that entry.
			fis.close();
			
		}
		zout.close();
		fos.close();
	}

}
