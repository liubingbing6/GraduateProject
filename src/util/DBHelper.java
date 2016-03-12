package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {
	private static final String DRIVER="com.mysql.jdbc.Driver";//数据库驱动	
	private static final String URL="jdbc:mysql://localhost:3306/petHospital?useUnicode=true&characterEncoding=UTF-8";
	private static final String USERNAME="root";
	private static final String PASSWORD="root";
	private static Connection conn = null;
	//静态代码块负责加载驱动
	static {
		try{
			Class.forName(DRIVER);
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	//单例模式 返回数据库连接对象
	public static Connection getConnection() throws Exception{
		if(conn == null){
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			return conn;
		}
		return conn;
	}
	
	/*public static void main(String[] args) {
		try {
			Connection conn = DBHelper.getConnection();
			if(conn !=null){
				System.out.println("数据库连接正常！");
			}else {
				System.out.println("数据库连接异常！");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
}
