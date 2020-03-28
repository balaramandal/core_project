/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package collection;
import java.util.WeakHashMap;
/**
 *
 * @author Balaram
 */
public class WeekHashMapDemo {
    public static void main(String args[])throws Exception
    {
     WeakHashMap wh = new WeakHashMap();  
     Temp t = new Temp();
     wh.put(t, "durga");
     
        System.out.println(wh);
        t=null;
        System.gc();
        Thread.sleep(5000);
        System.out.println(wh);
    }
    
}
class Temp{
    public String toString()
    {
        return "Balaram";
    }
    public void finalized()
    {
        System.out.println("Finalize method called");
    }

}