package dao;

public class CodeConvert {
	public String toUTF_8(String str){
		if(str == null) str = "";
		try{
			str = new String(str.getBytes("UTF-8"));
		}catch(Exception ex){
			str = "";
			ex.printStackTrace();
		}
		return str;
	}
}
