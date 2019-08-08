package skc.board.controller;

import java.util.Iterator;
import java.util.List; 
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.board.service.AcademyBoardService;
import skc.common.common.CommandMap;
import skc.common.util.FileUtils;

@Controller
public class AcademyBoardController { 
	@Resource(name="boardAcademyService")
	private AcademyBoardService boardAcademyService; 
	
	@Resource(name="fileUtils") 
	private FileUtils fileUtils;

	@RequestMapping(value="/academyboard/boardAcademyList" ) 
	public ModelAndView boardList(Map<String,Object> commandMap) 
			throws Exception{ ModelAndView mv = new ModelAndView("/academyboard/boardAcademyList"); 
			
			List<Map<String,Object>> list = boardAcademyService.selectBoardList(commandMap);
			
			mv.addObject("list", list); return mv;
	} 
	@RequestMapping(value="/academyboard/openAcademyBoardWrite") 
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("/academyboard/boardAcademyWrite");
		return mv;
	}
	@RequestMapping(value="/academyboard/insertAcademyBoard",method = RequestMethod.POST)
	public ModelAndView insertBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/academyboard/boardAcademyList");
		boardAcademyService.insertBoard(commandMap.getMap(), request);
		System.out.println(commandMap.getMap());
		return mv;
	}
	@RequestMapping(value="/academyboard/openAcademyBoardDetail")
	public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/academyboard/boardAcademyDetail");
		System.out.println(commandMap.getMap());
		Map<String,Object> map = boardAcademyService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		return mv;
	}
	@RequestMapping(value="/academyboard/openAcademyBoardUpdate")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/academyboard/boardAcademyUpdate");
		System.out.println(commandMap.getMap());
		Map<String,Object> map = boardAcademyService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map",map.get("map"));
		mv.addObject("list", map.get("list"));
		return mv;
		}
	@RequestMapping(value="/academyboard/updateAcademyBoard") 
	public ModelAndView updateBoard(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("redirect:/academyboard/openAcademyBoardDetail");

		System.out.println(commandMap.getMap());
		boardAcademyService.updateBoard(commandMap.getMap()); 
		mv.addObject("ACA_NUM", commandMap.get("ACA_NUM")); 
		return mv;
		}
	@RequestMapping(value="/academyboard/deleteAcademyBoard")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/academyboard/boardAcademyList");
		System.out.println(commandMap.getMap());
		boardAcademyService.deleteBoard(commandMap.getMap());
		return mv;
	}

}



