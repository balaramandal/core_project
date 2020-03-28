
import java.util.Enumeration;
import java.util.Vector;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Balaram
 */
public class EnumarationDemo {
    public static void main(String args[])
    {
        Vector v = new Vector();
        Enumeration e = v.elements();
        
        System.out.println(e.getClass().getName());
    }
}
