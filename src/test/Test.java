package test;

import dao.DoctorDao;
import dao.userDao;
import entity.Doctor;
import entity.Hospital;
import entity.PetOwner;
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
		/*	doc.setId(2);
			doc.setName("隸條條");
			doc.setSex("鹹");
			doc.setAge(26);
			doc.setPass("1234564");
			doc.setTel("13223433322");
			doc.setQq("948837588");
			doc.setEmail("3333");
			//boolean a = docdao.addDoctorInfo(doc);
			boolean a = docdao.updateDoctor(doc);
			System.out.println(a);*/
		Hospital hs = new Hospital();
		hs.setId(2);
		hs.setName("隸條條");
		hs.setPass("111");
		hs.setTel("2324");
		hs.setEmail("998877");
		//boolean b = docdao.addHospitalInfo(hs);
		boolean x = docdao.updateHospital(hs);
		
		System.out.println(x);
	/*	PetOwner po = new PetOwner();
		po.setName("腦杻");
		po.setSex("鹹");
		po.setAge(26);
		po.setPass("1234564");
		po.setTel("13223433322");
		po.setQq("948837588");
		po.setEmail("3333");
		boolean c = docdao.addPetOwnerInfo(po);
		System.out.println(c);*/
	
//		User use = new User();
//		use.setPassword("133");
//		use.setUserName("liubingbing");
//		userDao ud = new userDao();
//		System.out.println(ud.login(use));
	}

}
