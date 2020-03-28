class StringReverse
{
	public static void main(String args[])
	{
		String s1="Balaram";
		String s2="";
		int length=s1.length();
		
		for(int i=length-1;i>=0;i--)
		{
			s2+=s1.charAt(i);
		}
		System.out.println(s2);
	}
}