package poly.service;

import java.util.List;

import poly.dto.SalDTO;

public interface ICurrentsService {
	
	int empAttCameraOnBatch() throws Exception; // 배치로 카메라 자동 작동을 위한 로직

	List<SalDTO> getCurrentEmpInfo(SalDTO date) throws Exception; // 커런트 창에 일일 급여 보여주는 기능

	int attCameraOn(String address) throws Exception; // 출근 시작을 위한 카메라 작동

	int offCameraOn(String address) throws Exception; // 퇴근 시간 계산을 위한 카메라 작동
}
