
import java.util.ArrayList;
import java.util.ListIterator;

public class ListIteratorDemo {
    public static void main(String[] args)
    {
        ArrayList al=new ArrayList();
        for(int i=0;i<=10;i++)
        {
            al.add(i);
        }
        System.out.println(al);
        ListIterator lt=al.listIterator();
        while(lt.hasNext())
        {
            int a=(Integer)lt.next();
            if(a%2==0)
            {
                System.out.println(a);
            }
            else
            {
                lt.remove();
            }
        }
        System.out.println("\n\n");
        while(lt.hasPrevious())
        {
            System.out.println(lt.previous()+"   "+lt.previousIndex());
            int n=(Integer)lt.previous();
            if(n%2==0)
            {
                for(int k=10;k>=0; )
                {
                            if(k==n)
                            {
                               k=k-1; 
                               lt.add(k);
                            }
                            
                }
            }
        }
        System.out.println(al);
    }
}
