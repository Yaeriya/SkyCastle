package skc.mypage.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/mypage")
public class MyPageController {
	
	@RequestMapping(value = "/mypage_N", method = {RequestMethod.POST, RequestMethod.GET})
	public String mypage_N(Locale locale, Model model)
	{ 	
		return "/mypage/mypage_N";
	}
	
	@RequestMapping(value = "/mypage_P", method = {RequestMethod.POST, RequestMethod.GET})
	public String mypage_P(Locale locale, Model model)
	{ 	
		return "/mypage/mypage_P";
	}
	
	@RequestMapping(value = "/history", method = {RequestMethod.POST, RequestMethod.GET})
	public String history(Locale locale, Model model)
	{ 	
		return "/mypage/history";
	}
	
	@RequestMapping(value = "/couponList_N", method = {RequestMethod.POST, RequestMethod.GET})
	public String couponList_N(Locale locale, Model model)
	{ 	
		return "/mypage/couponList_N";
	}
	
	@RequestMapping(value = "/couponList_P", method = {RequestMethod.POST, RequestMethod.GET})
	public String couponList_P(Locale locale, Model model)
	{ 	
		return "/mypage/couponList_P";
	}
	
	@RequestMapping(value = "/wishList", method = {RequestMethod.POST, RequestMethod.GET})
	public String wishList(Locale locale, Model model)
	{ 	
		return "/mypage/wishList";
	}
	
	@RequestMapping(value = "/qnaList", method = {RequestMethod.POST, RequestMethod.GET})
	public String qnaList(Locale locale, Model model)
	{ 	
		return "/mypage/qnaList";
	}
	
	@RequestMapping(value = "/goodBye", method = {RequestMethod.POST, RequestMethod.GET})
	public String goodBye(Locale locale, Model model)
	{ 	
		return "/mypage/goodBye";
	}
	
	@RequestMapping(value = "/addAcademy", method = {RequestMethod.POST, RequestMethod.GET})
	public String addAcademy(Locale locale, Model model)
	{ 	
		return "/mypage/addAcademy";
	}
	
	@RequestMapping(value = "/infoAcademy", method = {RequestMethod.POST, RequestMethod.GET})
	public String infoAcademy(Locale locale, Model model)
	{ 	
		return "/mypage/infoAcademy";
	}
	
}