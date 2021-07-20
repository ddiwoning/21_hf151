package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.EmpDTO;
import poly.dto.SalDTO;

@Mapper("SalMapper")
public interface ISalMapper {

	List<SalDTO> getCurrentEmpInfo(SalDTO date) throws Exception; // 커런트 창에 일일 급여 보여주는 창

	List<EmpDTO> getEmpno() throws Exception; // empno만 가져오기

	SalDTO attExists(SalDTO pDTO) throws Exception; // 출근 중복 체크용

	int insertAttTime(SalDTO pDTO) throws Exception; // 출근 시간 등록 인서트 작업

	List<SalDTO> getAttTime() throws Exception;// 출근한 직원 정보 가져오기  

	int updateOffTime_workTime(SalDTO pDTO) throws Exception; // 퇴근 정보 및 노동 시간 입력

	
}
