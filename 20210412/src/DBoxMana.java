
public class DBoxMana {
	public static void main(String[] args) {
		
		DBox<String,Integer> dbox1 = new DBox<String, Integer>("a",25);
		DBox<String,Integer> dbox2 = new DBox<String, Integer>("a",25);
		
		System.out.println(dbox1);
		System.out.println(dbox2);
		
		
		//�⺻�� ����
//		int a = 10;
//		int c = a;
//		//��ü�� ��������
//		Integer b = new Integer(10);
//		Integer d = b;
//		
//		a=20;
//		System.out.println("a = "+a);
//		System.out.println("c = "+c);
//		
//		b = 40;
//		System.out.println("b = "+b);
//		System.out.println("d = "+d);
	}
}
