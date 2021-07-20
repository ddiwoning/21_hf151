package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.EmpDTO;

@Mapper("EmpMapper")
public interface IEmpMapper {

	List<EmpDTO> getEmpListInfo() throws Exception; // 디테일 페이지에 직원정보 가져오는 놈

	EmpDTO getCheckEmpno(String empno) throws Exception; // 직원번호 중복 찾기

	int addEmpInfo(EmpDTO pDTO) throws Exception; // 직원정보 추가
	
}
