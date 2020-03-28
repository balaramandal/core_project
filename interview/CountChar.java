class CountChar
{
	public static void main(String args[])
	{
		String str="my name is balaram";
		int count=0;
		int asci=0;
		for(int i=0;i<str.length();i++)
		{
			asci=str.charAt(i);
			System.out.println(asci);
			if(str.charAt(i)!=32)
			count++;
		}
		System.out.println(count);
	}
}