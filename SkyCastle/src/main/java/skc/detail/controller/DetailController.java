package skc.detail.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import skc.common.common.CommandMap;
import skc.detail.service.DetailService;

@Controller
@RequestMapping(value="/detail")
public class DetailController
{
		@Resource(name="DetailService")
		private DetailService detailService;
		
		
	/*
	 * @RequestMapping(value = "/getDetailList", method = {RequestMethod.POST,
	 * RequestMethod.GET}) public ModelAndView getDetailList(CommandMap commandMap)
	 * throws Exception { ModelAndView mv = new ModelAndView("/getDetailList");
	 * List<Map<String,Object>> list = detailService.getDetailList(commandMap);
	 * 
	 * mv.addObject("list", list); return mv; }
	 */
		

		@RequestMapping(value = "/selectDetail", method = {RequestMethod.POST, RequestMethod.GET}) 
		public ModelAndView selectDetail(CommandMap commandMap) throws Exception
		{ 
			ModelAndView mv = new ModelAndView();
			List<Map<String, Object>> list = detailService.selectDetail(commandMap.getMap()); 
			mv.setViewName("/map/detail");
			mv.addObject("list", list);
			return mv; 
		}
		
		@RequestMapping(value = "/insertDetail", method = {RequestMethod.POST, RequestMethod.GET}) 
		public String insertDetail(CommandMap commandMap) throws Exception 
		{
			System.out.println("======2========= : " + commandMap.getMap());
			detailService.insertDetail(commandMap.getMap()); 
			
			return "redirect:/main/index";
		}
}