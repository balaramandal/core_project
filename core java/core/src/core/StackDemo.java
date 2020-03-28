import java.util.*;
class StackDemo
{
	public static void main(String args[])
	{
		Stack s=new Stack();
		System.out.println(s.empty());

		s.push("a");
		s.push("b");
		s.push("c");
		s.push("d");
		s.push(null);
		s.push(12);
		
		System.out.println(s);

		System.out.println(s.peek());
		
		System.out.println(s.empty());
		
		System.out.println(s.search(null));
		
		s.pop();
		System.out.println(s);
	}
}