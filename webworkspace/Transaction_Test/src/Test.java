import java.sql.*;
import java.util.Random;

// 1. ����̹� �ε�
// 2. Ŀ�ؼ� ����
// 3. SQL �ۼ�
// 4. Prepared&Statement ��ü ����
// 5. ��������(executeUpdate, executeQuery)
// 6. ����� �ڵ鸵
// 7. ��� �ڿ� close
////////////////////////////////////////////////////////////////
public class Test {
	public static void main(String[] args) {
		Connection con = null;
		Statement stmt1 = null;
		Statement stmt2 = null;
		int result = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection
					("jdbc:mysql://127.0.0.1:3306/java", "root", "sds1103");
			
			String sql1 = "insert into books(title,publisher,price,year)"+
						"values('aaa','aaa',1111,'1111')";
			String sql2 = "insert into books(title,publisher,price,year)"+
						"values('bbb','bbb',2222,'2222')";
			
			stmt1 = con.createStatement();
			stmt2 = con.createStatement();
			
			con.setAutoCommit(false); // Ʈ������� ���� 
			
			result = stmt1.executeUpdate(sql1); // ����1 ����
			System.out.println("����1 ������:" + result);
			
			if(new Random().nextBoolean())
				throw new SQLException("Ʈ����� �׽�Ʈ�� SQL ���� �߻�!!");
			
			result = stmt2.executeUpdate(sql2); // ����2 ����
			System.out.println("����2 ������:" + result);
			
			con.commit(); // Ʈ����� �Ϸ�
		} catch (ClassNotFoundException e) {
			// ����̹� �ε� ���� catch
			e.printStackTrace();
		} catch (SQLException e) {
			// SQL ����
			/////////////////////////////////////////////////////////
			try {
				con.rollback();// ���� �߻��� ����� ������ ���
			} catch (SQLException e1) {
				e1.printStackTrace();
			} 
			//////////////////////////////////////////////////////////
			e.printStackTrace();
		} finally {
			if(stmt2 != null){
				try {
					stmt2.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt1 != null){
				try {
					stmt1.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(con != null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
}
