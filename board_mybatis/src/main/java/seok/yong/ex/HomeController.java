package seok.yong.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import seok.yong.ex.dao.IDao;
import seok.yong.ex.dto.LoginDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("ID", null);
		return "redirect:loginForm";
	}
	@RequestMapping("/join")
	public String join(HttpServletRequest request) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.joinDao(request.getParameter("id"),request.getParameter("pwd"),request.getParameter("name"));
		return "redirect:loginForm";
	}
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "joinForm";
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpSession session,Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpwd");
		System.out.println(dao.loginch(mid,mpw));

		if(dao.loginch(mid,mpw) != null) {
//			model.addAttribute("mid",dao.loginch(mid,mpw));
			session.setAttribute("ID",	mid);
		}
		
		return "loginForm";
	}
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("bId"));
		return "redirect:list";
	}
	@RequestMapping("/write")
	public String write(HttpServletRequest request) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.writeDao(request.getParameter("name"), request.getParameter("title"), request.getParameter("content"));
		return "redirect:list";
	}
	@RequestMapping("/writeForm")
	public String writeForm() {
		return "writeForm";
	}
	@RequestMapping("/list")
	public String list(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		
		model.addAttribute("list",dao.listDao());
		
		return "list";
	}
}
