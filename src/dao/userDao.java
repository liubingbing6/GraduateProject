package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DBHelper;
import entity.User;

public class userDao {
	public boolean login(User user){
		String ident = user.getKind();
		DBHelper db = new DBHelper();
		String sql = "";
		if(ident.equals("hospital")){
			sql = "SELECT * FROM tq_hospital WHERE hs_name=? AND hs_password=?";
		}else if(ident.equals("doctor")){
			sql = "SELECT * FROM tq_doctors WHERE docName=? AND docPass=?";
		}else if(ident.equals("petOwner")){
			sql = "SELECT * FROM tq_pet_owner WHERE po_name=? AND po_password=?";
		}else if(ident.equals("admin")){
			sql = "SELECT * FROM tq_admin WHERE ad_name=? AND ad_password=?";
		}
		
		String username = user.getUserName();
		String password = user.getPassword();
		try{
			Connection conn = db.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		}catch(Exception ex){
			return false;
		}
	}
}
