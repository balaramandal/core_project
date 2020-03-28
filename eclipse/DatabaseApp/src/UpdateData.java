import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class UpdateData {
	public static void main(String[] args)throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		Statement st=con.createStatement();
		int count=st.executeUpdate("update student1 set email='prasantaksahoo@gmail.com'");
		if(count>0)
		{
			System.out.println("update data sucessfully");
		}
		else
		{
			System.out.println("data not found");
		}
		st.close();
		con.close();
		
	}

}
