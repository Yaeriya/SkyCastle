package skc.mypage.controller;

import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import skc.common.common.CommandMap;
import skc.member.service.JoinService;

@Controller
@RequestMapping(value="/mypage")
public class MyPageController {
	
	@Resource(name="joinService")
	private JoinService joinService;
	
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
	
	@RequestMapping(value = "/CUagain", method = {RequestMethod.POST, RequestMethod.GET}) 
	public ModelAndView deleteMember(HttpServletRequest request, CommandMap commandMap, HttpSession session) throws Exception 
	{
		System.out.println("======탈퇴맨====== : " + commandMap.getMap());
		String result = joinService.deleteCheck(commandMap.getMap(), session);
		ModelAndView mv = new ModelAndView();
		
		System.out.println("======탈퇴맨2====== : " + result);
		
		if(result.equals("1"))
		{
			System.out.println("=====제명====== : " + commandMap.getMap());
			joinService.deleteMember(commandMap.getMap()); 
			
			session.invalidate();
			mv.setViewName("redirect:/main/index");
		}
		else
		{
			mv.setViewName("redirect:/mypage/goodBye");
		}
		
		return mv;
	}
	
	/* 탈퇴시 비밀번호 확인 */
	@RequestMapping(value = "/checkDPwd", method = {RequestMethod.POST, RequestMethod.GET}) 
	@ResponseBody
	public String checkDPwd(CommandMap commandMap, HttpSession session) throws Exception 
	{
		System.out.println("======2========= : " + commandMap.getMap());
		String result = joinService.deleteCheck(commandMap.getMap(), session);

		System.out.println("=== mypagecontroller check ===" + result);
		
		
		return result;
	}
	
}