package core;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;

public class LambdaExpressioDemo {
	
	public static void main(String args[])
	{
		Consumer<Integer> c = i -> System.out.println(i);
		List<Integer> l = Arrays.asList(1,2,3,4,5,6,7,8,9); 
		l.forEach(c);
	}
}
