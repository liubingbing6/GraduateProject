package test;

import dao.DoctorDao;
import dao.userDao;
import entity.Doctor;
import entity.User;

public class Test {

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		DoctorDao docdao = new DoctorDao();
		Doctor doc = new Doctor();
		doc.setName("ÕÔÈý");
		doc.setSex("ÄÐ");
		doc.setAge(26);
		doc.setPass("1234564");
		doc.setTel("13223433322");
		doc.setQQ("948837588");
		doc.setEmail("3333");
		
		boolean a = docdao.addDoctorInfo(doc);
		System.out.println(a);
//		User use = new User();
//		use.setPassword("133");
//		use.setUserName("liubingbing");
//		userDao ud = new userDao();
//		System.out.println(ud.login(use));
	}

}
