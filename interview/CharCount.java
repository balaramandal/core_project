
public class CharCount {

public static int countChar1(String word) {
int count = 0;
for (String s : word.split("")) {
count++;
}
return count;

}

public static int countChar2(String word) {
return word.length();

}

public static void main(String[] args) {
System.out.println(countChar1("basa nta"));
System.out.println(countChar2("basa nta"));
}
}