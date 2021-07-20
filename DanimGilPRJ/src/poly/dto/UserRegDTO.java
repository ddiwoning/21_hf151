package poly.dto;

import org.apache.log4j.Logger;

public class UserRegDTO {
	
	 private Logger log = Logger.getLogger(this.getClass());
	
	private String name;
	private String id;
	private String pwd;
	private String gender;
	private String birth;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id= id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
		log.info("DTO 완료!ㅠ");
	}
	
	

}
