
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class ExecuteDemo {

	private static String email;
	private static String name;
	private static String name1;
	private static String userid;
	private static String password;

	public static void main(String[] args)throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter the sql query");
		String qry = br.readLine();
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
			Statement st = con.createStatement();
			//boolean status=st.execute(qry);
			//System.out.println(status);
			ResultSet res = st.getResultSet();
			while(res.next())
			{
				name = res.getString(1);
				name1 = res.getString(2);
				email = res.getString(3);
				userid = res.getString(4);
				password = res.getString(5);
				System.out.println(name+"  "+name1+"  "+email+"  "+userid+" "+password);
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
