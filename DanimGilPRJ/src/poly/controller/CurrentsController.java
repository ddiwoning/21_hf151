package poly.controller;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/*
 * 가게현황 출근. 퇴근 카메라 동작 및 일일 임금 계산을 위한 컨트롤러
 * */
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.SalDTO;
import poly.service.ICurrentsService;
import poly.util.DateUtill;

@Controller
public class CurrentsController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="CurrentsService")
	ICurrentsService currentsService;
	
	//#################################################################################################
	// 카메라 작동을 위한 페이지
	/*
	 * ####으로 주석 범위 되어있는 녀석은 카메라로 출근 , 퇴근 테스트 완료 되면 삭제 후 스케줄러로 자동으로 돌릴 예정
	 * */
	@RequestMapping(value="main/CameraPage")
	public String cameraPage()throws Exception{
		log.info(this.getClass() + "cameraPage start!!");
		log.info(this.getClass() + "cameraPage end!!");
		return "/currents/camera";
	}
	// 출근을 위한 컨트롤러
	@RequestMapping(value="current/attCameraOn")
	public String attCameraOn()throws Exception{
		log.info(this.getClass() + "attCameraOn start!!");
		
		String url = "http://127.0.0.1:5001"; // 플라크스 설치 된 디바이스 ip 주소 적기
		String requestRoute = "/imgCheckDevice?&"; // 플라스크 라우트
		String val = "empno="; // 넘길 데이터
		
		String address = url + requestRoute + val; // 완성된 주소
		log.info("address: " + address);
		
		int res = currentsService.attCameraOn(address);
		log.info("Controller res : " + res);
		
		log.info(this.getClass() + "attCameraOn end!!");
		return "/currents/camera";
	}
	// 퇴근을 위한 컨트롤러
	@RequestMapping(value="current/offCameraOn")
	public String offCameraOn()throws Exception{
		
		log.info(this.getClass() + "offCameraOn start!!");
		String url = "http://127.0.0.1:5001"; // 플라크스 설치 된 디바이스 ip 주소 적기
		String requestRoute = "/imgCheckDevice?&"; // 플라스크 라우트
		String val = "empno="; // 넘길 데이터
		
		String address = url + requestRoute + val; // 완성된 주소
		log.info("address: " + address);
		
		int res = currentsService.offCameraOn(address);
		
		log.info(this.getClass() + "offCameraOn end!!");
		return "/currents/camera";
	}
	
	//################################################################################################
	
	
	// 가게 직원 현황 보여주는 페이지
	@RequestMapping(value = "main/currentsit")
	public String currentsit(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "user/userLogin start!!");
		List<SalDTO> rList = new ArrayList<SalDTO>();
		SalDTO date = new SalDTO();
		date.setReg_dt(DateUtill.getDateTime("yyyy-MM-dd"));
		rList = currentsService.getCurrentEmpInfo(date);
		for(SalDTO e : rList) {
			log.info("-----------------------");
			log.info(e.getEmpno());
			log.info(e.getEname());
			log.info(e.getRank());
			log.info(e.getSalary());
			log.info(e.getAtt_time());
			log.info(e.getOff_time());
			log.info(e.getDaily_sal());
			log.info(e.getAtt_time());
			log.info(e.getOff_time());
			log.info("-----------------------");
		}
		model.addAttribute("rList", rList);
		log.info(this.getClass() + "user/userLogin end!!");
		return "/currents/current";
	}
	
	
}
