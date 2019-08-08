package skc.cs.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.common.common.CommandMap;
import skc.cs.service.CSService;

@Controller
@RequestMapping(value = "/cscs")
public class CscsController {
	
	@Resource(name="csService")
	private CSService csService;
	
	@RequestMapping(value = "/insertq", method = {RequestMethod.POST, RequestMethod.GET})
	public String insertQ(CommandMap commandMap) throws Exception
	{
		System.out.println("======2========= : " + commandMap.getMap());
		csService.insertQ(commandMap.getMap()); 
		
		return "/cs/csQnaResult";
	}
	
	
	@RequestMapping(value = "/inserta", method = {RequestMethod.POST, RequestMethod.GET})
	public String insertA(CommandMap commandMap) throws Exception
	{
		System.out.println("======2========= : " + commandMap.getMap());
		csService.insertA(commandMap.getMap()); 
		
		return "/cs/csQnaResult";
	}
	
	//확인
	@RequestMapping(value="/qnaList", method = {RequestMethod.POST, RequestMethod.GET} ) 
	public ModelAndView qnaList(CommandMap commandMap, HttpSession session) throws Exception
	{
		ModelAndView mv = new ModelAndView();
		commandMap.put("Nick", session.getAttribute("userNick"));
		System.out.println("=== qnaList 1st === : " + commandMap.getMap());
		List<Map<String, Object>> list = csService.selectQNAList(commandMap.getMap());
		
		mv.setViewName("/mypage/qnaList");
		mv.addObject("list", list);
				
		return mv;
		
		
		
		
		
	}

	@RequestMapping(value="/deleteQna")
	public ModelAndView deleteQna(CommandMap commandMap) throws Exception
	{
		ModelAndView mv = new ModelAndView("redirect:/mypage/qnaList");
		System.out.println("--------delete------"+commandMap.getMap());
		csService.deleteQna(commandMap.getMap());
		
		return mv;
	}

	
}