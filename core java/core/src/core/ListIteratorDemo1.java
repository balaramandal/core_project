
import java.util.LinkedList;
import java.util.ListIterator;

public class ListIteratorDemo1 {
    public static void main(String args[])
    {
        LinkedList l = new LinkedList();
        l.add("Balaram");
        l.add("Tapas");
        l.add("Nilandri");
        l.add("Sikender");
        l.add("Kiran");
        
        ListIterator ltr = l.listIterator();
        ltr.hasNext();
        String s=(String)ltr.next();
        System.out.println(s);
        if(s.equals("Balaram"))
        {
            ltr.remove();
        }
        System.out.println(l);
    }
    
}
