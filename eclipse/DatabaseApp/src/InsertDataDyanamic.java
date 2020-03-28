import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;


public class InsertDataDyanamic {
	public static void main(String[] args)throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		Statement st=con.createStatement();
		
		Scanner sc=new Scanner(System.in);
		System.out.println("enter name and email...");
		String name=sc.next();
		String email=sc.next();
		
		int count=st.executeUpdate("insert into student1 values('"+name+"','"+email+"')");
		if(count>0)
		{
			System.out.println("inserted data sucessfully");
		}
		sc.close();
		st.close();
		con.close();
		
	}

}
