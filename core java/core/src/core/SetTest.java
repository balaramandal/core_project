package core;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.Set;

public class SetTest {
	public static void main(String args[]){
		Set<Integer> set = new LinkedHashSet<Integer>();
		set.add(6);//new Employe("Balaram",25,12251)
		set.add(3);//new Employe("Jijo",26,35000)
		set.add(8);//new Employe("Chandan",30,12000)
		set.add(2);//new Employe("Anil",35,60)
		set.add(1);//new Employe("Rishi",26,25000)
		System.out.println(set);
		/*for(Employe e : set){
			System.out.println(e.name+" "+e.age+" "+e.salary);
		}*/
	}
}
class CompratorTest implements Comparator<Integer>{

	@Override
	public int compare(Integer o1, Integer o2) {
		return o1 - o2;
	}
	
}
