package skc.board.controller;

import java.util.List; 
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.board.service.StudentBoardService;
import skc.common.common.CommandMap;
import skc.common.util.FileUtils;

@Controller
public class StudentBoardController { 

	@Resource(name="boardStudentService")
	private StudentBoardService boardStudentService; 

	@Resource(name="fileUtils") 
	private FileUtils fileUtils;

	@RequestMapping(value="/studentboard/boardStudentList") 
	public ModelAndView boardList(Map<String,Object> commandMap) 
			throws Exception{ ModelAndView mv = new ModelAndView("/studentboard/boardStudentList"); 

			List<Map<String,Object>> list = boardStudentService.selectBoardList(commandMap);

			mv.addObject("list", list); return mv;
	} 

	@RequestMapping(value="/studentboard/openStudentBoardWrite") 
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception { 
		ModelAndView mv = new ModelAndView("/studentboard/boardStudentWrite");
		return mv;
	}

	@RequestMapping(value="/studentboard/insertStudentBoard", method = RequestMethod.POST)
	public ModelAndView insertBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/studentboard/boardStudentList");
		System.out.println(commandMap.getMap());
		boardStudentService.insertBoard(commandMap.getMap(), request);
		return mv;
	}

	@RequestMapping(value="/studentboard/openStudentBoardDetail")
	public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/studentboard/boardStudentDetail");
		System.out.println(commandMap.getMap());
		Map<String,Object> map = boardStudentService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		return mv;
	}

	@RequestMapping(value="/studentboard/openStudentBoardUpdate")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/studentboard/boardStudentUpdate");
		System.out.println(commandMap.getMap());
		Map<String,Object> map = boardStudentService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map",map.get("map"));
		mv.addObject("list", map.get("list"));
		return mv;
	}

	@RequestMapping(value="/studentboard/updateStudentBoard") 
	public ModelAndView updateBoard(CommandMap commandMap) throws Exception { 
		ModelAndView mv = new ModelAndView("redirect:/studentboard/openStudentBoardDetail");

		System.out.println(commandMap.getMap());
		boardStudentService.updateBoard(commandMap.getMap()); 
		mv.addObject("STU_NUM", commandMap.get("STU_NUM")); 
		return mv;
	}

	@RequestMapping(value="/studentboard/deleteStudentBoard")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/studentboard/boardStudentList");
		System.out.println(commandMap.getMap());
		boardStudentService.deleteBoard(commandMap.getMap());
		return mv;
	}

}



