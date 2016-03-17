package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.Doctor;

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
}
