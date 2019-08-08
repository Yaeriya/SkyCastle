package skc.admin.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import skc.common.common.CommandMap;
import skc.member.service.JoinService;

@Controller
@RequestMapping(value = "/adm")
public class AdminController
{
	
	@Resource(name="joinService")
	private JoinService joinService;
	
	@RequestMapping(value = "/getMemberList", method = {RequestMethod.POST, RequestMethod.GET}) 
	public ModelAndView getMemberList(CommandMap commandMap) throws Exception
	{ 
		ModelAndView mv = new ModelAndView();
		List<Map<String,Object>> list_M = joinService.getMemberList(commandMap.getMap());
		List<Map<String,Object>> list_P = joinService.getPartnerList(commandMap.getMap());
		List<Map<String,Object>> list_Q = joinService.getPartnerQue(commandMap.getMap());
		List<Map<String,Object>> list_Bm = joinService.getMemberBlock(commandMap.getMap());
		List<Map<String,Object>> list_Bp = joinService.getPartnerBlock(commandMap.getMap());
		
		mv.setViewName("/adm/memberList");
		mv.addObject("list_M", list_M);
		mv.addObject("list_P", list_P);
		mv.addObject("list_Q", list_Q);
		mv.addObject("list_Bm", list_Bm);
		mv.addObject("list_Bp", list_Bp);
		
		return mv;
	}
	@RequestMapping(value = "/deleteMember", method = {RequestMethod.POST, RequestMethod.GET}) 
	public String deleteMember(CommandMap commandMap) throws Exception 
	{
		System.out.println("=====제명====== : " + commandMap.getMap());
		joinService.deleteMember(commandMap.getMap()); 
		
		return "redirect:/adm/getMemberList";
	}
	@RequestMapping(value = "/updateLevel", method = {RequestMethod.POST, RequestMethod.GET}) 
	public String partnerLimit(CommandMap commandMap) throws Exception 
	{
		System.out.println("=====제한====== : " + commandMap.getMap());
		joinService.updateLevel(commandMap.getMap()); 
		
		return "redirect:/adm/getMemberList";
	}
	/*@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String admMBList(Locale locale, Model model)
	{
		return "/adm/memberList";
	}*/
	
	@RequestMapping(value = "/insertMember", method = {RequestMethod.POST, RequestMethod.GET}) 
	public String insertMember(CommandMap commandMap) throws Exception 
	{
		System.out.println("======2========= : " + commandMap.getMap());
		joinService.insertMember(commandMap.getMap()); 
		
		//return "redirect:/page/getMemberList"; 
		return "redirect:/main/index";
	}
	@RequestMapping(value = "/memberLogin", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView memberLogin(CommandMap commandMap, HttpSession session) throws Exception
	{
		System.out.println("=========3====== : " + commandMap.getMap());
		boolean result = joinService.loginCheck(commandMap.getMap(), session);
		ModelAndView mv = new ModelAndView();
		if(result == true)	//로그인 성공
		{	//index.jsp으로 이동
			mv.setViewName("redirect:/main/index");
			mv.addObject("msg", "success");
		}
		else	//로그인 실패
		{	//login.jsp로 이동
			mv.setViewName("redirect:/main/login");
			mv.addObject("msg", "failure");
		}
		//List<Map<String, Object>> list = joinService.getMemberInfo(commandMap.getMap());
		//mv.addObject("list", list);
		return mv;
	}
}