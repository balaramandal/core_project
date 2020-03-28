/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package collection;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author Balaram
 */
public class HashMapDemo {

    public static void main(String args[]) {
        HashMap h = new HashMap();
        h.put(1, "Balaram");
        h.put(2, "Kiran");
        h.put(3, "Raja");
        h.put(null, "suresh");
        h.put(0, "Susant");
        System.out.println(h.get(null));
        Set s = h.entrySet();
        Iterator i = s.iterator();
        while(i.hasNext()){
            Map.Entry m=(Map.Entry)i.next();
            System.out.println(m);
            //System.out.println(i.next());
        }
        /*for(Object key:h.keySet())
        {
            System.out.print(key+"->");
            System.out.println(h.get(key));
        }*/
       
        System.out.println(h);

    }

}
