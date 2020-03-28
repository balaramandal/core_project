
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class ReadData {
	public static void main(String[] args)throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from student1");
		while(rs.next())
		{
			String name=rs.getString(1);
			String email=rs.getString("email");
			System.out.println(name+"    "+email);
		}
		rs.close();
		st.close();
		con.close();
		
	}

}
