package skc.common.controller;

import java.util.Locale;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*@Controller*/
public class FavoriteController {
	
	@RequestMapping(value = "/page/index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}
	
}