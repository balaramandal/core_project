import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.*;
public class Batch {

	static String sender,reciver;
	static int balance;
	public static void main(String[] args) throws Exception
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		con.setAutoCommit(false);
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter the sender name");
		sender=br.readLine();
		System.out.println("enter the reciver name");
		reciver = br.readLine();
		System.out.println("enter amount");
		balance = br.read();
		
		Statement st = con.createStatement();
		
		st.addBatch("update salary set balance=balance-"+balance+"where name='"+sender+"'");
		st.addBatch("update salary set balance=balance+"+balance+"where name='"+reciver+"'");
		
		int count[] = st.executeBatch();
		int flag=0;
		for(int i=0;i<count.length;i++)
		{
			if(count[i]==0)
			{
				flag++;
			}
		}
		if(flag==0)
		{
			con.commit();
			System.out.println("sucess fully updated");
		}
		else
		{
			con.rollback();
			System.out.println("update fail");
		}
	}
}
