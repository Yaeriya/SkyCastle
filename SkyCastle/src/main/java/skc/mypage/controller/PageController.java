package skc.mypage.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/main")
public class PageController {
	
	@RequestMapping(value = "/mypage_N", method = {RequestMethod.POST, RequestMethod.GET})
	public String mypage_N(Locale locale, Model model)
	{ 	
		return "/main/mypage_N";
	}
	@RequestMapping(value = "/mypage_P", method = {RequestMethod.POST, RequestMethod.GET})
	public String mypage_P(Locale locale, Model model)
	{ 	
		return "/main/mypage_P";
	}
	
	/* ---------- 맵 컨트롤러인데 임시로 넣어놨음 ---------- */
	@RequestMapping(value = "/mapview", method = {RequestMethod.POST, RequestMethod.GET})
	public String mapView(Locale locale, Model model)
	{ 	
		return "/main/mapview";
	}
	
	/* ---------- 이벤트 컨트롤러인데 임시로 넣어놨음 ---------- */
	@RequestMapping(value = "/event", method = {RequestMethod.POST, RequestMethod.GET})
	public String event(Locale locale, Model model)
	{ 	
		return "/main/event";
	}
	
}