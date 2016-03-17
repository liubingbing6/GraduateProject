package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.Doctor;
import entity.Hospital;
import entity.Pet;
import entity.PetOwner;

public class Manage {
	//查询医生表
	public ArrayList<Doctor> getAllDoctor(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Doctor> list = new ArrayList<Doctor>();//医生列表集合
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from tq_doctors";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				Doctor doc = new Doctor();
				doc.setId(rs.getInt("id"));
				doc.setName(rs.getString("docName"));
				doc.setSex(rs.getString("docSex"));
				doc.setAge(rs.getInt("docAge"));
				doc.setPass(rs.getString("docPass"));
				doc.setTel(rs.getString("docTel"));
				doc.setQq(rs.getString("docQQ"));
				doc.setEmail(rs.getString("docEmail"));
				list.add(doc);//把一个医生信息加入集合
			}
			return list;//返回一个集合
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}finally 
		{
			//释放数据集对象
			if(rs!=null)
			{
				try
				{
					rs.close();
					rs = null;
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
			//释放语句对象
			if(stmt!=null)
			{
				try
				{
					stmt.close();
					stmt = null;
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
		}
	}
	//查询医院信息列表
	public ArrayList<Hospital> getAllHospital(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Hospital> list = new ArrayList<Hospital>();//医院列表集合
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from tq_hospital";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				Hospital hs = new Hospital();
				hs.setId(rs.getInt("id"));
				hs.setName(rs.getString("hs_name"));
				hs.setPass(rs.getString("hs_password"));
				hs.setTel(rs.getString("hs_tel"));
				hs.setEmail(rs.getString("hs_email"));
				list.add(hs);//把一个医院信息加入集合
			}
			return list;//返回一个集合
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}finally 
		{
			//释放数据集对象
			if(rs!=null)
			{
				try
				{
					rs.close();
					rs = null;
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
			//释放语句对象
			if(stmt!=null)
			{
				try
				{
					stmt.close();
					stmt = null;
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
		}
		
	}
	//查询宠物主人信息列表
	public ArrayList<PetOwner> getAllPetowner(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<PetOwner> list = new ArrayList<PetOwner>();//宠物主人信息列表集合
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from tq_pet_owner";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				PetOwner petO = new PetOwner();
				petO.setId(rs.getInt("id"));
				petO.setName(rs.getString("po_name"));
				petO.setPass(rs.getString("po_password"));
				petO.setSex(rs.getString("po_sex"));
				petO.setAge(rs.getInt("po_age"));
				petO.setTel(rs.getString("po_tel"));
				petO.setQq(rs.getString("po_qq"));
				petO.setEmail(rs.getString("po_email"));
				list.add(petO);//把一个宠物主人信息加入集合
			}
			return list;//返回一个集合
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}finally 
		{
			//释放数据集对象
			if(rs!=null)
			{
				try
				{
					rs.close();
					rs = null;
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
			//释放语句对象
			if(stmt!=null)
			{
				try
				{
					stmt.close();
					stmt = null;
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
		}
	}
	//查询宠物信息
	public ArrayList<Pet> getAllPetInfo(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Pet> list = new ArrayList<Pet>();//宠物信息列表集合
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from tq_pet";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				Pet pet = new Pet();
				pet.setId(rs.getInt("id"));
				pet.setPetName(rs.getString("pet_name"));
				pet.setPetSex(rs.getString("pet_sex"));
				pet.setPetAge(rs.getInt("pet_age"));
				pet.setPetSort(rs.getString("pet_sort"));
				pet.setPetIllHostory(rs.getString("pet_ill_history"));
				list.add(pet);//把一个宠物信息加入集合
			}
			return list;//返回一个集合
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}finally 
		{
			//释放数据集对象
			if(rs!=null)
			{
				try
				{
					rs.close();
					rs = null;
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
			//释放语句对象
			if(stmt!=null)
			{
				try
				{
					stmt.close();
					stmt = null;
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			}
		}
	}
	//根据id删除宠物信息
	public boolean deletePetInfo(String str){
		Connection conn = null;
		PreparedStatement stmt = null;
		try{
			conn = DBHelper.getConnection();
			String sql = "DELETE FROM tq_pet WHERE id='"+str+"'";
			stmt = conn.prepareStatement(sql);
			int i = stmt.executeUpdate();
			if(i==1){
				return true;
			}else{
				return false;
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally {
			//释放语句对象
			if(stmt!=null){
				try{
					stmt.close();
					stmt = null;
				}catch(Exception ex){
					ex.printStackTrace();
				}
			}
		}
	}
	//根据ID删除医院信息
	public boolean delHospitalInfo(String str){
		Connection conn = null;
		PreparedStatement stmt = null;
		try{
			conn = DBHelper.getConnection();
			String sql = "DELETE FROM tq_hospital WHERE id='"+str+"'";
			stmt = conn.prepareStatement(sql);
			int i = stmt.executeUpdate();
			if(i==1){
				return true;
			}else{
				return false;
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally {
			//释放语句对象
			if(stmt!=null){
				try{
					stmt.close();
					stmt = null;
				}catch(Exception ex){
					ex.printStackTrace();
				}
			}
		}
	}
	//根据ID删除医生信息
	public boolean delDoctorInfo(String str){
		Connection conn = null;
		PreparedStatement stmt = null;
		try{
			conn = DBHelper.getConnection();
			String sql = "DELETE FROM tq_doctors WHERE id='"+str+"'";
			stmt = conn.prepareStatement(sql);
			int i = stmt.executeUpdate();
			if(i==1){
				return true;
			}else{
				return false;
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally {
			//释放语句对象
			if(stmt!=null){
				try{
					stmt.close();
					stmt = null;
				}catch(Exception ex){
					ex.printStackTrace();
				}
			}
		}
	}
	//根据ID删除宠物主人信息
	public boolean delPetOwnerInfo(String str){
		Connection conn = null;
		PreparedStatement stmt = null;
		try{
			conn = DBHelper.getConnection();
			String sql = "DELETE FROM tq_pet_owner WHERE id='"+str+"'";
			stmt = conn.prepareStatement(sql);
			int i = stmt.executeUpdate();
			if(i==1){
				return true;
			}else{
				return false;
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally {
			//释放语句对象
			if(stmt!=null){
				try{
					stmt.close();
					stmt = null;
				}catch(Exception ex){
					ex.printStackTrace();
				}
			}
		}
	}

}
