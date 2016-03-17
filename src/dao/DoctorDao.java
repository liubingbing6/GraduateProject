package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import util.DBHelper;
import entity.Doctor;
import entity.Hospital;
import entity.PetOwner;


public class DoctorDao {
	//注册时添加到医生表的方法
	public boolean addDoctorInfo(Doctor doc) throws Exception {
		DBHelper db = new DBHelper();
		Connection conn = db.getConnection();
		String sql = "INSERT INTO tq_doctors (docName,docPass,docSex,docAge,docTel,docEmail,docQQ)VALUES(?,?,?,?,?,?,?) ";	
		try{
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1,doc.getName());
			stmt.setString(2,doc.getPass());
			stmt.setString(3,doc.getSex());
			stmt.setInt(4,(int)doc.getAge());
			stmt.setString(5,doc.getTel());
			stmt.setString(6, doc.getEmail());
			stmt.setString(7, doc.getQq());
			int j = stmt.executeUpdate();
			if(j==1){
				return true;
			}else{
				return false;
			}
		}catch(Exception ex){
			return false;
		}finally{
			conn.close();
		}
	}
	//添加到医院表
	public boolean addHospitalInfo(Hospital hos) throws Exception {
		DBHelper db = new DBHelper();
		Connection conn = db.getConnection();
		String sql = "INSERT INTO tq_hospital (hs_name,hs_password,hs_tel,hs_email)VALUES(?,?,?,?) ";
		try{
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, hos.getName());
			stmt.setString(2, hos.getPass());
			stmt.setString(3, hos.getTel());
			stmt.setString(4, hos.getEmail());
			int j = stmt.executeUpdate();
			if(j==1){
				return true;
			}else{
				return false;
			}
		}catch(Exception ex){
			return false;
		}finally{
			conn.close();
		}
	}
	//添加到宠物主人表
	public boolean addPetOwnerInfo(PetOwner po) throws Exception {
		DBHelper db = new DBHelper();
		Connection conn = db.getConnection();
		String sql = "INSERT INTO tq_pet_owner (po_name,po_password,po_sex,po_age,po_tel,po_qq,po_email)VALUES(?,?,?,?,?,?,?) ";
		
		try{
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, po.getName());
			stmt.setString(2, po.getPass());
			stmt.setString(3, po.getSex());
			stmt.setInt(4, (int)po.getAge());
			stmt.setString(5, po.getTel());
			stmt.setString(6, po.getQq());
			stmt.setString(7, po.getEmail());
			int j = stmt.executeUpdate();
			if(j==1){
				return true;
			}else{
				return false;
			}
		}catch(Exception ex){
			return false;
		}finally{
			conn.close();
		}
	}

}
