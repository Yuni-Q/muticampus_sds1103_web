package test02_2;

// test02 �� �����ڸ� ���� ���� ��ü ���Թް�
// test02_2 �� ������(setter)�� ���� ���� ��ü ���Թ���.
public class Car {
	private Tire tire;
	
	public void setTire(Tire tire) {
		this.tire = tire;
	}
	
	public void showCarInfo(){
		System.out.println("���� ���� Ÿ�̾�:" + tire.getModel());
	}
}