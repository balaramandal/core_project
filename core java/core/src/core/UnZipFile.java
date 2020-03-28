package core;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class UnZipFile {
	public static void main(String args[]){
		int i=1;
		String unZipPath = "E:\\";
		try{
			File file = new File("C:\\Users\\Balaram\\Downloads\\vali-admin-master.zip");
			ZipInputStream zipIn = new ZipInputStream(new FileInputStream(file));
			ZipEntry entry = null;
			while(zipIn.available()>0){
				entry = zipIn.getNextEntry();
				if(entry.isDirectory()){
					File fil = new File(unZipPath+entry.getName());
					fil.mkdir();
				}else{
					File fil = new File(unZipPath+entry.getName());
					FileOutputStream fos = new FileOutputStream(fil);
					fos.write(new FileInputStream(file+entry.getName()).read());
				}
				System.out.println(i++ +" "+entry.getName());
			}
		}catch(Exception exception){
			
		}
	}
}
