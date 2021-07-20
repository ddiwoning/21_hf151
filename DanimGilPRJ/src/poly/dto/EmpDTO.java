package poly.dto;
/*
 * @author  최별규
 * @version 1.0
 * */
public class EmpDTO {
	private String empno;
	private String ename;
	private String rank;
	private String phone;
	private String email;
	private String adress;
	private String att_time; // 출근 시간 => 차후 배치 돌려서 5분전에 카메라 동작하게 하기 위한 컬럼
	private String off_time; // 퇴근 시간 => 차후 배치 돌려서 5분전에 카메라 동작하게 하기 위한 컬럼
	
	
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getAtt_time() {
		return att_time;
	}
	public void setAtt_time(String att_time) {
		this.att_time = att_time;
	}
	public String getOff_time() {
		return off_time;
	}
	public void setOff_time(String off_time) {
		this.off_time = off_time;
	}
	
	
	
	
}
