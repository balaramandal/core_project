import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class DataBaseConnection {

	public static void main(String[] args)throws Exception
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		Statement stmnt = con.createStatement();
		stmnt.executeUpdate("insert into record values('kiran','kiran')");
		System.out.println(stmnt);
	}

}
