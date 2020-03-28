package collection;

import java.util.WeakHashMap;

public class WeakHashMapDemo1 {
    public static void main(String args[])
    {
        WeakHashMap whm = new WeakHashMap();
        whm.put(1, "Balaram");
        whm.put(2, "Ram");
        whm.put(3, "Krishana");
        whm.put(4, "jagannath");
        whm.put(5,null);
        System.out.println(whm);
    }
}
