package poly.persistance.mapper;

import config.Mapper;
import poly.dto.TotalSalDTO;

@Mapper("TotalSalMapper")
public interface ITotalSalMapper {

	int insert_2021Y_SAL_TABLE(TotalSalDTO pDTO) throws Exception; // 2021Y_SAL_TABLE 에 인서트 하는 로직

	int insert_2021Y_ACC_SAL(TotalSalDTO pDTO) throws Exception; // 2021_ACC_SAL 데이터 삽입

	TotalSalDTO getAccumulate(TotalSalDTO pDTO) throws Exception; // 2021Y_ACC 테이블에서 해당 사원번호의 데이터 가져오기\

	int updateAccumulate(TotalSalDTO updateDTO) throws Exception; // 2021Y_ACC 누적합 업데이트

	TotalSalDTO getExists(TotalSalDTO pDTO) throws Exception; // 2021Y_SAL_TABLE 중복확인

	TotalSalDTO getAccumulate_yn(TotalSalDTO pDTO) throws Exception; // 2021Y_ACC_TABLE 중복확인

}
