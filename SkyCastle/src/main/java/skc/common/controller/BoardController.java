package skc.common.controller;

import java.util.List; 
import java.util.Map; 
import javax.annotation.Resource;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView; 
import skc.common.service.BoardService;

@Controller
public class BoardController { 
	@Resource(name="boardService")
	private BoardService boardService; 
	
	@RequestMapping(value="/board/boardList" ,method = RequestMethod.GET) 
	public ModelAndView BoardList(Map<String,Object> commandMap) 
			throws Exception{ ModelAndView mv = new ModelAndView("/board/boardList"); 
			List<Map<String,Object>> list = boardService.selectBoardList(commandMap);
			mv.addObject("list", list); return mv;
			} 
	}
