package test01;

public class Car {
//	private KoreaTire tire;
	private ChinaTire tire;
	
	public Car(){
//		tire = new KoreaTire();
		tire = new ChinaTire();
	}
	
	public void showCarInfo(){
		System.out.println("���� ���� Ÿ�̾�:" + tire.getModel());
	}
}
