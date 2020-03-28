import java.io.File;

public class FileList {
	public static void main(String args[]){
		File file = new File("E:\\Session");
		File[] fileList = file.listFiles();
		int fileLength = fileList.length;
		while(fileLength != -1){
			if(fileList[fileLength-1].isDirectory()){
				System.out.println(fileList[fileLength-1].getName());
			}else{
				System.out.println(fileList[fileLength-1].getName());
			}
		}
	}
}
