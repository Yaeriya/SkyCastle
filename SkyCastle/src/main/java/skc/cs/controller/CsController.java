package skc.cs.controller;


import java.util.List;
import java.util.Locale;
import java.util.Map;


import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.common.common.CommandMap;
import skc.cs.service.NoticeService;

@Controller
public class CsController {

	@Resource(name="noticeService")
	private NoticeService noticeService;

	@RequestMapping(value="/cs/cs_main")
	public ModelAndView csNoitceList(Map<String,Object> commandMap)
			throws Exception{ 
		ModelAndView mv = new ModelAndView("/cs/cs_main");
		List<Map<String,Object>> list = noticeService.selectcsList(commandMap);
		mv.addObject("list", list); 
		return mv;
	}
	
	@RequestMapping(value = "/cs/cs_faq", method = {RequestMethod.POST, RequestMethod.GET})
	public String cs_faq(Locale locale, Model model)
	{ 	
		return "/cs/cs_faq";
	}
	
	@RequestMapping(value = "/cs/cs_qna", method = {RequestMethod.POST, RequestMethod.GET})
	public String cs_qna(Locale locale, Model model)
	{ 	
		return "/cs/cs_qna";
	}
	
	@RequestMapping(value="/cs/csNoticeWrite")
	public ModelAndView csNoticeWrite(Map<String,Object> commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/cs/csNoticeWrite");
		return mv;
	}

	@RequestMapping(value="/cs/insertNotice",method = RequestMethod.POST)
	public ModelAndView insertNotice(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/cs/cs_main");
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


	@RequestMapping(value="/cs/deleteNotice")
	public ModelAndView deleteNotice(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/cs/cs_main");

		noticeService.deleteNotice(commandMap.getMap());

		return mv;
	}
	
	@RequestMapping(value="/cs/openupdateNotice") 
	public ModelAndView openupdateNotice(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("/cs/updateNotice"); 
		
		Map<String,Object> map = noticeService.selectcsNoticeDetail(commandMap.getMap()); 
		mv.addObject("map", map); return mv; } 


	@RequestMapping(value="/cs/updateNotice") 
	public ModelAndView updateNotice(CommandMap commandMap) throws Exception{ 
		ModelAndView mv = new ModelAndView("redirect:/cs/cs_main"); 
		noticeService.updateNotice(commandMap.getMap()); 
		mv.addObject("NOTICE_NUM", commandMap.get("NOTICE_NUM")); return mv; }




} 