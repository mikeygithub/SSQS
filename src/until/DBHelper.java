package until;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class DBHelper {
	private static final String driver="com.mysql.jdbc.Driver";
	private static final String url="jdbc:mysql://localhost:3306/ssqs?useUnicode=true&characterEncoding=UTF-8";//要设置编码格式，不要再采坑了
	private static final String user="root";
	private static final String password="goyb578247520";
	static Connection conn=null;
	static Statement stmt=null;
	static ResultSet re=null;
	static{
		try{
			Class.forName(driver);//加载驱动类
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static Connection getConnection() {
		if(conn==null){
			try {
				conn=DriverManager.getConnection(url, user, password);
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				// TODO: handle finally clause
			}
			
		}
		return conn;
	}

public static void main(String[] args){
	
}
}
