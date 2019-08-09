package skc.board.controller;

import java.util.List; 
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.board.service.FreeBoardService;
import skc.common.common.CommandMap;
import skc.common.util.FileUtils;

@Controller
public class FreeBoardController { 
	
	@Resource(name="boardFreeService")
	private FreeBoardService boardService; 
	
	@Resource(name="fileUtils") 
	private FileUtils fileUtils;

	@RequestMapping(value="/freeboard/boardFreeList" ) 
	public ModelAndView boardList(Map<String,Object> commandMap) 
			throws Exception{ ModelAndView mv = new ModelAndView("/freeboard/boardFreeList"); 
			
			List<Map<String,Object>> list = boardService.selectBoardList(commandMap);
			
			mv.addObject("list", list); return mv;
	} 
	@RequestMapping(value="/freeboard/openFreeBoardWrite") 
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("/freeboard/boardFreeWrite");
		return mv;
	}
	@RequestMapping(value="/freeboard/insertFreeBoard",method = RequestMethod.POST)
	public ModelAndView insertBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
		System.out.println(commandMap.getMap());
		ModelAndView mv = new ModelAndView("redirect:/freeboard/boardFreeList");
		boardService.insertBoard(commandMap.getMap(), request);
		
		return mv;
	}
	@RequestMapping(value="/freeboard/openFreeBoardDetail")
	public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/freeboard/boardFreeDetail");
		System.out.println(commandMap.getMap());
		Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		
		return mv;
	}
	@RequestMapping(value="/freeboard/boardFreeUpdate")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/freeboard/boardFreeUpdate");
		System.out.println(commandMap.getMap());
		Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map",map.get("map"));
		mv.addObject("list", map.get("list"));
		return mv;
		}
	@RequestMapping(value="/freeboard/updateFreeBoard") 
	public ModelAndView updateBoard(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("redirect:/freeboard/openFreeBoardDetail");

		System.out.println(commandMap.getMap());
		boardService.updateBoard(commandMap.getMap()); 
		mv.addObject("FREE_NUM", commandMap.get("FREE_NUM")); 
		return mv;
		}
	@RequestMapping(value="/freeboard/deleteFreeBoard")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/freeboard/boardFreeList");
		System.out.println(commandMap.getMap());
		boardService.deleteBoard(commandMap.getMap());
		return mv;
	}

}



