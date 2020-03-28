class SingleTon {	
	private static SingleTon obj = null;
	private SingleTon(){
		
	}
	public static SingleTon getInstance(){
		if(obj == null){
			obj =  new SingleTon();
		}
		return obj;
	}
}
public class SingleTonApp{
	public static void main(String[] args) {
		System.out.println(SingleTon.getInstance().hashCode());
		System.out.println(SingleTon.getInstance().hashCode());
	}
}

