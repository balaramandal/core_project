/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package LIS;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author padmanava
 */
public class DbConnect
{
    public static Connection getConnect()throws Exception
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lifeinsurance","lifeinsurance");
        return  con;
    }
}
