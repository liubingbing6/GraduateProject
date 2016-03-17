package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.Doctor;

public class Manage {
	//��ѯҽ����
	public ArrayList<Doctor> getAllDoctor(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Doctor> list = new ArrayList<Doctor>();//ҽ���б���
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
				list.add(doc);//��һ��ҽ����Ϣ���뼯��
			}
			return list;//����һ������
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}finally 
		{
			//�ͷ����ݼ�����
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
			//�ͷ�������
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
