package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.EmpDTO;
import poly.persistance.mapper.IEmpMapper;
import poly.service.IEmpService;
import poly.util.UrlUtil;

@Service("EmpService")
public class EmpService implements IEmpService{
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="EmpMapper")
	private IEmpMapper empMapper;
	// 디테일 페이지에 직원정보 가져오는 기능
	// 로그 찍으면서 공부 하기!!!!! 
	// 난 시간이 없어서 안찍었는데 반드시 찍어보기
	@Override
	public List<EmpDTO> getEmpListInfo() throws Exception {
		return empMapper.getEmpListInfo();
	}
	// 직원 정보 중복 확인 로직 아작스
	@Override
	public int getCheckEmpno(String empno) throws Exception {
		EmpDTO pDTO = new EmpDTO();
		pDTO.setEmpno(empno);
		EmpDTO rDTO = new EmpDTO();
		rDTO = empMapper.getCheckEmpno(empno);
		int res = (rDTO == null) ? 0 : 1;
		pDTO = null;
		rDTO = null;
		return res;
	}
	// 직원 정보 추가
	@Override
	public int addEmpInfo(EmpDTO pDTO) throws Exception {
		return empMapper.addEmpInfo(pDTO);
	}
	// 비즈니스로직 플라스크로 데이터를 보내 학습 후 완료 신호 받기
	@Override
	public int faceStorageToFlask(String address) throws Exception {
		log.info("address : " + address);
		UrlUtil url = new UrlUtil();
		String res = url.urlReadforString(address);
		int resNum = 0;
		if(res != null) {
			resNum = 1;
		} else {
			resNum = 0;
		}
		log.info("address Work End!!!");
		return resNum;
	}

	
}
