package poly.dto;

public class TotalSalDTO {
	
	    private String month;
	    private String reg_dt;
	    private String empno;
        private String daily_sal;
        private String accumulate;
    	private String exists_yn; // 2021Y_SAL_TABLE 중복 확인
    	private String accumulateEmp_yn; // 2021Y_ACC... 에 empno 확인 후 작업을 위함
    	
		public String getMonth() {
			return month;
		}
		public void setMonth(String month) {
			this.month = month;
		}
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
		public String getDaily_sal() {
			return daily_sal;
		}
		public void setDaily_sal(String daily_sal) {
			this.daily_sal = daily_sal;
		}
		public String getAccumulate() {
			return accumulate;
		}
		public void setAccumulate(String accumulate) {
			this.accumulate = accumulate;
		}
		public String getExists_yn() {
			return exists_yn;
		}
		public void setExists_yn(String exists_yn) {
			this.exists_yn = exists_yn;
		}
		public String getAccumulateEmp_yn() {
			return accumulateEmp_yn;
		}
		public void setAccumulateEmp_yn(String accumulateEmp_yn) {
			this.accumulateEmp_yn = accumulateEmp_yn;
		}
    	  	
        
}
