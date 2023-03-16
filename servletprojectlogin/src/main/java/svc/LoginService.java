package svc;

import java.sql.Connection;

import static db.JdbcUtil.*;
import java.sql.*;
import dao.LoginDAO;
import vo.Member;


public class LoginService {
	
	public Member getLoginMember(String id, String passwd) {//"admin" "1234"
		LoginDAO loginDAO = LoginDAO.getInstance();
		Connection con = getConnection(); //db.JdbcUtil.*에서 getConnection호출
		loginDAO.setConnection(con);
		Member loginMember = loginDAO.selectLoginMember(id, passwd);
		close(con);
		return loginMember;
		
		
	}
}
