
public class StringRevbyStrBuf {
	public static void main(String args[])
	{
		StringBuffer s1 = new StringBuffer("balram");
		s1.reverse();
		System.out.println("After String reverse : "+s1);
		
		StringBuilder sb = new StringBuilder("santunu");
		sb.reverse();
		System.out.println("After String reverse : "+sb);
	}
}
