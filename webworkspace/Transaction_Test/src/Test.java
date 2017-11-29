import java.sql.*;
import java.util.Random;

// 1. 드라이버 로딩
// 2. 커넥션 생성
// 3. SQL 작성
// 4. Prepared&Statement 객체 생성
// 5. 쿼리실행(executeUpdate, executeQuery)
// 6. 결과값 핸들링
// 7. 사용 자원 close
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
			
			con.setAutoCommit(false); // 트랜잭션의 시작 
			
			result = stmt1.executeUpdate(sql1); // 쿼리1 실행
			System.out.println("쿼리1 실행결과:" + result);
			
			if(new Random().nextBoolean())
				throw new SQLException("트랜잭션 테스트용 SQL 예외 발생!!");
			
			result = stmt2.executeUpdate(sql2); // 쿼리2 실행
			System.out.println("쿼리2 실행결과:" + result);
			
			con.commit(); // 트랜잭션 완료
		} catch (ClassNotFoundException e) {
			// 드라이버 로딩 오류 catch
			e.printStackTrace();
		} catch (SQLException e) {
			// SQL 오류
			/////////////////////////////////////////////////////////
			try {
				con.rollback();// 예외 발생시 실행된 쿼리도 취소
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
