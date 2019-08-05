package skc.mypage.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/main")
public class PageController {
	
	@RequestMapping(value = "/myPage_N", method = {RequestMethod.POST, RequestMethod.GET})
	public String mypage_N(Locale locale, Model model)
	{ 	
		return "/main/myPage_N";
	}
	@RequestMapping(value = "/myPage_P", method = {RequestMethod.POST, RequestMethod.GET})
	public String mypage_P(Locale locale, Model model)
	{ 	
		return "/main/myPage_P";
	}
	
	/* ---------- 맵 컨트롤러인데 임시로 넣어놨음 ---------- */
	@RequestMapping(value = "/mapview", method = {RequestMethod.POST, RequestMethod.GET})
	public String mapView(Locale locale, Model model)
	{ 	
		return "/main/mapview";
	}
	
}