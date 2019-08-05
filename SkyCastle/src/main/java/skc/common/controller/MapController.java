package skc.common.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/main")
public class MapController {
	
	/* ---------- 공통부분 ---------- */
	@RequestMapping(value = "/map", method = {RequestMethod.POST, RequestMethod.GET})
	public String home1(Locale locale, Model model)
	{
		return "/main/map";
	}
	
}