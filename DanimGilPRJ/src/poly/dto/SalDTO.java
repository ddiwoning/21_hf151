package poly.dto;
/*
 * @author  최별규
 * @version 1.1
 * 돈관련 데이터 처리를 위한 DTO 조인이 많이 발생함
 * */
public class SalDTO {
	private String reg_dt;
	private String empno;
	private String ename;
	private String rank;
	private String salary;
	private String att_time;
	private String off_time;
	private String daily_sal;
	private String work_time;
	private String exists_yn; // 중복 출석 확인
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
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
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
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
	public String getDaily_sal() {
		return daily_sal;
	}
	public void setDaily_sal(String daily_sal) {
		this.daily_sal = daily_sal;
	}
	public String getWork_time() {
		return work_time;
	}
	public void setWork_time(String work_time) {
		this.work_time = work_time;
	}
	public String getExists_yn() {
		return exists_yn;
	}
	public void setExists_yn(String exists_yn) {
		this.exists_yn = exists_yn;
	}
	
	

}
