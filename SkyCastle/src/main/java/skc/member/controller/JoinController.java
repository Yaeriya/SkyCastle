package skc.member.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.member.service.JoinService;

@Controller
@RequestMapping(value="/member")
public class JoinController 
{
	@Resource(name="joinService")
	private JoinService joinService;
	
	@RequestMapping(value = "/getMemberList", method = RequestMethod.GET) 
	public ModelAndView getMemberList(Map<String,Object> commandMap) throws Exception
	{ 
		ModelAndView mv = new ModelAndView("/getMemberList");
		List<Map<String,Object>> list = joinService.getMemberList(commandMap);
		
		mv.addObject("list", list);
		return mv; 
	} 
	
	@RequestMapping(value = "/insertMember", method = RequestMethod.POST) 
	public String insertMember(Map<String,Object> commandMap) throws Exception 
	{ 
		joinService.insertMember(commandMap); 
		
		//return "redirect:/page/getMemberList"; 
		return "/main/index";
	}
}