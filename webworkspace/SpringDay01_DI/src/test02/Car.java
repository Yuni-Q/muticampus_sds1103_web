package test02;

public class Car {
	private Tire tire;
	
	public Car(Tire tire){
		// Car ��ü ���� ������ �����ϴ� ��ü�� �ܺηκ��� ���Թ���.
		this.tire = tire;
	}
	
	public void showCarInfo(){
		System.out.println("���� ���� Ÿ�̾�:" + tire.getModel());
	}
}
