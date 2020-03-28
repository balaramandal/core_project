import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class AlterTable {
	public static void main(String[] args)throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		Statement st=con.createStatement();
		int count=st.executeUpdate("alter table student modify email varchar(35)");
		if(count>0)
		{
			System.out.println("alter table sucessfully");
		}
		st.close();
		con.close();
	}

}
