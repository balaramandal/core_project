package core;
import java.util.*;
class CompratorTest
{	String name;
	String address;
	int age;
	public CompratorTest(String name,String address,int age){
		this.name = name;
		this.address = address;
		this.age = age;
	}
	public static void main(String args[]){
		CompratorTest test1 = new CompratorTest("Balaram","Odisha",25);
		CompratorTest test2 = new CompratorTest("Jijo","Kerala",24);
		CompratorTest test3 = new CompratorTest("Niranjan","Odisha",26);
		List<CompratorTest> list1 = new ArrayList<CompratorTest>();
		list1.add(test1);
		list1.add(test2);
		list1.add(test3);
		Set<CompratorTest> set = new TreeSet<CompratorTest>(new TestComprator());
		for(CompratorTest cmp : list1){
			set.add(cmp);
		}
		
		for(CompratorTest  c : set){
			System.out.println(c.age);
		}
		
	}
}
class TestComprator implements Comparator<CompratorTest>{
	
	@Override
	public int compare(CompratorTest o1, CompratorTest o2) {
		return o1.age-o2.age;
	}
}