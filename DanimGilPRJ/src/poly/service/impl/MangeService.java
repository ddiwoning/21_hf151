package poly.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.object.UpdatableSqlQuery;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import poly.dto.SalDTO;
import poly.dto.TotalSalDTO;
import poly.persistance.mapper.ISalMapper;
import poly.persistance.mapper.ITotalSalMapper;
import poly.service.IMangeService;
import poly.util.CmmUtil;
import poly.util.DateUtill;

@EnableScheduling // 스케줄러 사용
@Configuration // 스케줄러 사용
@Service("mangeService")
public class MangeService implements IMangeService {

	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "SalMapper")
	private ISalMapper salMapper;

	@Resource(name = "TotalSalMapper")
	private ITotalSalMapper totalsalMapper;

	/*
	 * 스케쥴링으로 일일 급여 및 누적 급여 테이블에 값 넣는 로직
	 */
	//                초 분 시 일 월 ? 년
	@Scheduled(cron = "0 43 18 * * ?")
	@Override
	public void totalSalBatch() throws Exception {
		log.info(this.getClass().getName() + "totalSal Bathch Start!!");

		SalDTO date = new SalDTO();
		date.setReg_dt(DateUtill.getDateTime("yyyy-MM-dd"));

		List<SalDTO> rList = new ArrayList<SalDTO>();
		rList = salMapper.getCurrentEmpInfo(date);

		TotalSalDTO pDTO = null;
		// 디비에서 데이터 가져온 다음에 2021_SAL_TABALE에 저장하고 2021Y_ACCUMULATE_SAL에 저장하는 반복문 성능저하...
		for (SalDTO e : rList) {
			
			pDTO = new TotalSalDTO();
			
			String month = DateUtill.getDateTime("MM") + "월";
			String reg_dt = DateUtill.getDateTime("yyyy-MM-dd");
			String empno = e.getEmpno();
			String daily_salINsertDB = e.getDaily_sal();
	
			log.info("empno : " + empno);
			log.info("reg_dt : " + reg_dt);
			log.info("daily_sal : " + daily_salINsertDB);

			pDTO.setEmpno(empno);
			pDTO.setReg_dt(reg_dt);
			
			TotalSalDTO resDTO = new TotalSalDTO();
			resDTO = totalsalMapper.getExists(pDTO);
			
			if (CmmUtil.nvl(resDTO.getExists_yn()).equals("N")) { // 중복 있는지 확인하고, 일일 급여에 중복에 없으면
				log.info("인서트 작업 진입");
				pDTO = null;
				pDTO = new TotalSalDTO();
				pDTO.setMonth(month);
				pDTO.setReg_dt(reg_dt);
				pDTO.setEmpno(empno);
				pDTO.setDaily_sal(daily_salINsertDB);

				int res = totalsalMapper.insert_2021Y_SAL_TABLE(pDTO);
				log.info("res : " + res);
				
				resDTO = null;
				resDTO = new TotalSalDTO();
				resDTO = totalsalMapper.getAccumulate_yn(pDTO);
				
				if(resDTO.getAccumulateEmp_yn().equals("N")) { // 만약 2021Y_acc 테이블에 사원정보가 없다면
					log.info("ACC_TABLE INSERT START!!");
					log.info("daily_sal : " + pDTO.getDaily_sal());
					
					int salTableRes = totalsalMapper.insert_2021Y_ACC_SAL(pDTO);
					log.info("salTableRes 1? : " + salTableRes);
				}else {
					resDTO = null;
					log.info("ACC_TABLE UPDATE START!!!");
					// ############################## 문제 발생 21.07.07
					TotalSalDTO rDTO = new TotalSalDTO();
					log.info("Update EMPNO : " + pDTO.getEmpno());
					rDTO = totalsalMapper.getAccumulate(pDTO);
					log.info("getACC_SAL : " + rDTO.getAccumulate());
					
					int temp = Integer.parseInt(rDTO.getAccumulate()); // 누적합을 구하기 위한 임시변수
					int daily_sal = Integer.parseInt(pDTO.getDaily_sal()); // 일당
					String accumulate = Integer.toString(temp + daily_sal);
					log.info("TOTAL ACCUMULATE : " + accumulate);
					
					pDTO = null;
					TotalSalDTO updateDTO = new TotalSalDTO();
					
					log.info("Update empno : " + empno);
					log.info("Update accumulate : " + accumulate);
					
					updateDTO.setEmpno(empno.toString());
					updateDTO.setAccumulate(accumulate.toString());
					log.info("upDateDTO : " + updateDTO);
					
					int result = totalsalMapper.updateAccumulate(updateDTO);
					log.info("result : " + result);
				}
			} 
		}
		log.info(this.getClass().getName() + "totalSal Bathch End!!");

	}

}
