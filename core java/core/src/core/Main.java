package core;
import java.util.*;

class Employee
{
	int id;
	String name;
	int salary;
	
	public Employee(int id,String name,int salary)
	{
		this.id=id;
		this.name=name;
		this.salary=salary;
	}

}
public class Main
{
	public static void main(String args[])
	{
		Employee e1 = new Employee(1,"Balaram",20000);
		Employee e2 = new Employee(2,"Santanu",15000);
		Employee e3 = new Employee(3,"Manash",17000);
		Employee e4 = new Employee(4,"Subhasis",22000);
		Employee e5 = new Employee(5,"Kanhu",18000);
				
		Set<Employee> set = new TreeSet<Employee>(new Compare());
		set.add(e1);
		set.add(e2);
		set.add(e3);
		set.add(e4);
		set.add(e5);

		for(Employee e : set)
		{
			System.out.println(e.id+" "+e.name+" "+e.salary);
		}
	}
}
class Compare implements Comparator<Employee>
{
	@Override
	public int compare(Employee o1, Employee o2) {
		// TODO Auto-generated method stub
		return (o2.salary-o1.salary);
	}
}