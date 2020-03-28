/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package collection;

import java.util.Vector;

/**
 *
 * @author Balaram
 */
public class VectorDemo {

    public static void main(String[] args) {
        Vector v = new Vector();
        System.out.println(v.capacity());
        int i;
        for( i=1;i<=10;i++)
        {
            v.add(i);
        }
        System.out.println(v);
        v.addElement(15);
        System.out.println(v);
        System.out.println(v.size());
        System.out.println(v.elements());
        
    }
    
}
