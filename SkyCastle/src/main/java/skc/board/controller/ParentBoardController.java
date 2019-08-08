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

import skc.board.service.ParentBoardService;
import skc.common.common.CommandMap;
import skc.common.util.FileUtils;

@Controller
public class ParentBoardController { 
	@Resource(name="boardParentService")
	private ParentBoardService boardParentService; 
	
	@Resource(name="fileUtils") 
	private FileUtils fileUtils;

	@RequestMapping(value="/parentboard/boardParentList" ) 
	public ModelAndView boardList(Map<String,Object> commandMap) 
			throws Exception{ ModelAndView mv = new ModelAndView("/parentboard/boardParentList"); 
			
			List<Map<String,Object>> list = boardParentService.selectBoardList(commandMap);
			
			mv.addObject("list", list); return mv;
	} 
	@RequestMapping(value="/parentboard/openParentBoardWrite") 
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("/parentboard/boardParentWrite");
		return mv;
	}
	@RequestMapping(value="/parentboard/insertParentBoard", method = RequestMethod.POST)
	public ModelAndView insertBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/parentboard/boardParentList");
		System.out.println(commandMap.getMap());
		boardParentService.insertBoard(commandMap.getMap(), request);
		return mv;
	}
	@RequestMapping(value="/parentboard/openParentBoardDetail")
	public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/parentboard/boardParentDetail");
		System.out.println(commandMap.getMap());
		Map<String,Object> map = boardParentService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		return mv;
	}
	@RequestMapping(value="/parentboard/openParentBoardUpdate")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/parentboard/boardParentUpdate");
		System.out.println(commandMap.getMap());
		Map<String,Object> map = boardParentService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map",map.get("map"));
		mv.addObject("list", map.get("list"));
		return mv;
		}
	@RequestMapping(value="/parentboard/updateParentBoard") 
	public ModelAndView updateBoard(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("redirect:/parentboard/openParentBoardDetail");

		System.out.println(commandMap.getMap());
		boardParentService.updateBoard(commandMap.getMap()); 
		mv.addObject("PAR_NUM", commandMap.get("PAR_NUM")); 
		return mv;
		}
	@RequestMapping(value="/parentboard/deleteParentBoard")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/parentboard/boardParentList");
		System.out.println(commandMap.getMap());
		boardParentService.deleteBoard(commandMap.getMap());
		return mv;
	}

}



