package skc.common.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/main")
public class MemberController {
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String home(Locale locale, Model model)
	{
		return "/main/join";
	}
}