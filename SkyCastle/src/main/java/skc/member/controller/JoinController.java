package skc.member.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.common.common.CommandMap;
import skc.member.service.JoinService;

@Controller
@RequestMapping(value="/member")
public class JoinController 
{
	/* ---------- 공통부분 ---------- */	
	@Resource(name="joinService")
	private JoinService joinService;

	@RequestMapping(value = "/getMemberList", method = {RequestMethod.POST, RequestMethod.GET}) 
	public ModelAndView getMemberList(CommandMap commandMap) throws Exception
	{ 
		ModelAndView mv = new ModelAndView("/getMemberList");
		List<Map<String,Object>> list = joinService.getMemberList(commandMap.getMap());

		mv.addObject("list", list);
		return mv; 
	} 

	@RequestMapping(value = "/getMemberInfo", method = {RequestMethod.POST, RequestMethod.GET}) 
	public ModelAndView getMemberInfo(CommandMap commandMap) throws Exception
	{ 
		ModelAndView mv = new ModelAndView("/getMemberList");
		Map<String,Object> list = joinService.getMemberInfo(commandMap.getMap());

		mv.addObject("list", list);
		return mv; 
	} 


	/* ---------- 로그인 ---------- */
	@RequestMapping(value = "/memberLogin", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView memberLogin(HttpServletRequest request, CommandMap commandMap, HttpSession session) throws Exception
	{
		System.out.println("=========3====== : " + commandMap.getMap());
		boolean result = joinService.loginCheck(commandMap.getMap(), session);
		ModelAndView mv = new ModelAndView();

		if(result == true)	
		{	
			mv.setViewName("/main/index");
			session.setAttribute("loginInfo", result);
		}

		else	
		{	
			mv.setViewName("/main/login");
		}
		return mv;
	}

	/* ---------- 일반회원 ---------- */
	@RequestMapping(value = "/insertMember", method = {RequestMethod.POST, RequestMethod.GET}) 
	public String insertMember(CommandMap commandMap) throws Exception 
	{
		System.out.println("======2========= : " + commandMap.getMap());
		joinService.insertMember(commandMap.getMap()); 

		return "/main/index";
	}

	/* ---------- 파트너회원 ---------- */
	@RequestMapping(value = "/insertMember_P", method = {RequestMethod.POST, RequestMethod.GET}) 
	public String insertMember_P(CommandMap commandMap) throws Exception 
	{
		System.out.println("======2========= : " + commandMap.getMap());
		joinService.insertMember_P(commandMap.getMap()); 

		return "/main/index";
	}

}