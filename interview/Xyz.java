import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ConpareString implements Comparable<ConpareString> {

String s;

public ConpareString(String s) {
this.s = s;
}

public static List<String> usingComparable(String input) {
List<String> list = new ArrayList<>();
for (String s : input.split(" ")) {
list.add(s);
}
Collections.sort(list);
return list;
}

public static List<String> usingComparator(String input) {
List<String> list = new ArrayList<>();
for (String s : input.split(" ")) {
list.add(s);
}
Collections.sort(list, new Comparator<String>() {

@Override
public int compare(String o1, String o2) {
return o1.compareTo(o2);
}
});
return list;
}

public static void main(String[] args) {
String input = "hi how are you";
System.out.println(usingComparator(input));
System.out.println(usingComparable(input));
}

@Override
public int compareTo(ConpareString o) {
return this.s.compareTo(o.s);
}

}