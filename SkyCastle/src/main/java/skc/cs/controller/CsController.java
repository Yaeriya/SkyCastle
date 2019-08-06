package skc.cs.controller;


import java.util.List; 
import java.util.Map;


import javax.annotation.Resource;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import skc.common.common.CommandMap;
import skc.cs.service.NoticeService;

@Controller
public class CsController {
	
	@Resource(name="noticeService")
	private NoticeService noticeService;
	
	@RequestMapping(value="/cs/cs")
	public ModelAndView csNoitceList(Map<String,Object> commandMap)
	     throws Exception{ 
		 ModelAndView mv = new ModelAndView("/cs/cs");
	     List<Map<String,Object>> list = noticeService.selectcsList(commandMap);
	     mv.addObject("list", list); 
	     return mv;
	     }
	
	@RequestMapping(value="/cs/csNoticeWrite")
	public ModelAndView csNoticeWrite(Map<String,Object> commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/cs/csNoticeWrite");
		return mv;
	}
	
	@RequestMapping(value="/cs/insertNotice",method = RequestMethod.POST)
	public ModelAndView insertNotice(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/cs/cs");
		noticeService.insertNotice(commandMap.getMap());
		System.out.println(commandMap.getMap());
		return mv;
	}
	
	@RequestMapping(value="/cs/csNoticeDetail")
	public ModelAndView csNoticeDetail(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/cs/csNoticeDetail");
		Map<String,Object> map = noticeService.selectcsNoticeDetail(commandMap.getMap());
		mv.addObject("map",map);
		return mv;
	}
	
	@RequestMapping(value="/cs/csNoticeUpdate")
	public ModelAndView csNoticeUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/cs/csNoticeUpdate");
		Map<String,Object> map = noticeService.selectcsNoticeDetail(commandMap.getMap());
		mv.addObject("map", map);
		return mv;
	}
	
	@RequestMapping(value="/cs/noticeUpdate")
	public ModelAndView noticeUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/cs/cs");
		noticeService.updateNotice(commandMap.getMap());
		mv.addObject("NOTICE_NUM", commandMap.get("NOTICE_num"));
		return mv;
	}
	
	@RequestMapping(value="/cs/deleteNotice")
	public ModelAndView deleteNotice(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/cs/cs");
		
		noticeService.deleteNotice(commandMap.getMap());
				
		return mv;
	}
			
	
	
} 