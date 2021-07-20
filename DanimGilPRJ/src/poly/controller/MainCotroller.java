package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.service.IUserService;
/*여기에는 메인페이지에서 각 기능 페이지로 연결해주는 기능만 써놓길
 * */
@Controller
public class MainCotroller {

	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "UserService")
	private IUserService userService;


	// 로그인 성공 후 메인 페이지 보여주는 메서드
	@RequestMapping(value = "main/index")
	public String mainIndex(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "main/mainPage start!!");
		log.info(this.getClass() + "main/mainPage end!!");
		return "/main/index";
	}


	// 가게 매출 보여주는 페이지
	@RequestMapping(value = "main/salesStatus")
	public String salesStatus(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "user/userLogin start!!");
		log.info(this.getClass() + "user/userLogin end!!");
		return "/main/salesStatus";
	}

	// 캘린더 보여주는 페이지
	@RequestMapping(value = "main/calender")
	public String calender(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "user/userLogin start!!");
		log.info(this.getClass() + "user/userLogin end!!");
		return "/main/calender";
	}

}
