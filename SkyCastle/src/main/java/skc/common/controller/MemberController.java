package skc.common.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/main")
public class MemberController {
	
	/* ---------- 공통부분 ---------- */
	@RequestMapping(value = "/login", method = {RequestMethod.POST, RequestMethod.GET})
	public String home1(Locale locale, Model model)
	{
		return "/main/login";
	}
	
	/* ---------- 일반회원 ---------- */
	@RequestMapping(value = "/join", method = {RequestMethod.POST, RequestMethod.GET})
	public String home2(Locale locale, Model model)
	{
		return "/main/join";
	}
	
	/* ---------- 파트너회원 ---------- */
	@RequestMapping(value = "/join_partner", method = {RequestMethod.POST, RequestMethod.GET})
	public String home3(Locale locale, Model model)
	{
		return "/main/join_partner";
	}
}