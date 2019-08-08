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
		
		/*System.out.println("=== qnaList session inject === : " + commandMap.getMap());
		System.out.println("=== qnaList Qnum === : " + list_Qnum);
		
		int Qlength = list_Qnum.size();
		System.out.println("=== Qnum === : " + Qlength);
		for(int i = 0; i <= (Qlength - 1); i++)
		{
			List<Map<String,Object>> list_Q = csService.selectQList(list_Qnum);
		}*/
		
		/*
		mv.setViewName("/cs/qnaList");
		Map<String, Object> map = new HashMap<String, Object>();
		
		Map.Entry<String, Object> entry = null;
		String key = entry.getKey();
		Object value = entry.getValue();
		map.put(key, value);
		*/
		/*// 1-2. Map에 배열 넣기
		Map< String, String[] > arrMap = new HashMap<>();
		map.put("key01", valueArr[0]);
		map.put("key02", valueArr[1]);
		map.put("key03", valueArr[2]);
		
		// 2-1. Map에 List 넣기
		LinkedList<String> valueList = new LinkedList<String>();
		valueList.add("AAA");
		valueList.add("BBB");
		valueList.add("CCC");
		 
		// 2-2. Map에 List 넣기
		Map< String, LinkedList<String> > listMap = new HashMap<>();
		listMap.put("key04", valueList.get(0));
		listMap.put("key05", valueList.get(1));
		listMap.put("key06", valueList.get(2));*/
		
		/*int i = 0;
		for(Map<String, Object> map1 : list_Qnum)
		{
			String k = Integer.toString(i);
			i++;
			for(Map.Entry<String, Object> entry : map1.entrySet())
			{
				//String key = entry.getKey()+k;
				
				String key = k;
				Object value = entry.getValue();
				map1.put(key, value);
				System.out.println("=== map1 === : " + map1);
			}
			System.out.println("=== map12 === : " + map1);
			map = map1;
		}*/
		
		
		
	} 
	
}