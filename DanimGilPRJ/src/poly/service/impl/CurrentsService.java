package poly.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import poly.dto.EmpDTO;
import poly.dto.SalDTO;
import poly.persistance.mapper.IEmpMapper;
import poly.persistance.mapper.ISalMapper;
import poly.service.ICurrentsService;
import poly.util.CmmUtil;
import poly.util.DateUtill;
import poly.util.JsonParsProc;
import poly.util.UrlUtil;

@EnableScheduling // 스케줄러 사용
@Configuration // 스케줄러 사용
@Service("CurrentsService")
public class CurrentsService implements ICurrentsService{
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="EmpMapper")
	private IEmpMapper empMapper;
	
	@Resource(name="SalMapper")
	private ISalMapper salMapper;
	
	/*
	 * 중요 알로리즘이라서 코드가 복잡함... 매시 10분 간격으로 작동 해놓았음
	 * DB에서 가져온 시작 시간과 종료 시간 +- 10분 이면 작동 시키도록 짠 알고리즘
	 * 여기서 스케쥴러 돌리면 댐
	 * */ 
	//                 초  분  시 일 월 ? 년
	// @Scheduled(cron = "0 0/10 0 * * ?")
	@Override
	public int empAttCameraOnBatch() throws Exception{
		log.info(this.getClass().getName() + "Camera batch Start!!");
		try {
			// DB에서 출근 시간 퇴근 시간 불러온 다음 10분전에 동작하도록 설계하기
		} catch (Exception e) {
			
		} finally {
			
		}
		log.info(this.getClass().getName() + "Camera batch End!!!!");
		return 0;
	}
	// 커런트 메인 직원 정보 가져오기 기능
	@Override
	public List<SalDTO> getCurrentEmpInfo(SalDTO date) throws Exception {
		return salMapper.getCurrentEmpInfo(date);
	}
	// 출근 시작을 위한 카메라 테스팅 여기 로직 복잡하니깐 천천히 해석하면서 수정 하길
	@Override
	public int attCameraOn(String address) throws Exception {
		log.info("출근 시작 서비스 진입");
		String res = ""; 
		int resNum = 0; // 성공하면 1로 바꿔줄 변수
		List<EmpDTO> rList = new ArrayList<EmpDTO>(); // 회원 정보 중에서 empno(pk) 만 가져오기 위한 리스트 선언
		rList = salMapper.getEmpno(); // 디비에서 empno만 가져옴
		String empno =""; // 플라스크로 보낼 데이터를 담을 문자열 변수
		
		try {
			log.info("작업 시작");
			for(EmpDTO e : rList) { // 반복문을 돌려 전체 empno를 하나의 문자열로 만듬
				empno += e.getEmpno() + ","; //  구분을 위해 콤마를 찍음
			}
			
			rList = null; // 데이터 사용 후 초기화
			log.info("empno : " + empno);
			
			UrlUtil url = new UrlUtil(); // 플라스크로 보낼 객체 생성
			res = url.urlReadforString(address + empno); // 플라스크로 보냄
			
			// #####################다음부터는 JSON으로 리턴 받은 후 작업임######################
			
			JsonParser parser = new JsonParser(); // 파싱할 객체
			JsonObject json = new JsonObject(); // 파싱 후 데이터 담을 객체
			
			json = (JsonObject) parser.parse(res);
			log.info("Json : " + res);
			
			// 중간에러로 프로그램 멈출 수 있으니 강제 작동 로직 추가
			if(json == null) {
				json = new JsonObject();
			} else{
				String flaskForInfo = json.get("empno").toString(); // json 키 값을 empno로 해놨으니 empno로 받음
				log.info("flask For data : " + flaskForInfo);
				
				String [] attTime = JsonParsProc.JsonParsSplit(flaskForInfo); // 문자열 1차 가공 
				String insertDbDate = DateUtill.getDateTime("yyyy-MM-dd"); // 데이터베이스에 저장할 날짜 형식 지정(REG_DT로 들어감)
				String [] tempAttTime = null;
				
				SalDTO pDTO = new SalDTO(); // 디비에 데이터 저장을 위한 선언
				
				// 반목문을 돌려서 attTime 배열 크기 만큼 앞에서부터 순차적으로 데이터 베이스에 넣을 작업
				// why?? 배열 한 공간에 empno:time 형식으로 있기 때문에 
				for(int i = 0; i < attTime.length; i++) {
					tempAttTime = attTime[i].split("\\:", 2);
					
					pDTO.setEmpno(tempAttTime[0]); // 첫 번째는 항상 empno
					pDTO.setAtt_time(tempAttTime[1]); // 두 번째는 항상 time
					pDTO.setReg_dt(insertDbDate); // 오늘 날짜를 넣어줌 
					
					SalDTO check = new SalDTO(); // 이미 출석을 했는지 확인을 위한 객체 생성
					check = salMapper.attExists(pDTO);// 충복 체크 시작
					
					if(CmmUtil.nvl(check.getExists_yn()).equals("Y")) {
						log.info("이미 출근 등록 완료");
					} else {
						log.info("출근 등록 시작");
						resNum = salMapper.insertAttTime(pDTO);
						pDTO = null;
					}
					
					// 프로르램 정지 방지용
					if(resNum == 0) {
						pDTO = new SalDTO();
					}else log.info("success!!!!!!");
				}
				
			}
			
		}catch (Exception e) {
			e.getStackTrace();
		}finally {
			log.info("1이면 성공 : " + resNum);
		}
		
		return resNum;
	}
	/*
	 * 퇴근 시간 입력을 위한 기능 
	 * 퇴근 시간 입력 간에 출근 시간 가져와 총 근무일시도 계산
	 * 출근도 퇴근과 마찬가지 이지만 살짝 다름
	 * 일단은 시간 단위로 계산 함 나중에 튜닝 할 것
	 * */ 
	@Override
	public int offCameraOn(String address) throws Exception {
		log.info(this.getClass().getName() + "OffCameraOn Start!!");
		String res = ""; 
		int resNum = 0; // 성공하면 1로 바꿔줄 변수
		List<EmpDTO> rList = new ArrayList<EmpDTO>(); // 회원 정보 중에서 empno(pk) 만 가져오기 위한 리스트 선언
		rList = salMapper.getEmpno(); // 디비에서 empno만 가져옴
		String empno =""; // 플라스크로 보낼 데이터를 담을 문자열 변수
		
		try {
			log.info("작업 시작");
			for(EmpDTO e : rList) { // 반복문을 돌려 전체 empno를 하나의 문자열로 만듬
				empno += e.getEmpno() + ","; //  구분을 위해 콤마를 찍음
			}
			
			rList = null; // 데이터 사용 후 초기화
			log.info("empno : " + empno);
			
			UrlUtil url = new UrlUtil(); // 플라스크로 보낼 객체 생성
			res = url.urlReadforString(address + empno); // 플라스크로 보냄
			
			// #####################다음부터는 JSON으로 리턴 받은 후 작업임######################
			
			JsonParser parser = new JsonParser(); // 파싱할 객체
			JsonObject json = new JsonObject(); // 파싱 후 데이터 담을 객체
			
			json = (JsonObject) parser.parse(res);
			log.info("Json : " + res);
			
			// 중간에러로 프로그램 멈출 수 있으니 강제 작동 로직 추가
			if(json == null) {
				json = new JsonObject();
				
			} else{
				String flaskForInfo = json.get("empno").toString(); // json 키 값을 empno로 해놨으니 empno로 받음
				log.info("flask For data : " + flaskForInfo);
				
				String [] offTime = JsonParsProc.JsonParsSplit(flaskForInfo); // 문자열 1차 가공 
				String insertDbDate = DateUtill.getDateTime("yyyy-MM-dd"); // 데이터베이스에 저장할 날짜 형식 지정(REG_DT로 들어감)
				String [] tempOffTime = null;
				
				SalDTO pDTO = new SalDTO(); // 디비에 데이터 저장을 위한 선언
				
				// 반목문을 돌려서 attTime 배열 크기 만큼 앞에서부터 순차적으로 데이터 베이스에 넣을 작업
				// why?? 배열 한 공간에 empno:time 형식으로 있기 때문에 
				for(int i = 0; i < offTime.length; i++) {
					tempOffTime = offTime[i].split("\\:", 2);
					
					pDTO.setEmpno(tempOffTime[0]); // 첫 번째는 항상 empno
					pDTO.setOff_time(tempOffTime[1]); // 두 번째는 항상 time
					pDTO.setReg_dt(insertDbDate); // 오늘 날짜를 넣어줌 
					
					SalDTO check = new SalDTO(); // 이미 출석을 했는지 확인을 위한 객체 생성
					check = salMapper.attExists(pDTO);// 충복 체크 시작
					
					if(CmmUtil.nvl(check.getExists_yn()).equals("Y")) {
						log.info("이미 출근 등록이 확인된 인원");
						
						List<SalDTO> pList = new ArrayList<SalDTO>(); // 출근 정보 확인하여 일한 시간 계산을 위한 자료구조 선언
						pList = salMapper.getAttTime(); // 각 사원 별 출근 시간 가져오는 기능 / 출근 정보가 없는 사원은 안가져옴
						
						log.info("반복문 진입 전");
						
						for(SalDTO e : pList) {
							log.info("첫번째 반복문 진입");
							String attTimeToDB = e.getAtt_time(); // 출근 시간을 가져오는데 앞에 년도가 붙으니깐 문자열 처리를 함 
							String [] temp = attTimeToDB.split("\\_"); // 3번째에 시간이 들어감
							String [] attTime = temp[3].split("\\:"); // 맨 처음이 시간 attTime[0]
							temp = null;
							//==============================================> 퇴근 시간에서 시간만 가져오기
							temp = tempOffTime[1].split("\\_");
							String [] offTimeHour = temp[3].split("\\:");
							temp = null;
							//===============================================> 작업 시간 구하기
							int intOffTimeHour = Integer.parseInt(offTimeHour[0]); // 형변환 시각화 하여 보기 편하게 
							int intAttTimeHour = Integer.parseInt(attTime[0]); // 형변환
							String workTime = Integer.toString(intOffTimeHour - intAttTimeHour);
							
							pDTO.setWork_time(workTime); // DTO에 담기
							resNum = salMapper.updateOffTime_workTime(pDTO); // 퇴근시간과 작업 시간 넣기
							log.info("반복문 작업 종료");
						}
					} 
					// 프로르램 정지 방지용
					if(resNum == 0) {
						pDTO = new SalDTO();
					}else log.info("success!!!!!!");
				}
				
			}
			
		}catch (Exception e) {
			e.getStackTrace();
		}finally {

			log.info("1이면 성공 : " + resNum);
			
		}
		
		
		log.info(this.getClass().getName() + "OffCameraOn End!!");
		return 0;
	}



}
