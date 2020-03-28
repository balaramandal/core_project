class StringRev
{
	public static void main(String args[])
	{
		String s = "Balaram";
		String s2="";
		int length =s.length()-1;
		for(;length>=0;length--)
		{
			s2+=s.charAt(length);
		}
		System.out.println(s2);
	}
}