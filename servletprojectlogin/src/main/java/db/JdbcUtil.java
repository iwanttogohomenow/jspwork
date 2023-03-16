package db;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//데이터 베이스 작업을 할 때 반복적으로 수행해야 하는 작업을 정의하는 클래스
public class JdbcUtil {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource) envCtx.lookup("jdbc/jsptest");
			con = ds.getConnection();
			con.setAutoCommit(false);
			System.out.println("connect success");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	
	public static void close(Connection con) {
		
		try {if(con !=null)
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	public static void close(Statement stmt) {
		
		try {if(stmt !=null)
			stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
	
	public static void close(ResultSet rs) {
		
		try {if(rs !=null)
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
	
	public static void commit(Connection con) {
		
		try {
			con.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
	public static void rollback(Connection con) {
		try {
			con.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
