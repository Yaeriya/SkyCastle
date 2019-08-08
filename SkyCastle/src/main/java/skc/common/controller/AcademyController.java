package skc.common.controller;

import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import skc.common.common.CommandMap;
import skc.detail.service.DetailService;

@Controller

public class AcademyController {
	
	@Resource(name="DetailService")
	private DetailService detailService;
	
	@RequestMapping(value = "/insertDetail", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "/mypage/addAcademy";
	}
	
	@RequestMapping(value = "/addAcademy", method = {RequestMethod.POST, RequestMethod.GET}) 
	public String insertDetail(CommandMap commandMap) throws Exception
	{ 
		detailService.insertDetail(commandMap.getMap()); 
		
		return "redirect:/main/index"; 
	} 
	


}
