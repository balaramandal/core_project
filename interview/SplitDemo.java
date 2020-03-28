class SplitDemo
{
	public static void main(String args[])
	{
		String name = "Balaram mandal";
		String temp[]=name.split("");
		for(String s:temp)
		{
			System.out.println(s);
		}
	}
}