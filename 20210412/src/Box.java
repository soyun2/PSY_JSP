class Apple{
	public String toString() {return "���";}
}
class Orange{
	public String toString() {return "������";}
}
public class Box <T>{
	T obj;
	
	public Box(T obj) {
		this.obj = obj;
	}
	
	public T getObj() {
		return obj;
	}
	
	public void setObj(T obj) {
		this.obj = obj;
	}
}
