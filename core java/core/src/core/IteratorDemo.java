
import java.util.ArrayList;
import java.util.Iterator;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Balaram
 */
public class IteratorDemo {
    public static void main(String[] args)
    {
        ArrayList al=new ArrayList();
        for(int i=0;i<=10;i++)
        {
            al.add(i);
        }
        Iterator i=al.iterator();
        while(i.hasNext()){
            int j=(Integer)i.next();
            if(j%2==0)
            {
                System.out.println(j);
            }
            else
            {
                i.remove();
            }
        }
        System.out.println(al);
    }
}
