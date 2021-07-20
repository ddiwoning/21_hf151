package poly.service;

import java.util.List;

import poly.dto.EmpDTO;

public interface IEmpService {

	List<EmpDTO> getEmpListInfo() throws Exception; // 디테일 페이지에 직원 정보 가져오는 기능

	int getCheckEmpno(String empno) throws Exception; // 직원정보 중복 확인

	int addEmpInfo(EmpDTO pDTO) throws Exception; // 직원 정보 추가

	int faceStorageToFlask(String address) throws Exception; // 얼굴 학습을 위한 메서드


}
