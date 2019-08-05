package skc.member.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/main")
public class MemberController {
	
	/* ---------- 공통부분 ---------- */
	@RequestMapping(value = "/login", method = {RequestMethod.POST, RequestMethod.GET})
	public String login(Locale locale, Model model)
	{ 	// 로그인
		return "/main/login";
	}

	/* 로그아웃 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "/main/logout";
	}
	
	/* ---------- 일반회원 ---------- */
	@RequestMapping(value = "/join", method = {RequestMethod.POST, RequestMethod.GET})
	public String join_N(Locale locale, Model model)
	{	// 회원가입
		return "/main/join";
	}

	/* ---------- 파트너회원 ---------- */
	@RequestMapping(value = "/join_partner", method = {RequestMethod.POST, RequestMethod.GET})
	public String join_P(Locale locale, Model model)
	{	// 회원가입
		return "/main/join_partner";
	}
}