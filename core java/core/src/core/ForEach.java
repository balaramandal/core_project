package core;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;

public class ForEach {
	
	public static void main(String args[])
	{

		List<Integer> l = Arrays.asList(1,2,3,4,5,6,7,8,9);
		l.forEach(new FunctionalInterFace());
	}
}
class FunctionalInterFace implements Consumer<Integer>      // it is functionalinterface
{
	@Override
	public void accept(Integer t) {
		System.out.println(t);
		
	}
}