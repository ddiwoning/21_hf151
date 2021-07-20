package poly.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/*직원 관리 컨트롤러
 * */
@Controller
public class MangeController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	
	// 직원관리 보여주는 페이지
	@RequestMapping(value = "main/manage")
	public String manage(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass() + "user/userLogin start!!");
		
		
		
		
		log.info(this.getClass() + "user/userLogin end!!");
		return "/main/management";
	}
	
	

	
}
