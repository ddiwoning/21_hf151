package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.MailDTO;
import poly.dto.UserDTO;
import poly.dto.UserRegDTO;
import poly.service.IKakaoService;
import poly.service.IMailService;
import poly.service.IUserService;
import poly.util.CmmUtil;
import poly.util.EncryptUtil;
import poly.util.RamdomMail;

/*
 * 예외처리를 컨트롤러로 모아서 처리하는 방식을 많이 사용한다고 한다.
 * 각 메서드 단위에서 try catch를 하는 방법이 가장 쉽고 일반적인 방법이나, 가독성이 떨어진다.
 * 컨트롤러 단에서 @ExceptionHandler 로 처리하는 방법도 있다.=> 앱 규모가 큰 곳에서는 사용하지 않는다고 함
 * 아래는 예외처리 예시를 보여 준 것으로 개인 개발할 때는 내가 예외를 잡지 않으니, thorws Exception하나로 
 * */
@Controller
public class UserController {

	private Logger log = Logger.getLogger(this.getClass().getName());

	@Resource(name = "UserService")
	private IUserService userService;

	@Resource(name = "kakaoSerivce")
	private IKakaoService kakaoService;
	
	@Resource(name ="MailService")
	private IMailService mailService;

	// 도메인 입력하였을 때 기본으로 보여줄 페이지
	@RequestMapping(value = "index")
	public String Index() throws Exception {
		log.info(this.getClass().getName() + "index Start!!");

		log.info(this.getClass().getName() + "index Start!!");

		return "/index";
	}

	// 로그인 화면 보여주는 페이지
	@RequestMapping(value = "user/userLogin")
	public String userLogin(HttpServletRequest request, ModelMap model) throws Exception {

		log.info(this.getClass() + "user/userLogin start!!");

		log.info(this.getClass() + "user/userLogin end!!");

		return "/user/userLogin";
	}

