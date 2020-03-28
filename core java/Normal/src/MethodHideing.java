
class Parent{
	public static void method(String str){
		System.out.println("jai Krishna inside method form parent class");
	}
}
class Child extends Parent{
	public static void method(String str){
		System.out.println("jai Krishna inside method form child class");
	}
}
public class MethodHideing {
	public static void main(String args[]){
		Parent p = new Child();
		p.method("Jai Krishna");
	}
}
