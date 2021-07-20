package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.EmpDTO;
import poly.service.IEmpService;
import poly.util.CmmUtil;

/*
 * 직원상세정보 및 임금 결정을 위한 페이지
 * */
@Controller
public class DetailController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "EmpService")
	IEmpService empService; // 유저 서비스 리소스 연결
	
	// 직원 상세 정보 보여주는 페이지 
	// 호출과 동시에 직원정보 가야좌야 함
	@RequestMapping(value = "main/detail")
	public String detail(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "user/userLogin start!!");
		List<EmpDTO> rList = new ArrayList<EmpDTO>(); // 테이블 데이터 받아와야 하니깐 리스트 선언 하는 거
		rList = empService.getEmpListInfo(); // 직원 정보 셀렉트 하기
		for(EmpDTO e : rList) {
			log.info("-----------------------------");
			log.info("empno : " + e.getEmpno());
			log.info("ename : " + e.getEname());
			log.info("rank : " + e.getRank());
			log.info("phone : " + e.getPhone());
			log.info("email : " + e.getEmail());
			log.info("adress : " + e.getAdress());
			log.info("att_time : " + e.getAtt_time());
			log.info("off_time : " + e.getOff_time());
			log.info("-----------------------------");
		}
		model.addAttribute("empList", rList);
		log.info(this.getClass() + "user/userLogin end!!");
		return "/main/detail";
	}
	// 새직원 등록 페이지 
	@RequestMapping(value = "detail/addEmpInfo")
	public String addEmpInfo(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "addEmpInfo start!!");
		log.info(this.getClass() + "addEmpInfo end!!");
		return "/detail/addEmp";
	}
	
	// 중복 empno 확인을 위한 아작스
	@RequestMapping(value = "detail/empCheck")
	@ResponseBody
	public int empCheck(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "empCheck start!!");
		String empno = CmmUtil.nvl((String)request.getParameter("empno"));
		log.info("empno : " + empno);
		int res = empService.getCheckEmpno(empno);
		log.info("res : " + res);
		log.info(this.getClass() + "empCheck end!!");
		return res;
	}
	
	// 직원 정보 등록 
	@RequestMapping(value = "detail/addEmpProc")
	public String addEmpProc(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "addEmpProc start!!");
		String empno = CmmUtil.nvl((String)request.getParameter("empno"));
		log.info("empno: " + empno);
		String ename = CmmUtil.nvl((String)request.getParameter("ename"));
		log.info("ename: " + ename);
		String rank = (CmmUtil.nvl((String)request.getParameter("rank")).equals("0")) ? "매니저" : "알바";
		log.info("rank: " + rank);
		String phone = CmmUtil.nvl((String)request.getParameter("phone"));
		log.info("phone: " + phone);
		String email = CmmUtil.nvl((String)request.getParameter("email"));
		log.info("email: " + email);
		String adress = CmmUtil.nvl((String)request.getParameter("adress"));
		log.info("address: " + adress);
		String att_time = CmmUtil.nvl((String)request.getParameter("att_time"));
		log.info("att_time: " + att_time);
		String off_time = CmmUtil.nvl((String)request.getParameter("off_time"));
		log.info("off_time: " + off_time);
		
		EmpDTO pDTO = new EmpDTO();
		pDTO.setEmpno(empno);
		pDTO.setEname(ename);
		pDTO.setRank(rank);
		pDTO.setPhone(phone);
		pDTO.setEmail(email);
		pDTO.setAdress(adress);
		pDTO.setAtt_time(att_time);
		pDTO.setOff_time(off_time);
		
		int res = empService.addEmpInfo(pDTO);
		pDTO = null;
		log.info("res : " + res);
		String msg = "";
		String url ="";
		if(res == 1) {
			msg = "등록 성공";
			url = "/main/detail.do";
		} else {
			msg = "등록 실패";
			url = "/detail/addEmpInfo.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		log.info(this.getClass() + "addEmpProc end!!");
		return "/user/redirect";
	}
	
	// 얼굴 학습 플라스크 접속을 위한 컨트롤러 아작스
	@RequestMapping(value = "detail/faceHakSepToFlask")
	@ResponseBody
	public int faceHakSepToFlask(HttpServletRequest request, ModelMap model) throws Exception{
		log.info(this.getClass().getName() + "face Storage Start");
		String empno = CmmUtil.nvl(request.getParameter("empno"));
		log.info("empno : " + empno);
		
		String url = "http://127.0.0.1:5001"; // 플라크스 설치 된 디바이스 ip 주소 적기
		String requestRoute = "/imgStorageDevice?"; // 플라스크 라우트
		String val = "empno="; // 넘길 데이터
		
		String address = url + requestRoute + val + empno; // 완성된 주소
		log.info("address: " + address);
		
		int res = empService.faceStorageToFlask(address);
		log.info("Controller res : " + res);
		log.info(this.getClass().getName() + "face Storage Start");
		return res;
	}
	
	
}