	// 로그인 처리를 하는 처리 기능
	@RequestMapping(value = "user/userLoginProc.do")
	public String userLoginProc(HttpServletRequest request, ModelMap model, HttpSession session) throws Exception {

		log.info(this.getClass() + "user/userLoginProc start!!");

		String id = CmmUtil.nvl(request.getParameter("id"));
		log.info("id: " + id); // 데이터는 잘 받아온다.

		String pwd = CmmUtil.nvl(request.getParameter("pwd"));
		log.info("pwd: " + pwd); // 뭐가 문제냐

		UserDTO uDTO;
		uDTO = new UserDTO(); // DTO 메모리 올리고

		uDTO.setId(id);
		uDTO.setPwd(pwd);

		uDTO = userService.getLoginInfo(uDTO); //

		log.info("uDTO null?" + (uDTO == null)); // null 발생? 20년 2월 27일 -> commit 안되서 에러 생김

		String msg = "";
		String url = "";

		if (uDTO == null) {
			msg = "로그인 실패";
			url = "/";
		} else {
			log.info("uDTO ID : " + uDTO.getId());
			log.info("uDTO PWD : " + uDTO.getPwd());
			log.info("uDTO NAME : " + uDTO.getName());

			msg = "로그인 성공";
			url = "/main/index.do";

			session.setAttribute("id", uDTO.getId());
			session.setAttribute("name", uDTO.getName());
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		log.info(this.getClass() + "user/userLoginProc end!!");

		return "/user/redirect";
	}

	// 로그아웃 메서드
	@SuppressWarnings("unused")
	@RequestMapping(value = "user/logOut.do")
	public String logOut(HttpSession session, Model model) throws Exception {
		log.info(this.getClass() + "user/logOut start!!");

		String msg = "";
		String url = "";

		String accessToken = (String) session.getAttribute("kakaoToken");

		// int res = kakaoService.kakaoLogOut(accessToken);
		log.info("accessToken : " + accessToken);

		// if (res == 1)
		if (true) {
			// log.info("res : " + res);

			msg = "로그아웃 성공";
			url = "/user/userLogin.do";
			session.invalidate(); // 세션 정보 초기화

			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
		} else {
			msg = "로그아웃 실패";
			url = "/";
		}
		log.info(this.getClass() + "user/loginOut end!!");

		return "/user/redirect";
	}

	// 회원가입 화면 보여주는 페이지
	@RequestMapping(value = "user/regUserInfo")
	public String regUserInfo(HttpServletRequest request, ModelMap model) throws Exception {

		log.info(this.getClass() + "user/regUserInfo start!!");

		log.info(this.getClass() + "user/regUserInfo end!!");

		return "/user/regUserInfo";
	}

	// 회원가입 처리를 하는 처리 기능
	@SuppressWarnings({ "unused", "null" })
	@RequestMapping(value = "user/regUserInfoProc")
	public String regUserInfoProc(HttpServletRequest request, ModelMap model, HttpSession session) throws Exception {

		log.info(this.getClass() + "user/userLoginProc start!!");
		
		String name = CmmUtil.nvl(request.getParameter("name"));
		log.info("name: " + name); // 뭐가 문제냐

		String id = CmmUtil.nvl(request.getParameter("id"));
		log.info("email: " + id); // 데이터는 잘 받아온다.

		String pwd = CmmUtil.nvl(request.getParameter("password"));
		log.info("pwd: " + pwd); // 뭐가 문제냐

		String gender = CmmUtil.nvl(request.getParameter("sex"));
		log.info("gender: " + gender); 
		
		String year = CmmUtil.nvl(request.getParameter("year"));
		log.info("year: " + year); 
		
		String month = CmmUtil.nvl(request.getParameter("month"));
		log.info("month: " + month); 
		
		String day = CmmUtil.nvl(request.getParameter("day"));
		log.info("day: " + day); 

		String birth = year + month+ day; 


		UserRegDTO tDTO;
		tDTO = new UserRegDTO(); // DTO 메모리 올리고

		tDTO.setName(name); 
		tDTO.setId(id);
		tDTO.setPwd(pwd);
		tDTO.setGender(gender);
		tDTO.setBirth(birth); 

		int res = userService.UserRegInfo(tDTO);
		log.info("resdto");
		log.info("test입니다"); 

		log.info("res 1?" + (res == 1)); // null 발생? 20년 2월 27일 -> commit 안되서 에러 생김

		String msg = "";
		String url = "";

		if (res == 0) {
			msg = "회원가입 실패하였습니다.";
			url = "/";
		} else {
			msg = "회원가입이 성공하였습니다.";
			url = "/main/index.do";
			/*
			 * session.setAttribute("id", pDTO.getId()); session.setAttribute("name",
			 * pDTO.getName());
			 */
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		log.info(this.getClass() + "user/userLoginProc end!!");

		return "/user/redirect";
	}

	// 아이디 비밀번호 찾기 보여주는 페이지
	@RequestMapping(value = "user/sodoi")
	public String sodoi(HttpServletRequest request, ModelMap model) throws Exception {

		log.info(this.getClass() + "user/userLogin start!!");

		log.info(this.getClass() + "user/userLogin end!!");

		return "/user/sodoi";
	}

	// 로그인 시 유저 정보 확인을 위한 아작스 처리 로직
	@RequestMapping(value = "user/loginEmailCheck")
	@ResponseBody
	public int userLoginEmailCheck(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass().getName() + "user/loginEmailCheck Start!!");
		String email = CmmUtil.nvl(request.getParameter("email"));
		log.info("email : " + email);

		int res = userService.getEmailCheck(email);

		log.info(this.getClass().getName() + "user/loginEmailCheck End!!");
		return res;
	}
	
	
	// 이메일 입력 후 인증 메일 발송하는 컨트롤러
	@RequestMapping(value = "user/sendMail.do")
	public String SendMailForFindUser(HttpServletRequest request, ModelMap model, HttpSession session)
			throws Exception {

		log.info(this.getClass() + "SendMail Page start!!");

		session.invalidate(); // 세션 정보 초기화

		String email = CmmUtil.nvl(request.getParameter("id"));
		log.info("email : " + email);
		UserDTO userpDTO = new UserDTO();
		String msg = "";
		String url = "";

		userpDTO.setId(email);

		UserDTO rDTO = new UserDTO();
		rDTO = userService.getFindUserInfo(userpDTO);
		String emailForDB = rDTO.getId();

		log.info("email : " + email);
		log.info("rDTO.getEmail : " + emailForDB);

		if (emailForDB == null) {
			log.info("null : " + emailForDB);
			msg = "가입된 회원이 없습니다.";
			url = "/user/userLogin.do";
		} else {

			String title = "소공서에서 인증메일을 보내드립니다.";
			MailDTO pDTO = new MailDTO();

			pDTO.setTitle(title);
			pDTO.setToMail(email);

			String contents = RamdomMail.SendRamdomMail();
			pDTO.setContents(contents);

			session = request.getSession();
			session.setAttribute("random", contents);
			session.setAttribute("sessionEmail", emailForDB);

			log.info("random str : " + contents);

			mailService.doSendMail(pDTO);

			msg = "메일 발송을 완료 하였습니다.";
			url = "/user/changePwd.do";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		log.info(this.getClass() + "SendMail Page end!!");

		return "/user/redirect";
	}
	// 인증메일 비교를 위한 페이지 띄우는 로직
	@RequestMapping(value = "user/changePwd")
	public String changePwdPage() throws Exception{
		log.info(this.getClass().getName() + "changePwdPage Start!!");
		log.info(this.getClass().getName() + "changePwdPage End!!");
		return "/user/changePwd";
	}
	// 인증번호 성공 후 비번 변경 페이지 띄우는 컨트롤러
	@RequestMapping(value = "user/changePwdProcPage")
	public String changePwdProcPage() throws Exception{
		log.info(this.getClass().getName() + "changePwdProcPage Start!!");
		log.info(this.getClass().getName() + "changePwdProcPage End!!");
		return "/user/changePwdProc";
	}
	
	// 비밀번호 변경처리 로직
	@RequestMapping(value = "user/changePwdProc")
	public String changePwdProc(HttpServletRequest request, ModelMap model, HttpSession session) throws Exception{
		log.info(this.getClass() + "changePwdProd Page end!!");
		
		String email = CmmUtil.nvl(session.getAttribute("sessionEmail").toString());
		
		session.invalidate(); // 세션 정보 초기화
		String pwd = CmmUtil.nvl(EncryptUtil.encHashSHA256(request.getParameter("password")));
		log.info("email : " + email);
		log.info("pwd : " + pwd);
		
		UserDTO pDTO = new UserDTO();
		pDTO.setId(email);
		pDTO.setPwd(pwd);
		
		int success = userService.updateUserPwdInfo(pDTO);
		
		String msg ="";
		String url = "";
		
		if(success == 1) {
			msg = "정보 변경이 완료되었습니다. 로그인 해주세요.";
			url = "/user/userLogin.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		log.info(this.getClass() + "changePwdProd Page end!!");

		return "user/redirect";
	}
	
	// 회원가입 시 유저 이메일 중복 확인을 위한 아작스 처리 로직
		@RequestMapping(value = "user/regEmailCheck")
		@ResponseBody
		public int userRegEmailCheck(HttpServletRequest request, ModelMap model) throws Exception {
			log.info(this.getClass().getName() + "user/regEmailCheck Start!!");
			String id = CmmUtil.nvl(request.getParameter("email"));
			log.info("email : " + id);

			int res = userService.getregEmailCheck(id);

			log.info(this.getClass().getName() + "user/regEmailCheck End!!");
			return res;
		}
		
	// 마이페이지 보여주는 페이지
		@RequestMapping(value = "main/UserEdit")
		public String UserEdit(HttpServletRequest request, ModelMap model) throws Exception {

			log.info(this.getClass() + "user/userLogin start!!");

			log.info(this.getClass() + "user/userLogin end!!");

			return "/main/UserEdit";
		}

	


}