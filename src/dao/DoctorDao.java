package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
	//更新医院表
		public boolean updateHospital(Hospital hos) throws Exception {
			DBHelper db = new DBHelper();
			Connection conn = db.getConnection();
			String sql = "UPDATE tq_hospital SET hs_name='"+hos.getName()+"',hs_password='"+hos.getPass()+"',hs_tel='"+hos.getTel()+"',hs_email="+hos.getEmail()+" WHERE id="+hos.getId()+"";
			try{
				PreparedStatement stmt = conn.prepareStatement(sql);
				int j = stmt.executeUpdate();
				if(j==1){
					return true;
					//System.out.println("true");
				}else{
					return false;
					//System.out.println("false");
				}
			}catch(Exception ex){
				System.out.println("错误为:" + ex);
				return false;
			}finally{
				conn.close();
			}
		}
		
		//更新医生表
		public boolean updateDoctor(Doctor doc) throws Exception {
			DBHelper db = new DBHelper();
			Connection conn = db.getConnection();
			String sql = "UPDATE tq_doctors SET docName='"+doc.getName()+"',docPass="+doc.getPass()+",docSex='"+doc.getSex()+"',docAge="+doc.getAge()+",docTel="+doc.getTel()+",docEmail="+doc.getEmail()+",docQQ="+doc.getQq()+" WHERE id="+doc.getId()+"";
	
			try{
				PreparedStatement stmt = conn.prepareStatement(sql);
				int j = stmt.executeUpdate();
				if(j==1){
					return true;
					//System.out.println("true");
				}else{
					return false;
					//System.out.println("false");
				}
			}catch(Exception ex){
				System.out.println("错误为:" + ex);
				return false;
			}finally{
				conn.close();
			}
		}
		
		//更新宠物主人表
		public boolean updatePetOwner(PetOwner po) throws Exception {
			DBHelper db = new DBHelper();
			Connection conn = db.getConnection();
			String sql = "UPDATE tq_pet_owner SET po_name='"+po.getName()+"',po_password="+po.getPass()+",po_sex='"+po.getSex()+"',po_age="+po.getAge()+",po_tel="+po.getTel()+",po_qq="+po.getQq()+",po_email="+po.getEmail()+" WHERE id="+po.getId()+"";
	
			try{
				PreparedStatement stmt = conn.prepareStatement(sql);
				int j = stmt.executeUpdate();
				if(j==1){
					return true;
					//System.out.println("true");
				}else{
					return false;
					//System.out.println("false");
				}
			}catch(Exception ex){
				System.out.println("错误为:" + ex);
				return false;
			}finally{
				conn.close();
			}
		}
		//
}
