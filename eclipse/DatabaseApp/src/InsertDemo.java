import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class InsertDemo {
	
	public static void main(String[] args)throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		Statement st=con.createStatement();
		int count=st.executeUpdate("insert into student1 values('Prasanta','prasanta@gmail.com')");
		 if(count>0)
		 {
			 System.out.println("record update sucessfully");
		 }
		
}
}
