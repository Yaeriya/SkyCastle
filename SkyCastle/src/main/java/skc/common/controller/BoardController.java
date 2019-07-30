package skc.common.controller;

import java.util.Iterator;
import java.util.List; 
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.common.common.CommandMap;
import skc.common.service.BoardService;

@Controller
public class BoardController { 
	@Resource(name="boardService")
	private BoardService boardService; 

	@RequestMapping(value="/board/boardList" ,method = RequestMethod.GET) 
	public ModelAndView boardList(Map<String,Object> commandMap) 
			throws Exception{ ModelAndView mv = new ModelAndView("/board/boardList"); 
			List<Map<String,Object>> list = boardService.selectBoardList(commandMap);
			mv.addObject("list", list); return mv;
	} 
	@RequestMapping(value="/board/openBoardWrite") 
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("/board/boardWrite");
		return mv;
	}
	@RequestMapping(value="/board/insertBoard",method = RequestMethod.POST)
	public ModelAndView insertBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/board/boardList");
		boardService.insertBoard(commandMap.getMap());
		System.out.println(commandMap.getMap());
		return mv;
	}

}



