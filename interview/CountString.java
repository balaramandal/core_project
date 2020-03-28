class CountString 
{
	public static void main(String args[])
	{
		String str="my name is balaram";
		int length=str.length();
		int count=0;
		for(int i=0;i<length;i++)
		{
			if(str.charAt(i)==' ')
			{
				count+=1;
			}
		}
		System.out.println(length-count);
		
	}
}