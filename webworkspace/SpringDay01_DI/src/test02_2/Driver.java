package test02_2;

public class Driver {
	public static void main(String[] args) {
		Car myCar = new Car();
		KoreaTire koreaTire = new KoreaTire();
		
		myCar.setTire(koreaTire);
		
		///////////// Ÿ�̾� ��ü ��ü ����
		myCar.setTire(new ChinaTire());
	}
}
