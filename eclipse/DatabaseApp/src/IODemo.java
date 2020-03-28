import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;




public class IODemo {
	public static void main(String[] args)throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		
		String qry="Insert into company values(?,?)";
		PreparedStatement ps=con.prepareStatement(qry);
		ps.setString(1,"prasanta");
		
		File f=new File("d:\\balu.txt");
		int length=(int)f.length();
		FileReader fr=new FileReader(f);
		ps.setCharacterStream(2,fr,length);
		
		int count=ps.executeUpdate();
		if(count>0)
		{
			System.out.println(count +"Record inserted Sucessfully");
		}
	}

}
